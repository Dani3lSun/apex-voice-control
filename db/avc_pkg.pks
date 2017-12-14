CREATE OR REPLACE PACKAGE avc_pkg IS
  --
  -- Package for APEX Voice Control DB logic
  --

  --
  -- Create a new APEX session
  -- #param p_app_id
  -- #param p_user_name
  -- #param p_page_id
  -- #param p_session_id
  PROCEDURE create_apex_session(p_app_id     IN apex_applications.application_id%TYPE,
                                p_user_name  IN apex_workspace_sessions.user_name%TYPE,
                                p_page_id    IN apex_application_pages.page_id%TYPE DEFAULT NULL,
                                p_session_id IN apex_workspace_sessions.apex_session_id%TYPE DEFAULT NULL);
  --
  -- Joins an existing APEX session
  -- #param p_session_id
  -- #param p_app_id
  PROCEDURE join_apex_session(p_session_id IN apex_workspace_sessions.apex_session_id%TYPE,
                              p_app_id     IN apex_applications.application_id%TYPE DEFAULT NULL);
  --
  -- Execute APEX login and return authentication result
  -- #parm p_username
  -- #param p_password
  -- #param p_app_id
  -- #return BOOLEAN
  FUNCTION apex_login(p_username IN VARCHAR2,
                      p_password IN VARCHAR2,
                      p_app_id   IN NUMBER) RETURN BOOLEAN;
  --
  -- Get an SSP URL of an APEX page
  -- #param p_url
  -- #param p_app_id
  -- #param p_session_id
  -- #return VARCHAR2
  FUNCTION prepare_url(p_url        IN VARCHAR2,
                       p_app_id     IN NUMBER,
                       p_session_id IN NUMBER) RETURN VARCHAR2;
  --
  -- Generates a new token (random string)
  -- #return VARCHAR2
  FUNCTION generate_token RETURN VARCHAR2;
  --
  -- Saves User Access Token in USER_TOKEN table
  -- #param p_username
  -- #return VARCHAR2
  FUNCTION save_user_token(p_username IN VARCHAR2) RETURN VARCHAR2;
  --
  -- Authenticate User and create user access token
  -- #param p_username
  -- #param p_password
  -- #param p_app_id
  -- #param p_is_authenticated_yn
  -- #param p_user_access_token
  PROCEDURE authenticate_user(p_username            IN VARCHAR2,
                              p_password            IN VARCHAR2,
                              p_app_id              IN VARCHAR2,
                              p_is_authenticated_yn OUT VARCHAR2,
                              p_user_access_token   OUT VARCHAR2);
  --
  -- Validate User Access Token
  -- #param p_username
  -- #param p_user_access_token
  -- #return VARCHAR2 Y/N
  FUNCTION validate_token(p_username          IN VARCHAR2,
                          p_user_access_token IN VARCHAR2) RETURN VARCHAR2;
  --
END avc_pkg;
/
