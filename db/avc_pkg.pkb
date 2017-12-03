CREATE OR REPLACE PACKAGE BODY avc_pkg IS
  --
  /****************************************************************************
  * Purpose:  Create a new APEX session
  *           https://github.com/OraOpenSource/oos-utils/blob/master/source/packages/oos_util_apex.pkb
  * Author:   Daniel Hochleitner
  * Created:  29.11.2017
  * Changed:
  ****************************************************************************/
  PROCEDURE create_apex_session(p_app_id     IN apex_applications.application_id%TYPE,
                                p_user_name  IN apex_workspace_sessions.user_name%TYPE,
                                p_page_id    IN apex_application_pages.page_id%TYPE DEFAULT NULL,
                                p_session_id IN apex_workspace_sessions.apex_session_id%TYPE DEFAULT NULL) AS
    l_workspace_id apex_applications.workspace_id%TYPE;
    l_cgivar_name  sys.owa.vc_arr;
    l_cgivar_val   sys.owa.vc_arr;
  
    l_page_id   apex_application_pages.page_id%TYPE := p_page_id;
    l_home_link apex_applications.home_link%TYPE;
    l_url_arr   apex_application_global.vc_arr2;
  
    l_count PLS_INTEGER;
  BEGIN
  
    sys.htp.init;
  
    l_cgivar_name(1) := 'REQUEST_PROTOCOL';
    l_cgivar_val(1) := 'HTTP';
  
    sys.owa.init_cgi_env(num_params => 1,
                         param_name => l_cgivar_name,
                         param_val  => l_cgivar_val);
  
    SELECT workspace_id
      INTO l_workspace_id
      FROM apex_applications
     WHERE application_id = p_app_id;
  
    wwv_flow_api.set_security_group_id(l_workspace_id);
  
    IF l_page_id IS NULL THEN
      -- Try to get the page_id from home link
      SELECT aa.home_link
        INTO l_home_link
        FROM apex_applications aa
       WHERE 1 = 1
         AND aa.application_id = p_app_id;
    
      IF l_home_link IS NOT NULL THEN
        l_url_arr := apex_util.string_to_table(l_home_link,
                                               ':');
      
        IF l_url_arr.count >= 2 THEN
          l_page_id := l_url_arr(2);
        END IF;
      END IF;
    
      IF l_page_id IS NULL THEN
        l_page_id := 1;
      END IF;
    
    END IF; -- l_page_id is null
  
    -- #49 Ensure that page exists
    SELECT COUNT(1)
      INTO l_count
      FROM apex_application_pages aap
     WHERE 1 = 1
       AND aap.application_id = p_app_id
       AND aap.page_id = l_page_id
       AND l_page_id IS NOT NULL;
  
    apex_application.g_instance     := 1;
    apex_application.g_flow_id      := p_app_id;
    apex_application.g_flow_step_id := l_page_id;
  
    apex_custom_auth.post_login(p_uname      => p_user_name,
                                p_session_id => NULL, -- could use APEX_CUSTOM_AUTH.GET_NEXT_SESSION_ID
                                p_app_page   => apex_application.g_flow_id || ':' ||
                                                l_page_id);
  
    -- Rejoin session
    IF p_session_id IS NOT NULL THEN
      -- This will only set the session but doesn't register the items
      -- apex_custom_auth.set_session_id(p_session_id => p_session_id);
      -- #42 Seems a second login is required to fully join session
      apex_custom_auth.post_login(p_uname      => p_user_name,
                                  p_session_id => p_session_id);
    END IF;
  
  END create_apex_session;
  --
  /****************************************************************************
  * Purpose:  Execute APEX login and return authentication result
  * Author:   Daniel Hochleitner
  * Created:  29.11.2017
  * Changed:
  ****************************************************************************/
  FUNCTION apex_login(p_username IN VARCHAR2,
                      p_password IN VARCHAR2,
                      p_app_id   IN NUMBER) RETURN BOOLEAN AS
    --
    l_bool BOOLEAN := FALSE;
    --
  BEGIN
    -- create APEX session inside of PL/SQL
    avc_pkg.create_apex_session(p_app_id    => p_app_id,
                                p_user_name => p_username);
    -- do APEX login
    apex_authentication.login(p_username => p_username,
                              p_password => p_password);
    -- check if authenticated
    l_bool := apex_authentication.is_authenticated;
    --
    RETURN l_bool;
    --
  END apex_login;
  --
  /****************************************************************************
  * Purpose:  Generates a new token (random string)
  * Author:   Daniel Hochleitner
  * Created:  29.11.2017
  * Changed:
  ****************************************************************************/
  FUNCTION generate_token RETURN VARCHAR2 AS
    --
    l_token VARCHAR2(255);
    --
  BEGIN
    -- generate random string
    l_token := dbms_random.string('x',
                                  100);
    --
    RETURN l_token;
    --
  END generate_token;
  --
  /****************************************************************************
  * Purpose:  Saves User Access Token in USER_TOKEN table
  * Author:   Daniel Hochleitner
  * Created:  29.11.2017
  * Changed:
  ****************************************************************************/
  FUNCTION save_user_token(p_username IN VARCHAR2) RETURN VARCHAR2 AS
    --
    l_token VARCHAR2(255);
    --
    CURSOR l_cur_user_token IS
      SELECT user_token.user_name
        FROM user_token
       WHERE user_token.user_name = upper(p_username);
    l_rec_user_token l_cur_user_token%ROWTYPE;
    --
  BEGIN
    -- generate token
    l_token := avc_pkg.generate_token;
    --
    OPEN l_cur_user_token;
    FETCH l_cur_user_token
      INTO l_rec_user_token;
    -- update
    IF l_cur_user_token%FOUND THEN
      UPDATE user_token
         SET user_token.user_access_token = l_token,
             user_token.create_timestamp  = systimestamp
       WHERE user_token.user_name = upper(p_username);
      -- insert
    ELSE
      INSERT INTO user_token
        (user_token.user_name,
         user_token.user_access_token,
         user_token.create_timestamp)
      VALUES
        (upper(p_username),
         l_token,
         systimestamp);
    END IF;
    --
    CLOSE l_cur_user_token;
    --
    RETURN l_token;
    --
  END save_user_token;
  --
  /****************************************************************************
  * Purpose:  Authenticate User and create user access token
  * Author:   Daniel Hochleitner
  * Created:  29.11.2017
  * Changed:
  ****************************************************************************/
  PROCEDURE authenticate_user(p_username            IN VARCHAR2,
                              p_password            IN VARCHAR2,
                              p_app_id              IN VARCHAR2,
                              p_is_authenticated_yn OUT VARCHAR2,
                              p_user_access_token   OUT VARCHAR2) AS
    --
    l_auth_result  BOOLEAN := FALSE;
    l_access_token VARCHAR2(255);
    --
  BEGIN
    -- APEX login
    l_auth_result := avc_pkg.apex_login(p_username => p_username,
                                        p_password => p_password,
                                        p_app_id   => p_app_id);
    -- if successful create user access token
    IF l_auth_result THEN
      l_access_token := avc_pkg.save_user_token(p_username => p_username);
    END IF;
    -- out params
    p_is_authenticated_yn := CASE
                               WHEN l_auth_result THEN
                                'Y'
                               ELSE
                                'N'
                             END;
    p_user_access_token   := l_access_token;
    --
  END authenticate_user;
  --
  /****************************************************************************
  * Purpose:  Validate User Access Token
  * Author:   Daniel Hochleitner
  * Created:  29.11.2017
  * Changed:
  ****************************************************************************/
  FUNCTION validate_token(p_username          IN VARCHAR2,
                          p_user_access_token IN VARCHAR2) RETURN VARCHAR2 AS
    --
    l_bool BOOLEAN := FALSE;
    --
    CURSOR l_cur_user_token IS
      SELECT user_token.user_name
        FROM user_token
       WHERE user_token.user_name = upper(p_username)
         AND user_token.user_access_token = p_user_access_token;
    l_rec_user_token l_cur_user_token%ROWTYPE;
    --
  BEGIN
    --
    OPEN l_cur_user_token;
    FETCH l_cur_user_token
      INTO l_rec_user_token;
    --
    IF l_cur_user_token%FOUND THEN
      l_bool := TRUE;
    ELSE
      l_bool := FALSE;
    END IF;
    --
    CLOSE l_cur_user_token;
    --
    RETURN CASE WHEN l_bool THEN 'Y' ELSE 'N' END;
    --
  END validate_token;
  --
END avc_pkg;
/
