prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>19887569019071860
,p_default_application_id=>120
,p_default_owner=>'ALEXA'
);
end;
/
 
prompt APPLICATION 120 - APEX Voice Control
--
-- Application Export:
--   Application:     120
--   Name:            APEX Voice Control
--   Date and Time:   22:30 Wednesday February 28, 2018
--   Exported By:     DHOCHLEITNER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.4.00.08
--   Instance ID:     218208257351820
--

-- Application Statistics:
--   Pages:                      2
--     Items:                    2
--     Processes:                4
--     Regions:                  2
--     Buttons:                  1
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Excluded

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,120)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ALEXA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'APEX Voice Control')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'AVC')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'CF1BE72AAFB6B67626465B81DE3AAE80F339F354259D4685064B379D6A98E7C4'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(20060345489224144)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:APEX Voice Control'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'DHOCHLEITNER'
,p_last_upd_yyyymmddhh24miss=>'20180228223000'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(20007916901224059)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(20061573905224161)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(20060000387224130)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(20060281704224140)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(20007370759224057)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(20007447809224059)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(20007562208224059)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(20007635408224059)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(20007715871224059)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(20007858045224059)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(32570978119057166)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'PLUGIN_DE.DANIELH.AVCCLIENT'
,p_attribute_02=>'please-change-me'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(20061446871224159)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20061896521224162)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(20008046286224062)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20008151604224074)
,p_page_template_id=>wwv_flow_api.id(20008046286224062)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20008263612224075)
,p_page_template_id=>wwv_flow_api.id(20008046286224062)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20008317814224075)
,p_page_template_id=>wwv_flow_api.id(20008046286224062)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20008409811224075)
,p_page_template_id=>wwv_flow_api.id(20008046286224062)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20008558916224076)
,p_page_template_id=>wwv_flow_api.id(20008046286224062)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20008699444224076)
,p_page_template_id=>wwv_flow_api.id(20008046286224062)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20008786696224076)
,p_page_template_id=>wwv_flow_api.id(20008046286224062)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20008800680224076)
,p_page_template_id=>wwv_flow_api.id(20008046286224062)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(20008918527224077)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20009073963224077)
,p_page_template_id=>wwv_flow_api.id(20008918527224077)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20009163338224077)
,p_page_template_id=>wwv_flow_api.id(20008918527224077)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20009295380224077)
,p_page_template_id=>wwv_flow_api.id(20008918527224077)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20009331559224077)
,p_page_template_id=>wwv_flow_api.id(20008918527224077)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20009481842224077)
,p_page_template_id=>wwv_flow_api.id(20008918527224077)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20009594313224078)
,p_page_template_id=>wwv_flow_api.id(20008918527224077)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20009601866224078)
,p_page_template_id=>wwv_flow_api.id(20008918527224077)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20009792472224078)
,p_page_template_id=>wwv_flow_api.id(20008918527224077)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20009862573224078)
,p_page_template_id=>wwv_flow_api.id(20008918527224077)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(20009952227224078)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20010094221224078)
,p_page_template_id=>wwv_flow_api.id(20009952227224078)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20010175678224078)
,p_page_template_id=>wwv_flow_api.id(20009952227224078)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(20010272410224078)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20010365160224079)
,p_page_template_id=>wwv_flow_api.id(20010272410224078)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20010486521224079)
,p_page_template_id=>wwv_flow_api.id(20010272410224078)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20010525478224079)
,p_page_template_id=>wwv_flow_api.id(20010272410224078)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20010647431224079)
,p_page_template_id=>wwv_flow_api.id(20010272410224078)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20010762851224079)
,p_page_template_id=>wwv_flow_api.id(20010272410224078)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20010802229224079)
,p_page_template_id=>wwv_flow_api.id(20010272410224078)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20010999142224079)
,p_page_template_id=>wwv_flow_api.id(20010272410224078)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20011045743224079)
,p_page_template_id=>wwv_flow_api.id(20010272410224078)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20011117624224079)
,p_page_template_id=>wwv_flow_api.id(20010272410224078)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(20011242936224079)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20011393614224079)
,p_page_template_id=>wwv_flow_api.id(20011242936224079)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20011422128224079)
,p_page_template_id=>wwv_flow_api.id(20011242936224079)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20011516887224079)
,p_page_template_id=>wwv_flow_api.id(20011242936224079)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20011607147224079)
,p_page_template_id=>wwv_flow_api.id(20011242936224079)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20011748575224079)
,p_page_template_id=>wwv_flow_api.id(20011242936224079)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20011889289224079)
,p_page_template_id=>wwv_flow_api.id(20011242936224079)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20011987163224079)
,p_page_template_id=>wwv_flow_api.id(20011242936224079)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(20012002879224079)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20012186069224080)
,p_page_template_id=>wwv_flow_api.id(20012002879224079)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20012286293224080)
,p_page_template_id=>wwv_flow_api.id(20012002879224079)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20012348416224081)
,p_page_template_id=>wwv_flow_api.id(20012002879224079)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(20012584421224083)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20012657522224083)
,p_page_template_id=>wwv_flow_api.id(20012584421224083)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20012762436224083)
,p_page_template_id=>wwv_flow_api.id(20012584421224083)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20012889456224083)
,p_page_template_id=>wwv_flow_api.id(20012584421224083)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20012951507224084)
,p_page_template_id=>wwv_flow_api.id(20012584421224083)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20013015708224084)
,p_page_template_id=>wwv_flow_api.id(20012584421224083)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20013115243224084)
,p_page_template_id=>wwv_flow_api.id(20012584421224083)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20013260035224084)
,p_page_template_id=>wwv_flow_api.id(20012584421224083)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20013364946224084)
,p_page_template_id=>wwv_flow_api.id(20012584421224083)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(20013412013224084)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20013569997224084)
,p_page_template_id=>wwv_flow_api.id(20013412013224084)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20013678035224084)
,p_page_template_id=>wwv_flow_api.id(20013412013224084)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20013738530224084)
,p_page_template_id=>wwv_flow_api.id(20013412013224084)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20013809526224084)
,p_page_template_id=>wwv_flow_api.id(20013412013224084)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20013993257224084)
,p_page_template_id=>wwv_flow_api.id(20013412013224084)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20014060327224084)
,p_page_template_id=>wwv_flow_api.id(20013412013224084)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20014116624224084)
,p_page_template_id=>wwv_flow_api.id(20013412013224084)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(20014253321224084)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20014374405224085)
,p_page_template_id=>wwv_flow_api.id(20014253321224084)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20014474651224085)
,p_page_template_id=>wwv_flow_api.id(20014253321224084)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(20014589700224085)
,p_page_template_id=>wwv_flow_api.id(20014253321224084)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(20049272110224109)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(20049359945224110)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(20049433704224110)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20014758974224085)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20014800344224088)
,p_plug_template_id=>wwv_flow_api.id(20014758974224085)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20016554287224091)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20016637130224091)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20016791185224091)
,p_plug_template_id=>wwv_flow_api.id(20016637130224091)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20016855537224091)
,p_plug_template_id=>wwv_flow_api.id(20016637130224091)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20016997873224091)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20017029419224091)
,p_plug_template_id=>wwv_flow_api.id(20016997873224091)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20017195662224091)
,p_plug_template_id=>wwv_flow_api.id(20016997873224091)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20017853659224091)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20017951713224091)
,p_plug_template_id=>wwv_flow_api.id(20017853659224091)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20018065729224092)
,p_plug_template_id=>wwv_flow_api.id(20017853659224091)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20021267660224092)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20021315054224092)
,p_plug_template_id=>wwv_flow_api.id(20021267660224092)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20021476406224092)
,p_plug_template_id=>wwv_flow_api.id(20021267660224092)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20023476270224094)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20024348142224094)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20024439147224094)
,p_plug_template_id=>wwv_flow_api.id(20024348142224094)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20025033302224094)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20025127670224094)
,p_plug_template_id=>wwv_flow_api.id(20025033302224094)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20026030795224094)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20026343690224095)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20026438918224095)
,p_plug_template_id=>wwv_flow_api.id(20026343690224095)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20026501612224095)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20026605552224095)
,p_plug_template_id=>wwv_flow_api.id(20026501612224095)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20026776981224095)
,p_plug_template_id=>wwv_flow_api.id(20026501612224095)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20029775779224095)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20029849024224095)
,p_plug_template_id=>wwv_flow_api.id(20029775779224095)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20029929866224095)
,p_plug_template_id=>wwv_flow_api.id(20029775779224095)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20030960933224096)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(20031374676224096)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(20031466258224096)
,p_plug_template_id=>wwv_flow_api.id(20031374676224096)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20039902791224101)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20041654990224104)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20044043150224105)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20044888489224105)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20046044987224105)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20046548310224106)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20046605917224106)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20046789331224106)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20046817348224106)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20047679293224106)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(20048102551224107)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(20031901180224096)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(20032064483224098)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(20033723200224099)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(20036015826224099)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(20036441590224099)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(20036539808224100)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(20036539808224100)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(20037852720224100)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(20038005195224100)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(20039023631224101)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(20048707166224107)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(20048897445224108)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(20048976454224108)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(20049071653224108)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(20049198173224108)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(20049865656224110)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(20050052641224112)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(20049994940224111)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(20050646451224117)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(20013412013224084)
,p_default_dialog_template=>wwv_flow_api.id(20012002879224079)
,p_error_template=>wwv_flow_api.id(20009952227224078)
,p_printer_friendly_template=>wwv_flow_api.id(20013412013224084)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(20009952227224078)
,p_default_button_template=>wwv_flow_api.id(20049359945224110)
,p_default_region_template=>wwv_flow_api.id(20026501612224095)
,p_default_chart_template=>wwv_flow_api.id(20026501612224095)
,p_default_form_template=>wwv_flow_api.id(20026501612224095)
,p_default_reportr_template=>wwv_flow_api.id(20026501612224095)
,p_default_tabform_template=>wwv_flow_api.id(20026501612224095)
,p_default_wizard_template=>wwv_flow_api.id(20026501612224095)
,p_default_menur_template=>wwv_flow_api.id(20030960933224096)
,p_default_listr_template=>wwv_flow_api.id(20026501612224095)
,p_default_irr_template=>wwv_flow_api.id(20026030795224094)
,p_default_report_template=>wwv_flow_api.id(20036539808224100)
,p_default_label_template=>wwv_flow_api.id(20048897445224108)
,p_default_menu_template=>wwv_flow_api.id(20049865656224110)
,p_default_calendar_template=>wwv_flow_api.id(20049994940224111)
,p_default_list_template=>wwv_flow_api.id(20044043150224105)
,p_default_nav_list_template=>wwv_flow_api.id(20047679293224106)
,p_default_top_nav_list_temp=>wwv_flow_api.id(20047679293224106)
,p_default_side_nav_list_temp=>wwv_flow_api.id(20046789331224106)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(20016997873224091)
,p_default_dialogr_template=>wwv_flow_api.id(20016554287224091)
,p_default_option_label=>wwv_flow_api.id(20048897445224108)
,p_default_required_label=>wwv_flow_api.id(20049071653224108)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(20046605917224106)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.1/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#HAMMERJS_URL#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(20050155930224114)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(20050251153224115)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(20050308423224115)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(20050430419224115)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(20050555556224115)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20015005820224090)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20015260293224091)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20015575528224091)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20015796336224091)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20017284360224091)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20017415375224091)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20018157811224092)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20018517895224092)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20019104130224092)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20019721156224092)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20019914410224092)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20020857243224092)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20022448562224093)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20023640061224094)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20024000455224094)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20024571101224094)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20025415599224094)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20030010902224096)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20030274857224096)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20030699894224096)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20031591143224096)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20032109021224098)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20032319351224098)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20033954710224099)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20034675328224099)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20034851138224099)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20035206779224099)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20036153717224099)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20036627854224100)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20036922149224100)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20037117080224100)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20038130587224100)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20040093962224103)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20040808052224104)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20041899935224104)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20042570887224104)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20042887952224104)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20043139240224104)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20044552768224105)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20045465848224105)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20048240258224107)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20049513342224110)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20050768107224126)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20050939770224126)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20051730820224126)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20051985123224126)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20052703579224126)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20052913462224126)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20053716025224127)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20053959938224127)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20054789027224127)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20054986131224127)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20055113880224127)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20055353641224127)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20055519351224127)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20055769077224127)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20055989480224127)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20056673835224127)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20057370820224127)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20057882611224127)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20058098277224128)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20058274815224128)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20058426962224128)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20058767358224128)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20059062601224128)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20059289175224128)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20059422757224128)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(20059647019224128)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Radio Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display for radio group items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20012440698224082)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(20012002879224079)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20014665485224085)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(20014253321224084)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20014981148224089)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20015128642224090)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(20015005820224090)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20015366421224091)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(20015260293224091)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20015483426224091)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(20015260293224091)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20015696244224091)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(20015575528224091)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20015863050224091)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(20015796336224091)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20015942786224091)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(20015005820224090)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20016042146224091)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(20015575528224091)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20016137324224091)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(20015005820224090)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20016254157224091)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(20015575528224091)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20016372270224091)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(20015005820224090)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20016410365224091)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20014758974224085)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(20015796336224091)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20017316183224091)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(20016997873224091)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20017596967224091)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(20016997873224091)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(20017415375224091)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20017682777224091)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(20016997873224091)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20017775004224091)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(20016997873224091)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(20017415375224091)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20018270568224092)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(20018157811224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20018369407224092)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(20018157811224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20018439047224092)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(20018157811224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20018643780224092)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20018733792224092)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20018823149224092)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20018973728224092)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(20018157811224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20019015131224092)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20019218155224092)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20019318661224092)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20019477770224092)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20019514307224092)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20019625003224092)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20019812665224092)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(20019721156224092)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20020048671224092)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(20019914410224092)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20020195914224092)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(20019721156224092)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20020296865224092)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20020395821224092)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20020404273224092)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20020591826224092)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(20019914410224092)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20020680891224092)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20020771360224092)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20020990809224092)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(20020857243224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20021022849224092)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(20020857243224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20021129577224092)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20017853659224091)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20021585908224092)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20021637037224093)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20021749070224093)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20021805392224093)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20021951050224093)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20022052173224093)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20022136082224093)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20022260966224093)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20022338701224093)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20022550147224093)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(20022448562224093)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20022630260224093)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(20022448562224093)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20022743726224093)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(20019914410224092)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20022893592224094)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20022968294224094)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20023025239224094)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20023173691224094)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20023244187224094)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(20019914410224092)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20023327860224094)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20021267660224092)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20023575847224094)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20023476270224094)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20023733221224094)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20023476270224094)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(20023640061224094)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20023879206224094)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20023476270224094)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(20023640061224094)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20023953372224094)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20023476270224094)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(20023640061224094)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20024113558224094)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20023476270224094)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(20024000455224094)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20024293567224094)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20023476270224094)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(20024000455224094)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20024662771224094)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20024348142224094)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(20024571101224094)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20024737943224094)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20024348142224094)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20024809709224094)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20024348142224094)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20024927306224094)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20024348142224094)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20025247822224094)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(20025033302224094)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20025348600224094)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20025033302224094)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20025518232224094)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20025033302224094)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(20025415599224094)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20025672989224094)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20025033302224094)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(20025415599224094)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20025746529224094)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20025033302224094)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20025880393224094)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20025033302224094)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20025907344224094)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20025033302224094)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(20025415599224094)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20026108147224095)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20026030795224094)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20026298776224095)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20026030795224094)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20026870117224095)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20026968425224095)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20027071405224095)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20027172352224095)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(20018517895224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20027264296224095)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20027370288224095)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20027492063224095)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20027591416224095)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20027656771224095)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20027701752224095)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20027838140224095)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20027990120224095)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20028067684224095)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20028104393224095)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20028270703224095)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20028380314224095)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20028498729224095)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20028506365224095)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20028618362224095)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(20019104130224092)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20028792359224095)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(20019721156224092)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20028877089224095)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(20019914410224092)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20028908237224095)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(20019721156224092)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20029070228224095)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20029198782224095)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20029291694224095)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20029396982224095)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(20019914410224092)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20029495806224095)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20029505320224095)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20029623776224095)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(20026501612224095)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(20017284360224091)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20030192210224096)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20029775779224095)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(20030010902224096)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20030324960224096)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20029775779224095)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(20030274857224096)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20030445669224096)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20029775779224095)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20030558560224096)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20029775779224095)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(20030274857224096)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20030712393224096)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20029775779224095)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(20030699894224096)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20030807260224096)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20029775779224095)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(20030699894224096)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20031042084224096)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(20030960933224096)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(20023640061224094)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20031197686224096)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(20030960933224096)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20031292632224096)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(20030960933224096)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(20023640061224094)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20031696637224096)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(20031374676224096)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(20031591143224096)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20031701143224096)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20031374676224096)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(20031591143224096)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20031861905224096)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(20031374676224096)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20032215983224098)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(20032109021224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20032444504224098)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20032545727224098)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(20032109021224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20032628228224098)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20032779045224098)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(20032109021224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20032804087224098)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20032973744224098)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20033045687224098)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(20032109021224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20033172662224099)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(20032109021224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20033255475224099)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20033314971224099)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20033429134224099)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20033553798224099)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20033607041224099)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20032064483224098)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20033809754224099)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20034054678224099)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(20033954710224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20034137757224099)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20034264938224099)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(20033954710224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20034374069224099)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20034460804224099)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(20033954710224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20034599774224099)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20034731209224099)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(20034675328224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20034962215224099)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(20034851138224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20035075703224099)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(20034851138224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20035154612224099)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(20034675328224099)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20035329771224099)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(20035206779224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20035460011224099)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(20035206779224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20035598731224099)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(20034675328224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20035603897224099)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20035764644224099)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(20033954710224099)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20035854943224099)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20035946019224099)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20033723200224099)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20036259035224099)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20036015826224099)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(20036153717224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20036375290224099)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20036015826224099)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(20036153717224099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20036751382224100)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20036539808224100)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(20036627854224100)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20036899386224100)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20036539808224100)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(20036627854224100)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20037021986224100)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20036539808224100)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(20036922149224100)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20037247893224100)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20036539808224100)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(20037117080224100)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20037398427224100)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(20036539808224100)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(20037117080224100)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20037413022224100)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(20036539808224100)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(20037117080224100)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20037562988224100)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20036539808224100)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(20036922149224100)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20037669860224100)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20036539808224100)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20037742858224100)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20036539808224100)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(20037117080224100)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20037930097224100)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(20037852720224100)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(20034675328224099)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20038267927224100)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(20038005195224100)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20038395757224100)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20038005195224100)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20038457133224100)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20038005195224100)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20038582198224100)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20038005195224100)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20038663729224100)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20038005195224100)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20038781101224101)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(20038005195224100)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20038881539224101)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(20038005195224100)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20038974336224101)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(20038005195224100)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20039191496224101)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(20039023631224101)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20039257124224101)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20039023631224101)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20039315347224101)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20039023631224101)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20039434674224101)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(20039023631224101)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20039528174224101)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(20039023631224101)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(20032319351224098)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20039623164224101)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(20039023631224101)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20039703209224101)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(20039023631224101)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20039822394224101)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(20039023631224101)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(20038130587224100)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20040131304224103)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20040277942224104)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20040349051224104)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20040419963224104)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20040555435224104)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20040647501224104)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20040700864224104)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20040995463224104)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(20040808052224104)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20041084034224104)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(20040808052224104)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20041123462224104)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20041206640224104)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(20040808052224104)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20041367015224104)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20041495189224104)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(20040808052224104)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20041595512224104)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(20039902791224101)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(20040808052224104)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20041702717224104)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20041902160224104)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(20041899935224104)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20042097306224104)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20042188838224104)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(20041899935224104)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20042255735224104)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20042338978224104)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(20041899935224104)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20042404607224104)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20042670132224104)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(20042570887224104)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20042733624224104)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20042936175224104)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(20042887952224104)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20043031965224104)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(20042570887224104)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20043204791224104)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(20043139240224104)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20043321973224104)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(20043139240224104)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20043434930224104)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(20042570887224104)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20043505815224104)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20043637819224105)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(20041899935224104)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20043785391224105)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(20042887952224104)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20043857398224105)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20043925754224105)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20041654990224104)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20044176916224105)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20044043150224105)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(20042570887224104)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20044209427224105)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(20044043150224105)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20044384957224105)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20044043150224105)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20044439235224105)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20044043150224105)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20044629906224105)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20044043150224105)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(20044552768224105)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20044790295224105)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20044043150224105)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(20044552768224105)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20044955964224105)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20044888489224105)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20045031779224105)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20044888489224105)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20045151199224105)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(20044888489224105)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20045282395224105)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(20044888489224105)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20045349800224105)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(20044888489224105)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20045535850224105)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20044888489224105)
,p_css_classes=>'t-MediaList--large'
,p_group_id=>wwv_flow_api.id(20045465848224105)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20045600905224105)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(20044888489224105)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20045723409224105)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20044888489224105)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20045816947224105)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20044888489224105)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20045943135224105)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(20044888489224105)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20046156511224106)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(20046044987224105)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20046231973224106)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20046044987224105)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20046355189224106)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20046044987224105)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20046481712224106)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(20046044987224105)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20046974202224106)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20046817348224106)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(20043139240224104)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20047026350224106)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(20046817348224106)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(20040093962224103)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20047102382224106)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20046817348224106)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(20043139240224104)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20047209670224106)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20046817348224106)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(20045465848224105)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20047325546224106)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20046817348224106)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(20042570887224104)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20047481025224106)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20046817348224106)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(20042570887224104)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20047532928224106)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(20046817348224106)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(20045465848224105)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20047784744224106)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(20047679293224106)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20047880813224106)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(20047679293224106)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20047986279224106)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(20047679293224106)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20048019773224107)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(20047679293224106)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20048324157224107)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20048102551224107)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(20048240258224107)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20048478953224107)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(20048102551224107)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(20048240258224107)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20048598199224107)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(20048102551224107)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(20048240258224107)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20048626881224107)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(20048102551224107)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20049626416224110)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(20049433704224110)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(20049513342224110)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20049747575224110)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(20049433704224110)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(20049513342224110)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20050806969224126)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(20050768107224126)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20051018607224126)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(20050939770224126)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20051194404224126)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(20050768107224126)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20051248774224126)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(20050939770224126)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20051305722224126)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(20050768107224126)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20051444255224126)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(20050939770224126)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20051502884224126)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(20050768107224126)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20051663968224126)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(20050939770224126)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20051885356224126)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(20051730820224126)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20052062188224126)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(20051985123224126)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20052173529224126)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(20051730820224126)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20052286143224126)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(20051985123224126)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20052314758224126)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(20051730820224126)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20052452367224126)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(20051985123224126)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20052548298224126)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(20051730820224126)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20052626407224126)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(20051985123224126)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20052833674224126)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(20052703579224126)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20053007922224126)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(20052913462224126)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20053111379224126)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(20052703579224126)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20053247033224127)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(20052913462224126)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20053324592224127)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(20052703579224126)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20053479639224127)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(20052913462224126)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20053587690224127)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(20052703579224126)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20053623648224127)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(20052913462224126)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20053804395224127)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(20053716025224127)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20054016612224127)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(20053959938224127)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20054175462224127)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(20053716025224127)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20054277979224127)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(20053959938224127)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20054304053224127)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(20053716025224127)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20054419937224127)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(20053959938224127)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20054516202224127)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(20053716025224127)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20054688465224127)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(20053959938224127)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20054822041224127)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(20054789027224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20055036287224127)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(20054986131224127)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20055251081224127)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(20055113880224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20055442303224127)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(20055353641224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20055686997224127)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(20055519351224127)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20055840824224127)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(20055769077224127)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20056093333224127)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(20055989480224127)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20056175478224127)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(20055989480224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20056259583224127)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(20054986131224127)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20056315162224127)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(20055113880224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20056464698224127)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(20055353641224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20056584244224127)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(20055519351224127)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20056744659224127)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(20056673835224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20056861883224127)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(20056673835224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20056971310224127)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(20056673835224127)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20057097843224127)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(20054789027224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20057145859224127)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(20055989480224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20057268954224127)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(20055769077224127)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20057438235224127)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(20057370820224127)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20057511717224127)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(20054789027224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20057675966224127)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(20055769077224127)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20057745643224127)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(20054789027224127)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20057985212224128)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(20057882611224127)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20058165898224128)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(20058098277224128)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20058309993224128)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(20058274815224128)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20058552503224128)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(20058426962224128)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20058646398224128)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(20058426962224128)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20058885781224128)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(20058767358224128)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20058964121224128)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(20058098277224128)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20059156567224128)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(20059062601224128)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20059352905224128)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(20059289175224128)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20059506875224128)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(20059422757224128)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20059784071224128)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(20059647019224128)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20059881322224128)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(20059926559224128)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(20059062601224128)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(20060345489224144)
,p_name=>'APEX'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/de_danielh_avcclient
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(96392797084945955)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'DE.DANIELH.AVCCLIENT'
,p_display_name=>'APEX Voice Control'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','DE.DANIELH.AVCCLIENT'),'')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#socket.io.js',
'#PLUGIN_FILES#avc#MIN#.js'))
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION plugin_render_avc(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                           p_plugin         IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result IS',
'  --',
'  -- plugin attributes',
'  l_result apex_plugin.t_dynamic_action_render_result;',
'  --',
'  l_base_url          p_plugin.attribute_01%TYPE := p_plugin.attribute_01;',
'  l_server_key        p_plugin.attribute_02%TYPE := p_plugin.attribute_02;',
'  l_username          p_dynamic_action.attribute_01%TYPE := p_dynamic_action.attribute_01;',
'  l_user_access_token p_dynamic_action.attribute_02%TYPE := p_dynamic_action.attribute_02;',
'  l_allow_ssp_url     p_dynamic_action.attribute_03%TYPE := p_dynamic_action.attribute_03;',
'  --',
'BEGIN',
'  -- Debug',
'  IF apex_application.g_debug THEN',
'    apex_plugin_util.debug_dynamic_action(p_plugin         => p_plugin,',
'                                          p_dynamic_action => p_dynamic_action);',
'  END IF;',
'  -- escape input',
'  l_base_url          := REPLACE(apex_escape.json(l_base_url),',
'                                 ''\'',',
'                                 '''');',
'  l_server_key        := apex_escape.json(l_server_key);',
'  l_username          := apex_escape.json(l_username);',
'  l_user_access_token := apex_escape.json(l_user_access_token);',
'  --',
'  -- call pluginHandler function',
'  l_result.javascript_function := ''avc.pluginHandler'';',
'  l_result.ajax_identifier     := apex_plugin.get_ajax_identifier;',
'  l_result.attribute_01        := l_base_url;',
'  l_result.attribute_02        := l_server_key;',
'  l_result.attribute_03        := l_username;',
'  l_result.attribute_04        := l_user_access_token;',
'  l_result.attribute_05        := l_allow_ssp_url;',
'  --',
'  RETURN l_result;',
'  --',
'END plugin_render_avc;',
'',
'FUNCTION plugin_ajax_avc(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                         p_plugin         IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_ajax_result IS',
'  -- plugin attributes',
'  l_result apex_plugin.t_dynamic_action_ajax_result;',
'  --',
'  l_allow_ssp_url p_dynamic_action.attribute_03%TYPE := p_dynamic_action.attribute_03;',
'  -- other vars',
'  l_url          VARCHAR2(2000);',
'  l_prepared_url VARCHAR2(2000);',
'  --',
'BEGIN',
'  -- check if SSP URL feature is enabled',
'  IF l_allow_ssp_url = ''Y'' THEN',
'    -- Get Data from AJAX Call',
'    l_url := apex_application.g_x01;',
'    -- prepare URL',
'    l_prepared_url := apex_util.prepare_url(p_url => l_url);',
'    -- output JSON object',
'    apex_json.open_object;',
'    apex_json.write(''success'',',
'                    TRUE);',
'    apex_json.write(''url'',',
'                    l_prepared_url);',
'    apex_json.close_object;',
'  ELSE',
'    -- output JSON object',
'    apex_json.open_object;',
'    apex_json.write(''success'',',
'                    FALSE);',
'    apex_json.write(''message'',',
'                    ''SSP URL generation disabled. Enable Allow SSP URLs in the plugin settings.'');',
'    apex_json.close_object;',
'  END IF;',
'  --',
'  RETURN l_result;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    -- output JSON object',
'    apex_json.open_object;',
'    apex_json.write(''success'',',
'                    FALSE);',
'    apex_json.write(''message'',',
'                    SQLERRM);',
'    apex_json.close_object;',
'    RETURN NULL;',
'END plugin_ajax_avc;'))
,p_api_version=>1
,p_render_function=>'plugin_render_avc'
,p_ajax_function=>'plugin_ajax_avc'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0.0'
,p_about_url=>'https://github.com/Dani3lSun/apex-voice-control'
,p_files_version=>7
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(32571732735083620)
,p_plugin_id=>wwv_flow_api.id(96392797084945955)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'AVC-Bridge-Service: Base URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'http://192.168.1.10:8585<br>',
'https://example.com:8585'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Base URL of AVC-Bridge-Service. This is needed by the client to successfully connect to the websocket part of AVC-Bridge-Service.<br>',
'The default port of the NodeJS server side is 8585.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(96393048769948147)
,p_plugin_id=>wwv_flow_api.id(96392797084945955)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'AVC-Bridge-Service: Server Key'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'please-change-me'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The Server Key is used for first level authentication against the websocket part of avc-bridge-service<br>',
'This key must be configured in the server settings (config.json) of avc-bridge-service, at best it´s a long random string<br>',
'Default Key is: please-change-me'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(96393308622948494)
,p_plugin_id=>wwv_flow_api.id(96392797084945955)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Username'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'&APP_USER.'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Login Username of an authenticated APEX user.<br>',
'Used for second level authentication, username and user access token must be equal to the username used for authenticating the Alexa App against our login service of AVC-Bridge-Service, e.g:<br>',
'https://example.com:8585/login<br>',
'You will see usernames & access tokens in the USER_TOKEN table.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(32573079434121119)
,p_plugin_id=>wwv_flow_api.id(96392797084945955)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'User Access Token'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'User Access Token of an authenticated APEX user.<br>',
'Used for second level authentication, username and user access token must be equal to the username used for authenticating the Alexa App against our login service of AVC-Bridge-Service, e.g:<br>',
'https://example.com:8585/login<br>',
'You will see usernames & access tokens in the USER_TOKEN table.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(32575164619154805)
,p_plugin_id=>wwv_flow_api.id(96392797084945955)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Allow SSP URLs'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'Y'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Allow that URLs which are called from the Alexa Service are dynamically generated via AJAX using APEX_PAGE.GET_URL or APEX_UTIL.PREPARE_URL.<br>',
'This enables that the plugin generates secure URLs with SSP (Session State Protection) and valid checksums, so you don´t have to disable SSP on particular pages.<br>',
'Attention: This allows the client (browser) to generate valid SSP enabled URLs via AJAX/JavaScript, and can reduce overall security...'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(32575692832155736)
,p_plugin_attribute_id=>wwv_flow_api.id(32575164619154805)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(32576049133156127)
,p_plugin_attribute_id=>wwv_flow_api.id(32575164619154805)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'N'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(32579563242428087)
,p_plugin_id=>wwv_flow_api.id(96392797084945955)
,p_name=>'avc websocket disconnect'
,p_display_name=>'avc-websocket-disconnect'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(32579240508428086)
,p_plugin_id=>wwv_flow_api.id(96392797084945955)
,p_name=>'avc websocket message'
,p_display_name=>'avc-websocket-message'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '76617220617663203D207B0A20202F2A2A0A2020202A20476C6F62616C205661726961626C65730A2020202A2F0A202067417663536F636B65743A206E756C6C2C0A202067416A61784964656E7469666965723A206E756C6C2C0A20202F2A2A0A202020';
wwv_flow_api.g_varchar2_table(2) := '2A20436F6E6E65637420746F20776562736F636B6574206F66204156432D4272696467652D536572766963650A2020202A2040706172616D207B737472696E677D20704261736555726C0A2020202A2040706172616D207B737472696E677D2070536572';
wwv_flow_api.g_varchar2_table(3) := '7665724B65790A2020202A2040706172616D207B737472696E677D2070557365726E616D650A2020202A2040706172616D207B737472696E677D207055736572416363657373546F6B656E0A2020202A2F0A2020636F6E6E656374576562736F636B6574';
wwv_flow_api.g_varchar2_table(4) := '3A2066756E6374696F6E28704261736555726C2C20705365727665724B65792C2070557365726E616D652C207055736572416363657373546F6B656E29207B0A20202020766172206170657853657373696F6E4964203D202476282770496E7374616E63';
wwv_flow_api.g_varchar2_table(5) := '6527293B0A2020202076617220636F6E6E656374537472696E67203D2027757365726E616D653D27202B2070557365726E616D652E746F4C6F776572436173652829202B2027267365727665724B65793D27202B20705365727665724B6579202B202726';
wwv_flow_api.g_varchar2_table(6) := '75736572416363657373546F6B656E3D27202B207055736572416363657373546F6B656E202B2027266170657853657373696F6E49643D27202B206170657853657373696F6E49643B0A0A202020202F2F206C6F6767696E670A20202020617065782E64';
wwv_flow_api.g_varchar2_table(7) := '656275672E6C6F6728276176632E636F6E6E656374576562736F636B6574202D20636F6E6E656374537472696E67272C20636F6E6E656374537472696E67293B0A0A202020202F2F20636F6E6E65637420746F20736F636B65740A202020206176632E67';
wwv_flow_api.g_varchar2_table(8) := '417663536F636B6574203D20696F2E636F6E6E65637428704261736555726C202B20272F617663272C207B0A20202020202071756572793A20636F6E6E656374537472696E670A202020207D293B0A20207D2C0A20202F2A2A0A2020202A2048616E646C';
wwv_flow_api.g_varchar2_table(9) := '6520776562736F636B6574206576656E747320616E64206D657373616765730A2020202A2040706172616D207B737472696E677D2070416C6C6F7753535055726C0A2020202A2F0A202068616E646C65576562736F636B65743A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(10) := '70416C6C6F7753535055726C29207B0A202020207661722075726C203D2027273B0A20202020766172206170657853657373696F6E4964203D202476282770496E7374616E636527293B0A202020202F2F20736F636B6574206D65737361676520657665';
wwv_flow_api.g_varchar2_table(11) := '6E740A202020206176632E67417663536F636B65742E6F6E28276D657373616765272C2066756E6374696F6E286461746129207B0A2020202020202F2F206C6F6767696E672026206576656E740A202020202020617065782E64656275672E6C6F672827';
wwv_flow_api.g_varchar2_table(12) := '6176632E68616E646C65576562736F636B6574202D206D6573736167652064617461272C2064617461293B0A202020202020617065782E6576656E742E747269676765722827626F6479272C20276176632D776562736F636B65742D6D65737361676527';
wwv_flow_api.g_varchar2_table(13) := '293B0A0A2020202020202F2F204E6176696761746520746F20706167650A20202020202069662028646174612E74797065203D3D20274E41565F544F5F504147452720262620646174612E70616765496429207B0A202020202020202075726C203D2027';
wwv_flow_api.g_varchar2_table(14) := '663F703D27202B202476282770466C6F7749642729202B20273A27202B20646174612E706167654964202B20273A27202B206170657853657373696F6E4964202B20273A3A3A3A3A273B0A20202020202020206176632E67657450726F70657255726C28';
wwv_flow_api.g_varchar2_table(15) := '75726C2C2070416C6C6F7753535055726C2C2066756E6374696F6E2874617267657455726C29207B0A20202020202020202020617065782E6E617669676174696F6E2E72656469726563742874617267657455726C293B0A20202020202020207D293B0A';
wwv_flow_api.g_varchar2_table(16) := '20202020202020202F2F204E6176696761746520746F207061676520616E64207365617263680A2020202020207D20656C73652069662028646174612E74797065203D3D20274E41565F544F5F504147455F5345415243482720262620646174612E7061';
wwv_flow_api.g_varchar2_table(17) := '6765496429207B0A202020202020202075726C203D2027663F703D27202B202476282770466C6F7749642729202B20273A27202B20646174612E706167654964202B20273A27202B206170657853657373696F6E4964202B20273A3A3A27202B20646174';
wwv_flow_api.g_varchar2_table(18) := '612E736561726368506172616D202B20646174612E73656172636856616C75653B0A20202020202020206176632E67657450726F70657255726C2875726C2C2070416C6C6F7753535055726C2C2066756E6374696F6E2874617267657455726C29207B0A';
wwv_flow_api.g_varchar2_table(19) := '20202020202020202020617065782E6E617669676174696F6E2E72656469726563742874617267657455726C293B0A20202020202020207D293B0A20202020202020202F2F2073656172636820696E2063757272656E7420706167650A2020202020207D';
wwv_flow_api.g_varchar2_table(20) := '20656C73652069662028646174612E74797065203D3D202743555252454E545F504147455F5345415243482720262620646174612E706167657329207B0A20202020202020207661722070616765734172726179203D20646174612E70616765733B0A20';
wwv_flow_api.g_varchar2_table(21) := '20202020202020666F7220287661722069203D20303B2069203C20706167657341727261792E6C656E6774683B20692B2B29207B0A2020202020202020202069662028706167657341727261795B695D2E706167654964203D3D207061727365496E7428';
wwv_flow_api.g_varchar2_table(22) := '2476282770466C6F7753746570496427292929207B0A202020202020202020202020766172207365617263684669656C64203D20706167657341727261795B695D2E7365617263684669656C643B0A2020202020202020202020202428272327202B2073';
wwv_flow_api.g_varchar2_table(23) := '65617263684669656C64292E76616C28646174612E73656172636856616C7565293B0A2020202020202020202020202428272327202B207365617263684669656C64292E706172656E747328272E612D4952522D73656172636827292E66696E6428272E';
wwv_flow_api.g_varchar2_table(24) := '612D4952522D627574746F6E2D2D73656172636827292E636C69636B28293B0A202020202020202020207D0A20202020202020207D0A20202020202020202F2F207061727479206D6F646520666F722066756E0A2020202020207D20656C736520696620';
wwv_flow_api.g_varchar2_table(25) := '28646174612E74797065203D3D202750415254595F4D4F44452729207B0A20202020202020206176632E70617274794D6F646528293B0A2020202020207D0A202020207D293B0A202020202F2F20736F636B657420646973636F6E6E656374206576656E';
wwv_flow_api.g_varchar2_table(26) := '740A202020206176632E67417663536F636B65742E6F6E2827646973636F6E6E656374272C2066756E6374696F6E2829207B0A2020202020202F2F206C6F6767696E672026206576656E740A202020202020617065782E64656275672E6C6F6728276176';
wwv_flow_api.g_varchar2_table(27) := '632E68616E646C65576562736F636B6574202D20776562736F636B657420646973636F6E6E656374656427293B0A202020202020617065782E6576656E742E747269676765722827626F6479272C20276176632D776562736F636B65742D646973636F6E';
wwv_flow_api.g_varchar2_table(28) := '6E65637427293B0A202020207D293B0A20207D2C0A20202F2A2A0A2020202A204765742070726F7065722055524C2C20652E67207769746820535350202620636865636B73756D206F7220706C61696E2055524C0A2020202A2040706172616D207B7374';
wwv_flow_api.g_varchar2_table(29) := '72696E677D207055726C0A2020202A2040706172616D207B737472696E677D2070416C6C6F7753535055726C0A2020202A2040706172616D207B66756E6374696F6E7D2063616C6C6261636B0A2020202A2F0A202067657450726F70657255726C3A2066';
wwv_flow_api.g_varchar2_table(30) := '756E6374696F6E287055726C2C2070416C6C6F7753535055726C2C2063616C6C6261636B29207B0A202020202F2F20636865636B20696620616C6C6F77205353502055524C20697320656E61626C65640A202020206966202870416C6C6F775353505572';
wwv_flow_api.g_varchar2_table(31) := '6C203D3D2027592729207B0A2020202020202F2F204150455820416A61782043616C6C0A202020202020617065782E7365727665722E706C7567696E286176632E67416A61784964656E7469666965722C207B0A20202020202020207830313A20705572';
wwv_flow_api.g_varchar2_table(32) := '6C0A2020202020207D2C207B0A202020202020202064617461547970653A20276A736F6E272C0A20202020202020202F2F20737563636573730A2020202020202020737563636573733A2066756E6374696F6E286461746129207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(33) := '2020617065782E64656275672E6C6F6728276176632E67657450726F70657255726C202D20414A41582073756363657373272C2064617461293B0A2020202020202020202069662028646174612E7375636365737329207B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(34) := '2063616C6C6261636B28646174612E75726C293B0A202020202020202020207D20656C7365207B0A20202020202020202020202063616C6C6261636B287055726C293B0A202020202020202020207D0A20202020202020207D2C0A20202020202020202F';
wwv_flow_api.g_varchar2_table(35) := '2F206572726F720A20202020202020206572726F723A2066756E6374696F6E287868722C20704D65737361676529207B0A20202020202020202020617065782E64656275672E6C6F6728276176632E67657450726F70657255726C202D20414A41582065';
wwv_flow_api.g_varchar2_table(36) := '72726F72272C20704D657373616765293B0A2020202020202020202063616C6C6261636B287055726C293B0A20202020202020207D0A2020202020207D293B0A202020207D20656C7365207B0A20202020202063616C6C6261636B287055726C293B0A20';
wwv_flow_api.g_varchar2_table(37) := '2020207D0A20207D2C0A20202F2A2A0A2020202A205061727479204D6F6465206A75737420666F722066756E0A2020202A2F0A202070617274794D6F64653A2066756E6374696F6E2829207B0A202020202866756E6374696F6E2829207B0A2020202020';
wwv_flow_api.g_varchar2_table(38) := '2066756E6374696F6E206164645374796C6553686565742829207B0A20202020202020207661722065203D20646F63756D656E742E637265617465456C656D656E7428226C696E6B22293B0A2020202020202020652E7365744174747269627574652822';
wwv_flow_api.g_varchar2_table(39) := '74797065222C2022746578742F63737322293B0A2020202020202020652E736574417474726962757465282272656C222C20227374796C65736865657422293B0A2020202020202020652E736574417474726962757465282268726566222C207374796C';
wwv_flow_api.g_varchar2_table(40) := '65537263293B0A2020202020202020652E7365744174747269627574652822636C617373222C206D61726B6572436C617373293B0A2020202020202020646F63756D656E742E626F64792E617070656E644368696C642865293B0A2020202020207D0A0A';
wwv_flow_api.g_varchar2_table(41) := '20202020202066756E6374696F6E2072656D6F76654164646564456C656D656E74732829207B0A20202020202020207661722065203D20646F63756D656E742E676574456C656D656E74734279436C6173734E616D65286D61726B6572436C617373293B';
wwv_flow_api.g_varchar2_table(42) := '0A2020202020202020666F7220287661722074203D20303B2074203C20652E6C656E6774683B20742B2B29207B0A20202020202020202020646F63756D656E742E626F64792E72656D6F76654368696C6428655B745D293B0A20202020202020207D0A20';
wwv_flow_api.g_varchar2_table(43) := '20202020207D0A0A20202020202066756E6374696F6E20666C6173684566666563742829207B0A20202020202020207661722065203D20646F63756D656E742E637265617465456C656D656E74282264697622293B0A2020202020202020652E73657441';
wwv_flow_api.g_varchar2_table(44) := '74747269627574652822636C617373222C20666C617368436C617373293B0A2020202020202020646F63756D656E742E626F64792E617070656E644368696C642865293B0A202020202020202073657454696D656F75742866756E6374696F6E2829207B';
wwv_flow_api.g_varchar2_table(45) := '0A20202020202020202020646F63756D656E742E626F64792E72656D6F76654368696C642865293B0A20202020202020207D2C20313030293B0A2020202020207D0A0A20202020202066756E6374696F6E2067657453697A65286529207B0A2020202020';
wwv_flow_api.g_varchar2_table(46) := '20202072657475726E207B0A202020202020202020206865696768743A20652E6F66667365744865696768742C0A2020202020202020202077696474683A20652E6F666673657457696474680A20202020202020207D3B0A2020202020207D0A0A202020';
wwv_flow_api.g_varchar2_table(47) := '20202066756E6374696F6E206973526967687453697A65286929207B0A20202020202020207661722073203D2067657453697A652869293B0A202020202020202072657475726E20732E686569676874203E206D696E48656967687420262620732E6865';
wwv_flow_api.g_varchar2_table(48) := '69676874203C206D61784865696768742026260A20202020202020202020732E7769647468203E206D696E576964746820262620732E7769647468203C206D617857696474683B0A2020202020207D0A0A20202020202066756E6374696F6E2068656967';
wwv_flow_api.g_varchar2_table(49) := '687446726F6D546F70286529207B0A2020202020202020766172206E203D20303B0A20202020202020207768696C65202821216529207B0A202020202020202020206E202B3D20652E6F6666736574546F703B0A2020202020202020202065203D20652E';
wwv_flow_api.g_varchar2_table(50) := '6F6666736574506172656E743B0A20202020202020207D0A202020202020202072657475726E206E3B0A2020202020207D0A0A20202020202066756E6374696F6E2067657457696E646F774865696768742829207B0A2020202020202020766172206520';
wwv_flow_api.g_varchar2_table(51) := '3D20646F63756D656E742E646F63756D656E74456C656D656E743B0A202020202020202069662028212177696E646F772E696E6E6572576964746829207B0A2020202020202020202072657475726E2077696E646F772E696E6E65724865696768743B0A';
wwv_flow_api.g_varchar2_table(52) := '20202020202020207D20656C7365206966202865202626202169734E614E28652E636C69656E744865696768742929207B0A2020202020202020202072657475726E20652E636C69656E744865696768743B0A20202020202020207D0A20202020202020';
wwv_flow_api.g_varchar2_table(53) := '2072657475726E20303B0A2020202020207D0A0A20202020202066756E6374696F6E2067657450616765594F66667365742829207B0A20202020202020206966202877696E646F772E70616765594F666673657429207B0A202020202020202020207265';
wwv_flow_api.g_varchar2_table(54) := '7475726E2077696E646F772E70616765594F66667365743B0A20202020202020207D0A202020202020202072657475726E204D6174682E6D617828646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C546F702C20646F63756D';
wwv_flow_api.g_varchar2_table(55) := '656E742E626F64792E7363726F6C6C546F70293B0A2020202020207D0A0A20202020202066756E6374696F6E2069734F6E53637265656E286529207B0A20202020202020207661722074203D2068656967687446726F6D546F702865293B0A2020202020';
wwv_flow_api.g_varchar2_table(56) := '20202072657475726E2074203E3D20794F66667365742026262074203C3D2077696E646F77486569676874202B20794F66667365743B0A2020202020207D0A0A20202020202066756E6374696F6E206D61696E2829207B0A202020202020202076617220';
wwv_flow_api.g_varchar2_table(57) := '65203D20646F63756D656E742E637265617465456C656D656E742822617564696F22293B0A2020202020202020652E7365744174747269627574652822636C617373222C206D61726B6572436C617373293B0A2020202020202020652E737263203D206D';
wwv_flow_api.g_varchar2_table(58) := '70335372633B0A2020202020202020652E6C6F6F70203D2066616C73653B0A2020202020202020652E696E6E657248544D4C203D2022203C703E496620796F75206172652072656164696E6720746869732C206974206973206265636175736520796F75';
wwv_flow_api.g_varchar2_table(59) := '722062726F7773657220646F6573206E6F7420737570706F72742074686520617564696F20656C656D656E742E205765207265636F6D6D656E64207468617420796F75206765742061206E65772062726F777365722E3C2F703E223B0A20202020202020';
wwv_flow_api.g_varchar2_table(60) := '20646F63756D656E742E626F64792E617070656E644368696C642865293B0A2020202020202020652E6164644576656E744C697374656E65722822656E646564222C2066756E6374696F6E2829207B0A2020202020202020202072656D6F7665416C6C53';
wwv_flow_api.g_varchar2_table(61) := '68616B654D65436C617373657328293B0A2020202020202020202072656D6F76654164646564456C656D656E747328293B0A20202020202020207D2C2074727565293B0A2020202020202020652E6164644576656E744C697374656E6572282263616E70';
wwv_flow_api.g_varchar2_table(62) := '6C6179222C2066756E6374696F6E2829207B0A2020202020202020202073657454696D656F75742866756E6374696F6E2829207B0A202020202020202020202020616464496D4669727374436C617373287374617274456C656D656E74293B0A20202020';
wwv_flow_api.g_varchar2_table(63) := '2020202020207D2C20353030293B0A2020202020202020202073657454696D656F75742866756E6374696F6E2829207B0A20202020202020202020202072656D6F7665416C6C5368616B654D65436C617373657328293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(64) := '666C61736845666665637428293B0A202020202020202020202020666F7220287661722065203D20303B2065203C204F2E6C656E6774683B20652B2B29207B0A20202020202020202020202020206164645368616B654D65436C617373284F5B655D293B';
wwv_flow_api.g_varchar2_table(65) := '0A2020202020202020202020207D0A202020202020202020207D2C203135353030293B0A20202020202020207D2C2074727565293B0A2020202020202020652E706C617928293B0A2020202020207D0A0A20202020202066756E6374696F6E2061646449';
wwv_flow_api.g_varchar2_table(66) := '6D4669727374436C617373286529207B0A2020202020202020652E636C6173734E616D65202B3D20222022202B207368616B654D65436C617373202B20222022202B20696D4669727374436C6173733B0A2020202020207D0A0A20202020202066756E63';
wwv_flow_api.g_varchar2_table(67) := '74696F6E206164645368616B654D65436C617373286529207B0A2020202020202020652E636C6173734E616D65202B3D20222022202B207368616B654D65436C617373202B20222022202B20766172436C61737365735B4D6174682E666C6F6F72284D61';
wwv_flow_api.g_varchar2_table(68) := '74682E72616E646F6D2829202A20766172436C61737365732E6C656E677468295D3B0A2020202020207D0A0A20202020202066756E6374696F6E2072656D6F7665416C6C5368616B654D65436C61737365732829207B0A20202020202020207661722065';
wwv_flow_api.g_varchar2_table(69) := '203D20646F63756D656E742E676574456C656D656E74734279436C6173734E616D65287368616B654D65436C617373293B0A20202020202020207661722074203D206E65772052656745787028225C5C6222202B207368616B654D65436C617373202B20';
wwv_flow_api.g_varchar2_table(70) := '225C5C6222293B0A2020202020202020666F722028766172206E203D20303B206E203C20652E6C656E6774683B29207B0A20202020202020202020655B6E5D2E636C6173734E616D65203D20655B6E5D2E636C6173734E616D652E7265706C6163652874';
wwv_flow_api.g_varchar2_table(71) := '2C202222293B0A20202020202020207D0A2020202020207D0A0A202020202020766172206D696E486569676874203D2033303B0A202020202020766172206D696E5769647468203D2033303B0A202020202020766172206D6178486569676874203D2033';
wwv_flow_api.g_varchar2_table(72) := '35303B0A202020202020766172206D61785769647468203D203335303B0A202020202020766172206D7033537263203D20222F2F73332E616D617A6F6E6177732E636F6D2F6D6F6F767765622D6D61726B6574696E672F706C617967726F756E642F6861';
wwv_flow_api.g_varchar2_table(73) := '726C656D2D7368616B652E6D7033223B0A202020202020766172207368616B654D65436C617373203D20226D772D6861726C656D5F7368616B655F6D65223B0A20202020202076617220696D4669727374436C617373203D2022696D5F6669727374223B';
wwv_flow_api.g_varchar2_table(74) := '0A20202020202076617220766172436C6173736573203D205B22696D5F6472756E6B222C2022696D5F62616B6564222C2022696D5F7472697070696E222C2022696D5F626C6F776E225D3B0A20202020202076617220666C617368436C617373203D2022';
wwv_flow_api.g_varchar2_table(75) := '6D772D7374726F62655F6C69676874223B0A202020202020766172207374796C65537263203D20222F2F73332E616D617A6F6E6177732E636F6D2F6D6F6F767765622D6D61726B6574696E672F706C617967726F756E642F6861726C656D2D7368616B65';
wwv_flow_api.g_varchar2_table(76) := '2D7374796C652E637373223B0A202020202020766172206D61726B6572436C617373203D20226D775F61646465645F637373223B0A2020202020207661722077696E646F77486569676874203D2067657457696E646F7748656967687428293B0A202020';
wwv_flow_api.g_varchar2_table(77) := '20202076617220794F6666736574203D2067657450616765594F666673657428293B0A2020202020207661722070616765456C656D656E7473203D20646F63756D656E742E676574456C656D656E747342795461674E616D6528222A22293B0A20202020';
wwv_flow_api.g_varchar2_table(78) := '2020766172207374617274456C656D656E74203D206E756C6C3B0A0A2020202020202F2F202D2D2D2D53746172747320686572652D2D2D2D0A202020202020666F722028766172204C203D20303B204C203C2070616765456C656D656E74732E6C656E67';
wwv_flow_api.g_varchar2_table(79) := '74683B204C2B2B29207B0A20202020202020207661722041203D2070616765456C656D656E74735B4C5D3B0A2020202020202020696620286973526967687453697A652841292026262069734F6E53637265656E28412929207B0A202020202020202020';
wwv_flow_api.g_varchar2_table(80) := '207374617274456C656D656E74203D20413B0A20202020202020202020627265616B3B0A20202020202020207D0A2020202020207D0A202020202020696620287374617274456C656D656E74203D3D3D206E756C6C29207B0A2020202020202020636F6E';
wwv_flow_api.g_varchar2_table(81) := '736F6C652E7761726E2822436F756C64206E6F742066696E642061206E6F6465206F66207468652072696768742073697A652E20506C6561736520747279206120646966666572656E7420706167652E22293B0A202020202020202072657475726E3B0A';
wwv_flow_api.g_varchar2_table(82) := '2020202020207D20656C7365207B0A2020202020202020636F6E736F6C652E6C6F672822466F756E6420737461727420656C656D656E743A20222C20412C202220776974682077696474682022202B2067657453697A652841292E7769647468202B2022';
wwv_flow_api.g_varchar2_table(83) := '2C206865696768742022202B2067657453697A652841292E686569676874202B20222C20616E64206120746F74616C2059206F6666736574206F662022202B2068656967687446726F6D546F70284129293B0A2020202020207D0A202020202020616464';
wwv_flow_api.g_varchar2_table(84) := '5374796C65536865657428293B0A2020202020206D61696E28293B0A202020202020766172204F203D205B5D3B0A202020202020666F722028766172204C203D20303B204C203C2070616765456C656D656E74732E6C656E6774683B204C2B2B29207B0A';
wwv_flow_api.g_varchar2_table(85) := '20202020202020207661722041203D2070616765456C656D656E74735B4C5D3B0A2020202020202020696620286973526967687453697A6528412929207B0A202020202020202020204F2E707573682841293B0A20202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(86) := '7D0A202020207D2928293B0A20207D2C0A20202F2A2A0A2020202A20506C7567696E2068616E646C65722066756E74696F6E2063616C6C65642066726F6D20504C2F53514C2044410A2020202A2F0A2020706C7567696E48616E646C65723A2066756E63';
wwv_flow_api.g_varchar2_table(87) := '74696F6E2829207B0A202020202F2F20706C7567696E20617474726962757465730A2020202076617220646154686973203D20746869733B0A2020202076617220616A61784964656E746966696572203D206176632E67416A61784964656E7469666965';
wwv_flow_api.g_varchar2_table(88) := '72203D206461546869732E616374696F6E2E616A61784964656E7469666965723B0A20202020766172206261736555726C203D206461546869732E616374696F6E2E61747472696275746530313B0A20202020766172207365727665724B6579203D2064';
wwv_flow_api.g_varchar2_table(89) := '61546869732E616374696F6E2E61747472696275746530323B0A2020202076617220757365726E616D65203D206461546869732E616374696F6E2E61747472696275746530333B0A202020207661722075736572416363657373546F6B656E203D206461';
wwv_flow_api.g_varchar2_table(90) := '546869732E616374696F6E2E61747472696275746530343B0A2020202076617220616C6C6F7753535055726C203D206461546869732E616374696F6E2E61747472696275746530353B0A0A202020202F2F206C6F6767696E670A20202020617065782E64';
wwv_flow_api.g_varchar2_table(91) := '656275672E6C6F6728276176632E706C7567696E48616E646C6572202D20616A61784964656E746966696572272C20616A61784964656E746966696572293B0A20202020617065782E64656275672E6C6F6728276176632E706C7567696E48616E646C65';
wwv_flow_api.g_varchar2_table(92) := '72202D206261736555726C272C206261736555726C293B0A20202020617065782E64656275672E6C6F6728276176632E706C7567696E48616E646C6572202D207365727665724B6579272C207365727665724B6579293B0A20202020617065782E646562';
wwv_flow_api.g_varchar2_table(93) := '75672E6C6F6728276176632E706C7567696E48616E646C6572202D20757365726E616D65272C20757365726E616D65293B0A20202020617065782E64656275672E6C6F6728276176632E706C7567696E48616E646C6572202D2075736572416363657373';
wwv_flow_api.g_varchar2_table(94) := '546F6B656E272C2075736572416363657373546F6B656E293B0A20202020617065782E64656275672E6C6F6728276176632E706C7567696E48616E646C6572202D20616C6C6F7753535055726C272C20616C6C6F7753535055726C293B0A0A202020202F';
wwv_flow_api.g_varchar2_table(95) := '2F20636F6E6E65637420776562736F636B65740A202020206176632E636F6E6E656374576562736F636B6574286261736555726C2C207365727665724B65792C20757365726E616D652C2075736572416363657373546F6B656E293B0A0A202020202F2F';
wwv_flow_api.g_varchar2_table(96) := '2068616E646C6520776562736F636B6574206576656E747320616E64206D657373616765730A202020206176632E68616E646C65576562736F636B657428616C6C6F7753535055726C293B0A20207D0A7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(32578018350417938)
,p_plugin_id=>wwv_flow_api.id(96392797084945955)
,p_file_name=>'avc.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '76617220246A73636F6D703D7B73636F70653A7B7D2C66696E64496E7465726E616C3A66756E6374696F6E28612C632C64297B6120696E7374616E63656F6620537472696E67262628613D537472696E67286129293B666F722876617220623D612E6C65';
wwv_flow_api.g_varchar2_table(2) := '6E6774682C653D303B653C623B652B2B297B76617220663D615B655D3B696628632E63616C6C28642C662C652C61292972657475726E7B693A652C763A667D7D72657475726E7B693A2D312C763A766F696420307D7D7D3B246A73636F6D702E64656669';
wwv_flow_api.g_varchar2_table(3) := '6E6550726F70657274793D2266756E6374696F6E223D3D747970656F66204F626A6563742E646566696E6550726F706572746965733F4F626A6563742E646566696E6550726F70657274793A66756E6374696F6E28612C632C64297B696628642E676574';
wwv_flow_api.g_varchar2_table(4) := '7C7C642E736574297468726F77206E657720547970654572726F72282245533320646F6573206E6F7420737570706F7274206765747465727320616E6420736574746572732E22293B61213D41727261792E70726F746F74797065262661213D4F626A65';
wwv_flow_api.g_varchar2_table(5) := '63742E70726F746F74797065262628615B635D3D642E76616C7565297D3B0A246A73636F6D702E676574476C6F62616C3D66756E6374696F6E2861297B72657475726E22756E646566696E656422213D747970656F662077696E646F77262677696E646F';
wwv_flow_api.g_varchar2_table(6) := '773D3D3D613F613A22756E646566696E656422213D747970656F6620676C6F62616C26266E756C6C213D676C6F62616C3F676C6F62616C3A617D3B246A73636F6D702E676C6F62616C3D246A73636F6D702E676574476C6F62616C2874686973293B246A';
wwv_flow_api.g_varchar2_table(7) := '73636F6D702E706F6C7966696C6C3D66756E6374696F6E28612C632C642C62297B69662863297B643D246A73636F6D702E676C6F62616C3B613D612E73706C697428222E22293B666F7228623D303B623C612E6C656E6774682D313B622B2B297B766172';
wwv_flow_api.g_varchar2_table(8) := '20653D615B625D3B6520696E20647C7C28645B655D3D7B7D293B643D645B655D7D613D615B612E6C656E6774682D315D3B623D645B615D3B633D632862293B63213D6226266E756C6C213D632626246A73636F6D702E646566696E6550726F7065727479';
wwv_flow_api.g_varchar2_table(9) := '28642C612C7B636F6E666967757261626C653A21302C7772697461626C653A21302C76616C75653A637D297D7D3B0A246A73636F6D702E706F6C7966696C6C282241727261792E70726F746F747970652E66696E64222C66756E6374696F6E2861297B72';
wwv_flow_api.g_varchar2_table(10) := '657475726E20613F613A66756E6374696F6E28612C64297B72657475726E20246A73636F6D702E66696E64496E7465726E616C28746869732C612C64292E767D7D2C226573362D696D706C222C2265733322293B0A766172206176633D7B67417663536F';
wwv_flow_api.g_varchar2_table(11) := '636B65743A6E756C6C2C67416A61784964656E7469666965723A6E756C6C2C636F6E6E656374576562736F636B65743A66756E6374696F6E28612C632C642C62297B76617220653D2476282270496E7374616E636522293B633D22757365726E616D653D';
wwv_flow_api.g_varchar2_table(12) := '222B642E746F4C6F7765724361736528292B22267365727665724B65793D222B632B222675736572416363657373546F6B656E3D222B622B22266170657853657373696F6E49643D222B653B617065782E64656275672E6C6F6728226176632E636F6E6E';
wwv_flow_api.g_varchar2_table(13) := '656374576562736F636B6574202D20636F6E6E656374537472696E67222C63293B6176632E67417663536F636B65743D696F2E636F6E6E65637428612B222F617663222C7B71756572793A637D297D2C68616E646C65576562736F636B65743A66756E63';
wwv_flow_api.g_varchar2_table(14) := '74696F6E2861297B76617220633D22222C643D2476282270496E7374616E636522293B6176632E67417663536F636B65742E6F6E28226D657373616765222C66756E6374696F6E2862297B617065782E64656275672E6C6F6728226176632E68616E646C';
wwv_flow_api.g_varchar2_table(15) := '65576562736F636B6574202D206D6573736167652064617461222C62293B617065782E6576656E742E747269676765722822626F6479222C226176632D776562736F636B65742D6D65737361676522293B696628224E41565F544F5F50414745223D3D0A';
wwv_flow_api.g_varchar2_table(16) := '622E747970652626622E70616765496429633D22663F703D222B2476282270466C6F77496422292B223A222B622E7061676549642B223A222B642B223A3A3A3A3A222C6176632E67657450726F70657255726C28632C612C66756E6374696F6E2861297B';
wwv_flow_api.g_varchar2_table(17) := '617065782E6E617669676174696F6E2E72656469726563742861297D293B656C736520696628224E41565F544F5F504147455F534541524348223D3D622E747970652626622E70616765496429633D22663F703D222B2476282270466C6F77496422292B';
wwv_flow_api.g_varchar2_table(18) := '223A222B622E7061676549642B223A222B642B223A3A3A222B622E736561726368506172616D2B622E73656172636856616C75652C6176632E67657450726F70657255726C28632C612C66756E6374696F6E2861297B617065782E6E617669676174696F';
wwv_flow_api.g_varchar2_table(19) := '6E2E72656469726563742861297D293B656C7365206966282243555252454E545F504147455F534541524348223D3D622E747970652626622E706167657329666F722876617220653D622E70616765732C663D303B663C652E6C656E6774683B662B2B29';
wwv_flow_api.g_varchar2_table(20) := '7B696628655B665D2E7061676549643D3D7061727365496E74282476282270466C6F77537465704964222929297B766172206B3D655B665D2E7365617263684669656C643B24282223222B6B292E76616C28622E73656172636856616C7565293B242822';
wwv_flow_api.g_varchar2_table(21) := '23222B0A6B292E706172656E747328222E612D4952522D73656172636822292E66696E6428222E612D4952522D627574746F6E2D2D73656172636822292E636C69636B28297D7D656C73652250415254595F4D4F4445223D3D622E747970652626617663';
wwv_flow_api.g_varchar2_table(22) := '2E70617274794D6F646528297D293B6176632E67417663536F636B65742E6F6E2822646973636F6E6E656374222C66756E6374696F6E28297B617065782E64656275672E6C6F6728226176632E68616E646C65576562736F636B6574202D20776562736F';
wwv_flow_api.g_varchar2_table(23) := '636B657420646973636F6E6E656374656422293B617065782E6576656E742E747269676765722822626F6479222C226176632D776562736F636B65742D646973636F6E6E65637422297D297D2C67657450726F70657255726C3A66756E6374696F6E2861';
wwv_flow_api.g_varchar2_table(24) := '2C632C64297B2259223D3D633F617065782E7365727665722E706C7567696E286176632E67416A61784964656E7469666965722C7B7830313A617D2C7B64617461547970653A226A736F6E222C737563636573733A66756E6374696F6E2862297B617065';
wwv_flow_api.g_varchar2_table(25) := '782E64656275672E6C6F6728226176632E67657450726F70657255726C202D20414A41582073756363657373222C62293B622E737563636573733F6428622E75726C293A642861297D2C6572726F723A66756E6374696F6E28622C63297B617065782E64';
wwv_flow_api.g_varchar2_table(26) := '656275672E6C6F6728226176632E67657450726F70657255726C202D20414A4158206572726F72222C0A63293B642861297D7D293A642861297D2C70617274794D6F64653A66756E6374696F6E28297B2866756E6374696F6E28297B66756E6374696F6E';
wwv_flow_api.g_varchar2_table(27) := '206128297B76617220613D646F63756D656E742E637265617465456C656D656E74282264697622293B612E7365744174747269627574652822636C617373222C75293B646F63756D656E742E626F64792E617070656E644368696C642861293B73657454';
wwv_flow_api.g_varchar2_table(28) := '696D656F75742866756E6374696F6E28297B646F63756D656E742E626F64792E72656D6F76654368696C642861297D2C313030297D66756E6374696F6E20632861297B72657475726E7B6865696768743A612E6F66667365744865696768742C77696474';
wwv_flow_api.g_varchar2_table(29) := '683A612E6F666673657457696474687D7D66756E6374696F6E20642861297B613D632861293B72657475726E20612E6865696768743E6B2626612E6865696768743C762626612E77696474683E742626612E77696474683C777D66756E6374696F6E2062';
wwv_flow_api.g_varchar2_table(30) := '2861297B666F722876617220623D303B613B29622B3D612E6F6666736574546F702C613D612E6F6666736574506172656E743B72657475726E20627D66756E6374696F6E20652861297B613D622861293B72657475726E20613E3D712626613C3D782B71';
wwv_flow_api.g_varchar2_table(31) := '7D66756E6374696F6E206628297B666F722876617220613D646F63756D656E742E676574456C656D656E74734279436C6173734E616D65286C292C0A623D6E65772052656745787028225C5C62222B6C2B225C5C6222293B303C612E6C656E6774683B29';
wwv_flow_api.g_varchar2_table(32) := '615B305D2E636C6173734E616D653D615B305D2E636C6173734E616D652E7265706C61636528622C2222297D766172206B3D33302C743D33302C763D3335302C773D3335302C6C3D226D772D6861726C656D5F7368616B655F6D65222C723D5B22696D5F';
wwv_flow_api.g_varchar2_table(33) := '6472756E6B222C22696D5F62616B6564222C22696D5F7472697070696E222C22696D5F626C6F776E225D2C753D226D772D7374726F62655F6C69676874222C783D66756E6374696F6E28297B76617220613D646F63756D656E742E646F63756D656E7445';
wwv_flow_api.g_varchar2_table(34) := '6C656D656E743B72657475726E2077696E646F772E696E6E657257696474683F77696E646F772E696E6E65724865696768743A6126262169734E614E28612E636C69656E74486569676874293F612E636C69656E744865696768743A307D28292C713B71';
wwv_flow_api.g_varchar2_table(35) := '3D77696E646F772E70616765594F66667365743F77696E646F772E70616765594F66667365743A4D6174682E6D617828646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C546F702C646F63756D656E742E626F64792E736372';
wwv_flow_api.g_varchar2_table(36) := '6F6C6C546F70293B666F7228766172206D3D646F63756D656E742E676574456C656D656E747342795461674E616D6528222A22292C6E3D6E756C6C2C683D0A303B683C6D2E6C656E6774683B682B2B297B76617220673D6D5B685D3B6966286428672926';
wwv_flow_api.g_varchar2_table(37) := '2665286729297B6E3D673B627265616B7D7D6966286E756C6C3D3D3D6E29636F6E736F6C652E7761726E2822436F756C64206E6F742066696E642061206E6F6465206F66207468652072696768742073697A652E20506C65617365207472792061206469';
wwv_flow_api.g_varchar2_table(38) := '66666572656E7420706167652E22293B656C73657B636F6E736F6C652E6C6F672822466F756E6420737461727420656C656D656E743A20222C672C22207769746820776964746820222B632867292E77696474682B222C2068656967687420222B632867';
wwv_flow_api.g_varchar2_table(39) := '292E6865696768742B222C20616E64206120746F74616C2059206F6666736574206F6620222B62286729293B2866756E6374696F6E28297B76617220613D646F63756D656E742E637265617465456C656D656E7428226C696E6B22293B612E7365744174';
wwv_flow_api.g_varchar2_table(40) := '74726962757465282274797065222C22746578742F63737322293B612E736574417474726962757465282272656C222C227374796C65736865657422293B612E736574417474726962757465282268726566222C222F2F73332E616D617A6F6E6177732E';
wwv_flow_api.g_varchar2_table(41) := '636F6D2F6D6F6F767765622D6D61726B6574696E672F706C617967726F756E642F6861726C656D2D7368616B652D7374796C652E63737322293B612E7365744174747269627574652822636C617373222C0A226D775F61646465645F63737322293B646F';
wwv_flow_api.g_varchar2_table(42) := '63756D656E742E626F64792E617070656E644368696C642861297D2928293B2866756E6374696F6E28297B76617220623D646F63756D656E742E637265617465456C656D656E742822617564696F22293B622E7365744174747269627574652822636C61';
wwv_flow_api.g_varchar2_table(43) := '7373222C226D775F61646465645F63737322293B622E7372633D222F2F73332E616D617A6F6E6177732E636F6D2F6D6F6F767765622D6D61726B6574696E672F706C617967726F756E642F6861726C656D2D7368616B652E6D7033223B622E6C6F6F703D';
wwv_flow_api.g_varchar2_table(44) := '21313B622E696E6E657248544D4C3D22203C703E496620796F75206172652072656164696E6720746869732C206974206973206265636175736520796F75722062726F7773657220646F6573206E6F7420737570706F72742074686520617564696F2065';
wwv_flow_api.g_varchar2_table(45) := '6C656D656E742E205765207265636F6D6D656E64207468617420796F75206765742061206E65772062726F777365722E3C2F703E223B646F63756D656E742E626F64792E617070656E644368696C642862293B622E6164644576656E744C697374656E65';
wwv_flow_api.g_varchar2_table(46) := '722822656E646564222C66756E6374696F6E28297B6628293B666F722876617220613D646F63756D656E742E676574456C656D656E74734279436C6173734E616D6528226D775F61646465645F63737322292C0A623D303B623C612E6C656E6774683B62';
wwv_flow_api.g_varchar2_table(47) := '2B2B29646F63756D656E742E626F64792E72656D6F76654368696C6428615B625D297D2C2130293B622E6164644576656E744C697374656E6572282263616E706C6179222C66756E6374696F6E28297B73657454696D656F75742866756E6374696F6E28';
wwv_flow_api.g_varchar2_table(48) := '297B6E2E636C6173734E616D652B3D2220222B6C2B2220696D5F6669727374227D2C353030293B73657454696D656F75742866756E6374696F6E28297B6628293B6128293B666F722876617220623D303B623C702E6C656E6774683B622B2B29705B625D';
wwv_flow_api.g_varchar2_table(49) := '2E636C6173734E616D652B3D2220222B6C2B2220222B725B4D6174682E666C6F6F72284D6174682E72616E646F6D28292A722E6C656E677468295D7D2C3135353030297D2C2130293B622E706C617928297D2928293B666F722876617220703D5B5D2C68';
wwv_flow_api.g_varchar2_table(50) := '3D303B683C6D2E6C656E6774683B682B2B29673D6D5B685D2C642867292626702E707573682867297D7D2928297D2C706C7567696E48616E646C65723A66756E6374696F6E28297B76617220613D6176632E67416A61784964656E7469666965723D7468';
wwv_flow_api.g_varchar2_table(51) := '69732E616374696F6E2E616A61784964656E7469666965722C633D746869732E616374696F6E2E61747472696275746530312C643D746869732E616374696F6E2E61747472696275746530322C623D746869732E616374696F6E2E617474726962757465';
wwv_flow_api.g_varchar2_table(52) := '30332C0A653D746869732E616374696F6E2E61747472696275746530342C663D746869732E616374696F6E2E61747472696275746530353B617065782E64656275672E6C6F6728226176632E706C7567696E48616E646C6572202D20616A61784964656E';
wwv_flow_api.g_varchar2_table(53) := '746966696572222C61293B617065782E64656275672E6C6F6728226176632E706C7567696E48616E646C6572202D206261736555726C222C63293B617065782E64656275672E6C6F6728226176632E706C7567696E48616E646C6572202D207365727665';
wwv_flow_api.g_varchar2_table(54) := '724B6579222C64293B617065782E64656275672E6C6F6728226176632E706C7567696E48616E646C6572202D20757365726E616D65222C62293B617065782E64656275672E6C6F6728226176632E706C7567696E48616E646C6572202D20757365724163';
wwv_flow_api.g_varchar2_table(55) := '63657373546F6B656E222C65293B617065782E64656275672E6C6F6728226176632E706C7567696E48616E646C6572202D20616C6C6F7753535055726C222C66293B6176632E636F6E6E656374576562736F636B657428632C642C622C65293B6176632E';
wwv_flow_api.g_varchar2_table(56) := '68616E646C65576562736F636B65742866297D7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(32578318014417948)
,p_plugin_id=>wwv_flow_api.id(96392797084945955)
,p_file_name=>'avc.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2166756E6374696F6E28742C65297B226F626A656374223D3D747970656F66206578706F7274732626226F626A656374223D3D747970656F66206D6F64756C653F6D6F64756C652E6578706F7274733D6528293A2266756E6374696F6E223D3D74797065';
wwv_flow_api.g_varchar2_table(2) := '6F6620646566696E652626646566696E652E616D643F646566696E65285B5D2C65293A226F626A656374223D3D747970656F66206578706F7274733F6578706F7274732E696F3D6528293A742E696F3D6528297D28746869732C66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(3) := '7B72657475726E2066756E6374696F6E2874297B66756E6374696F6E20652872297B6966286E5B725D2972657475726E206E5B725D2E6578706F7274733B766172206F3D6E5B725D3D7B6578706F7274733A7B7D2C69643A722C6C6F616465643A21317D';
wwv_flow_api.g_varchar2_table(4) := '3B72657475726E20745B725D2E63616C6C286F2E6578706F7274732C6F2C6F2E6578706F7274732C65292C6F2E6C6F616465643D21302C6F2E6578706F7274737D766172206E3D7B7D3B72657475726E20652E6D3D742C652E633D6E2C652E703D22222C';
wwv_flow_api.g_varchar2_table(5) := '652830297D285B66756E6374696F6E28742C652C6E297B2275736520737472696374223B66756E6374696F6E207228742C65297B226F626A656374223D3D3D2822756E646566696E6564223D3D747970656F6620743F22756E646566696E6564223A6F28';
wwv_flow_api.g_varchar2_table(6) := '742929262628653D742C743D766F69642030292C653D657C7C7B7D3B766172206E2C723D692874292C733D722E736F757263652C753D722E69642C683D722E706174682C663D705B755D26266820696E20705B755D2E6E7370732C6C3D652E666F726365';
wwv_flow_api.g_varchar2_table(7) := '4E65777C7C655B22666F726365206E657720636F6E6E656374696F6E225D7C7C21313D3D3D652E6D756C7469706C65787C7C663B72657475726E206C3F2863282269676E6F72696E6720736F636B657420636163686520666F72202573222C73292C6E3D';
wwv_flow_api.g_varchar2_table(8) := '6128732C6529293A28705B755D7C7C286328226E657720696F20696E7374616E636520666F72202573222C73292C705B755D3D6128732C6529292C6E3D705B755D292C722E7175657279262621652E7175657279262628652E71756572793D722E717565';
wwv_flow_api.g_varchar2_table(9) := '7279292C6E2E736F636B657428722E706174682C65297D766172206F3D2266756E6374696F6E223D3D747970656F662053796D626F6C26262273796D626F6C223D3D747970656F662053796D626F6C2E6974657261746F723F66756E6374696F6E287429';
wwv_flow_api.g_varchar2_table(10) := '7B72657475726E20747970656F6620747D3A66756E6374696F6E2874297B72657475726E207426262266756E6374696F6E223D3D747970656F662053796D626F6C2626742E636F6E7374727563746F723D3D3D53796D626F6C262674213D3D53796D626F';
wwv_flow_api.g_varchar2_table(11) := '6C2E70726F746F747970653F2273796D626F6C223A747970656F6620747D2C693D6E2831292C733D6E2837292C613D6E283133292C633D6E2833292822736F636B65742E696F2D636C69656E7422293B742E6578706F7274733D653D723B76617220703D';
wwv_flow_api.g_varchar2_table(12) := '652E6D616E61676572733D7B7D3B652E70726F746F636F6C3D732E70726F746F636F6C2C652E636F6E6E6563743D722C652E4D616E616765723D6E283133292C652E536F636B65743D6E283337297D2C66756E6374696F6E28742C652C6E297B2866756E';
wwv_flow_api.g_varchar2_table(13) := '6374696F6E2865297B2275736520737472696374223B66756E6374696F6E207228742C6E297B76617220723D743B6E3D6E7C7C652E6C6F636174696F6E2C6E756C6C3D3D74262628743D6E2E70726F746F636F6C2B222F2F222B6E2E686F7374292C2273';
wwv_flow_api.g_varchar2_table(14) := '7472696E67223D3D747970656F662074262628222F223D3D3D742E636861724174283029262628743D222F223D3D3D742E6368617241742831293F6E2E70726F746F636F6C2B743A6E2E686F73742B74292C2F5E2868747470733F7C7773733F293A5C2F';
wwv_flow_api.g_varchar2_table(15) := '5C2F2F2E746573742874297C7C2869282270726F746F636F6C2D6C6573732075726C202573222C74292C743D22756E646566696E656422213D747970656F66206E3F6E2E70726F746F636F6C2B222F2F222B743A2268747470733A2F2F222B74292C6928';
wwv_flow_api.g_varchar2_table(16) := '227061727365202573222C74292C723D6F287429292C722E706F72747C7C282F5E28687474707C777329242F2E7465737428722E70726F746F636F6C293F722E706F72743D223830223A2F5E28687474707C77732973242F2E7465737428722E70726F74';
wwv_flow_api.g_varchar2_table(17) := '6F636F6C29262628722E706F72743D223434332229292C722E706174683D722E706174687C7C222F223B76617220733D722E686F73742E696E6465784F6628223A2229213D3D2D312C613D733F225B222B722E686F73742B225D223A722E686F73743B72';
wwv_flow_api.g_varchar2_table(18) := '657475726E20722E69643D722E70726F746F636F6C2B223A2F2F222B612B223A222B722E706F72742C722E687265663D722E70726F746F636F6C2B223A2F2F222B612B286E26266E2E706F72743D3D3D722E706F72743F22223A223A222B722E706F7274';
wwv_flow_api.g_varchar2_table(19) := '292C727D766172206F3D6E2832292C693D6E2833292822736F636B65742E696F2D636C69656E743A75726C22293B742E6578706F7274733D727D292E63616C6C28652C66756E6374696F6E28297B72657475726E20746869737D2829297D2C66756E6374';
wwv_flow_api.g_varchar2_table(20) := '696F6E28742C65297B766172206E3D2F5E283F3A283F215B5E3A405D2B3A5B5E3A405C2F5D2A402928687474707C68747470737C77737C777373293A5C2F5C2F293F28283F3A28285B5E3A405D2A29283F3A3A285B5E3A405D2A29293F293F40293F2828';
wwv_flow_api.g_varchar2_table(21) := '3F3A5B612D66302D395D7B302C347D3A297B322C377D5B612D66302D395D7B302C347D7C5B5E3A5C2F3F235D2A29283F3A3A285C642A29293F292828285C2F283F3A5B5E3F235D283F215B5E3F235C2F5D2A5C2E5B5E3F235C2F2E5D2B283F3A5B3F235D';
wwv_flow_api.g_varchar2_table(22) := '7C242929292A5C2F3F293F285B5E3F235C2F5D2A2929283F3A5C3F285B5E235D2A29293F283F3A23282E2A29293F292F2C723D5B22736F75726365222C2270726F746F636F6C222C22617574686F72697479222C2275736572496E666F222C2275736572';
wwv_flow_api.g_varchar2_table(23) := '222C2270617373776F7264222C22686F7374222C22706F7274222C2272656C6174697665222C2270617468222C226469726563746F7279222C2266696C65222C227175657279222C22616E63686F72225D3B742E6578706F7274733D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(24) := '2874297B76617220653D742C6F3D742E696E6465784F6628225B22292C693D742E696E6465784F6628225D22293B6F213D2D31262669213D2D31262628743D742E737562737472696E6728302C6F292B742E737562737472696E67286F2C69292E726570';
wwv_flow_api.g_varchar2_table(25) := '6C616365282F3A2F672C223B22292B742E737562737472696E6728692C742E6C656E67746829293B666F722876617220733D6E2E6578656328747C7C2222292C613D7B7D2C633D31343B632D2D3B29615B725B635D5D3D735B635D7C7C22223B72657475';
wwv_flow_api.g_varchar2_table(26) := '726E206F213D2D31262669213D2D31262628612E736F757263653D652C612E686F73743D612E686F73742E737562737472696E6728312C612E686F73742E6C656E6774682D31292E7265706C616365282F3B2F672C223A22292C612E617574686F726974';
wwv_flow_api.g_varchar2_table(27) := '793D612E617574686F726974792E7265706C61636528225B222C2222292E7265706C61636528225D222C2222292E7265706C616365282F3B2F672C223A22292C612E697076367572693D2130292C617D7D2C66756E6374696F6E28742C652C6E297B2866';
wwv_flow_api.g_varchar2_table(28) := '756E6374696F6E2872297B66756E6374696F6E206F28297B72657475726E212822756E646566696E6564223D3D747970656F662077696E646F777C7C2177696E646F772E70726F636573737C7C2272656E646572657222213D3D77696E646F772E70726F';
wwv_flow_api.g_varchar2_table(29) := '636573732E74797065297C7C2822756E646566696E656422213D747970656F6620646F63756D656E742626646F63756D656E742E646F63756D656E74456C656D656E742626646F63756D656E742E646F63756D656E74456C656D656E742E7374796C6526';
wwv_flow_api.g_varchar2_table(30) := '26646F63756D656E742E646F63756D656E74456C656D656E742E7374796C652E5765626B6974417070656172616E63657C7C22756E646566696E656422213D747970656F662077696E646F77262677696E646F772E636F6E736F6C6526262877696E646F';
wwv_flow_api.g_varchar2_table(31) := '772E636F6E736F6C652E666972656275677C7C77696E646F772E636F6E736F6C652E657863657074696F6E262677696E646F772E636F6E736F6C652E7461626C65297C7C22756E646566696E656422213D747970656F66206E6176696761746F7226266E';
wwv_flow_api.g_varchar2_table(32) := '6176696761746F722E757365724167656E7426266E6176696761746F722E757365724167656E742E746F4C6F7765724361736528292E6D61746368282F66697265666F785C2F285C642B292F2926267061727365496E74285265674578702E24312C3130';
wwv_flow_api.g_varchar2_table(33) := '293E3D33317C7C22756E646566696E656422213D747970656F66206E6176696761746F7226266E6176696761746F722E757365724167656E7426266E6176696761746F722E757365724167656E742E746F4C6F7765724361736528292E6D61746368282F';
wwv_flow_api.g_varchar2_table(34) := '6170706C657765626B69745C2F285C642B292F29297D66756E6374696F6E20692874297B766172206E3D746869732E757365436F6C6F72733B696628745B305D3D286E3F222563223A2222292B746869732E6E616D6573706163652B286E3F2220256322';
wwv_flow_api.g_varchar2_table(35) := '3A222022292B745B305D2B286E3F22256320223A222022292B222B222B652E68756D616E697A6528746869732E64696666292C6E297B76617220723D22636F6C6F723A20222B746869732E636F6C6F723B742E73706C69636528312C302C722C22636F6C';
wwv_flow_api.g_varchar2_table(36) := '6F723A20696E686572697422293B766172206F3D302C693D303B745B305D2E7265706C616365282F255B612D7A412D5A255D2F672C66756E6374696F6E2874297B22252522213D3D742626286F2B2B2C222563223D3D3D74262628693D6F29297D292C74';
wwv_flow_api.g_varchar2_table(37) := '2E73706C69636528692C302C72297D7D66756E6374696F6E207328297B72657475726E226F626A656374223D3D747970656F6620636F6E736F6C652626636F6E736F6C652E6C6F67262646756E6374696F6E2E70726F746F747970652E6170706C792E63';
wwv_flow_api.g_varchar2_table(38) := '616C6C28636F6E736F6C652E6C6F672C636F6E736F6C652C617267756D656E7473297D66756E6374696F6E20612874297B7472797B6E756C6C3D3D743F652E73746F726167652E72656D6F76654974656D2822646562756722293A652E73746F72616765';
wwv_flow_api.g_varchar2_table(39) := '2E64656275673D747D6361746368286E297B7D7D66756E6374696F6E206328297B76617220743B7472797B743D652E73746F726167652E64656275677D6361746368286E297B7D72657475726E2174262622756E646566696E656422213D747970656F66';
wwv_flow_api.g_varchar2_table(40) := '2072262622656E7622696E2072262628743D722E656E762E4445425547292C747D66756E6374696F6E207028297B7472797B72657475726E2077696E646F772E6C6F63616C53746F726167657D63617463682874297B7D7D653D742E6578706F7274733D';
wwv_flow_api.g_varchar2_table(41) := '6E2835292C652E6C6F673D732C652E666F726D6174417267733D692C652E736176653D612C652E6C6F61643D632C652E757365436F6C6F72733D6F2C652E73746F726167653D22756E646566696E656422213D747970656F66206368726F6D6526262275';
wwv_flow_api.g_varchar2_table(42) := '6E646566696E656422213D747970656F66206368726F6D652E73746F726167653F6368726F6D652E73746F726167652E6C6F63616C3A7028292C652E636F6C6F72733D5B226C69676874736561677265656E222C22666F72657374677265656E222C2267';
wwv_flow_api.g_varchar2_table(43) := '6F6C64656E726F64222C22646F64676572626C7565222C226461726B6F7263686964222C226372696D736F6E225D2C652E666F726D6174746572732E6A3D66756E6374696F6E2874297B7472797B72657475726E204A534F4E2E737472696E6769667928';
wwv_flow_api.g_varchar2_table(44) := '74297D63617463682865297B72657475726E225B556E65787065637465644A534F4E50617273654572726F725D3A20222B652E6D6573736167657D7D2C652E656E61626C6528632829297D292E63616C6C28652C6E283429297D2C66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(45) := '742C65297B66756E6374696F6E206E28297B7468726F77206E6577204572726F72282273657454696D656F757420686173206E6F74206265656E20646566696E656422297D66756E6374696F6E207228297B7468726F77206E6577204572726F72282263';
wwv_flow_api.g_varchar2_table(46) := '6C65617254696D656F757420686173206E6F74206265656E20646566696E656422297D66756E6374696F6E206F2874297B696628753D3D3D73657454696D656F75742972657475726E2073657454696D656F757428742C30293B69662828753D3D3D6E7C';
wwv_flow_api.g_varchar2_table(47) := '7C217529262673657454696D656F75742972657475726E20753D73657454696D656F75742C73657454696D656F757428742C30293B7472797B72657475726E207528742C30297D63617463682865297B7472797B72657475726E20752E63616C6C286E75';
wwv_flow_api.g_varchar2_table(48) := '6C6C2C742C30297D63617463682865297B72657475726E20752E63616C6C28746869732C742C30297D7D7D66756E6374696F6E20692874297B696628683D3D3D636C65617254696D656F75742972657475726E20636C65617254696D656F75742874293B';
wwv_flow_api.g_varchar2_table(49) := '69662828683D3D3D727C7C2168292626636C65617254696D656F75742972657475726E20683D636C65617254696D656F75742C636C65617254696D656F75742874293B7472797B72657475726E20682874297D63617463682865297B7472797B72657475';
wwv_flow_api.g_varchar2_table(50) := '726E20682E63616C6C286E756C6C2C74297D63617463682865297B72657475726E20682E63616C6C28746869732C74297D7D7D66756E6374696F6E207328297B7926266C262628793D21312C6C2E6C656E6774683F643D6C2E636F6E6361742864293A6D';
wwv_flow_api.g_varchar2_table(51) := '3D2D312C642E6C656E6774682626612829297D66756E6374696F6E206128297B6966282179297B76617220743D6F2873293B793D21303B666F722876617220653D642E6C656E6774683B653B297B666F72286C3D642C643D5B5D3B2B2B6D3C653B296C26';
wwv_flow_api.g_varchar2_table(52) := '266C5B6D5D2E72756E28293B6D3D2D312C653D642E6C656E6774687D6C3D6E756C6C2C793D21312C692874297D7D66756E6374696F6E206328742C65297B746869732E66756E3D742C746869732E61727261793D657D66756E6374696F6E207028297B7D';
wwv_flow_api.g_varchar2_table(53) := '76617220752C682C663D742E6578706F7274733D7B7D3B2166756E6374696F6E28297B7472797B753D2266756E6374696F6E223D3D747970656F662073657454696D656F75743F73657454696D656F75743A6E7D63617463682874297B753D6E7D747279';
wwv_flow_api.g_varchar2_table(54) := '7B683D2266756E6374696F6E223D3D747970656F6620636C65617254696D656F75743F636C65617254696D656F75743A727D63617463682874297B683D727D7D28293B766172206C2C643D5B5D2C793D21312C6D3D2D313B662E6E6578745469636B3D66';
wwv_flow_api.g_varchar2_table(55) := '756E6374696F6E2874297B76617220653D6E657720417272617928617267756D656E74732E6C656E6774682D31293B696628617267756D656E74732E6C656E6774683E3129666F7228766172206E3D313B6E3C617267756D656E74732E6C656E6774683B';
wwv_flow_api.g_varchar2_table(56) := '6E2B2B29655B6E2D315D3D617267756D656E74735B6E5D3B642E70757368286E6577206328742C6529292C31213D3D642E6C656E6774687C7C797C7C6F2861297D2C632E70726F746F747970652E72756E3D66756E6374696F6E28297B746869732E6675';
wwv_flow_api.g_varchar2_table(57) := '6E2E6170706C79286E756C6C2C746869732E6172726179297D2C662E7469746C653D2262726F77736572222C662E62726F777365723D21302C662E656E763D7B7D2C662E617267763D5B5D2C662E76657273696F6E3D22222C662E76657273696F6E733D';
wwv_flow_api.g_varchar2_table(58) := '7B7D2C662E6F6E3D702C662E6164644C697374656E65723D702C662E6F6E63653D702C662E6F66663D702C662E72656D6F76654C697374656E65723D702C662E72656D6F7665416C6C4C697374656E6572733D702C662E656D69743D702C662E70726570';
wwv_flow_api.g_varchar2_table(59) := '656E644C697374656E65723D702C662E70726570656E644F6E63654C697374656E65723D702C662E6C697374656E6572733D66756E6374696F6E2874297B72657475726E5B5D7D2C662E62696E64696E673D66756E6374696F6E2874297B7468726F7720';
wwv_flow_api.g_varchar2_table(60) := '6E6577204572726F72282270726F636573732E62696E64696E67206973206E6F7420737570706F7274656422297D2C662E6377643D66756E6374696F6E28297B72657475726E222F227D2C662E63686469723D66756E6374696F6E2874297B7468726F77';
wwv_flow_api.g_varchar2_table(61) := '206E6577204572726F72282270726F636573732E6368646972206973206E6F7420737570706F7274656422297D2C662E756D61736B3D66756E6374696F6E28297B72657475726E20307D7D2C66756E6374696F6E28742C652C6E297B66756E6374696F6E';
wwv_flow_api.g_varchar2_table(62) := '20722874297B766172206E2C723D303B666F72286E20696E207429723D28723C3C35292D722B742E63686172436F64654174286E292C727C3D303B72657475726E20652E636F6C6F72735B4D6174682E61627328722925652E636F6C6F72732E6C656E67';
wwv_flow_api.g_varchar2_table(63) := '74685D7D66756E6374696F6E206F2874297B66756E6374696F6E206E28297B6966286E2E656E61626C6564297B76617220743D6E2C723D2B6E657720446174652C6F3D722D28707C7C72293B742E646966663D6F2C742E707265763D702C742E63757272';
wwv_flow_api.g_varchar2_table(64) := '3D722C703D723B666F722876617220693D6E657720417272617928617267756D656E74732E6C656E677468292C733D303B733C692E6C656E6774683B732B2B29695B735D3D617267756D656E74735B735D3B695B305D3D652E636F6572636528695B305D';
wwv_flow_api.g_varchar2_table(65) := '292C22737472696E6722213D747970656F6620695B305D2626692E756E73686966742822254F22293B76617220613D303B695B305D3D695B305D2E7265706C616365282F25285B612D7A412D5A255D292F672C66756E6374696F6E286E2C72297B696628';
wwv_flow_api.g_varchar2_table(66) := '222525223D3D3D6E2972657475726E206E3B612B2B3B766172206F3D652E666F726D6174746572735B725D3B6966282266756E6374696F6E223D3D747970656F66206F297B76617220733D695B615D3B6E3D6F2E63616C6C28742C73292C692E73706C69';
wwv_flow_api.g_varchar2_table(67) := '636528612C31292C612D2D7D72657475726E206E7D292C652E666F726D6174417267732E63616C6C28742C69293B76617220633D6E2E6C6F677C7C652E6C6F677C7C636F6E736F6C652E6C6F672E62696E6428636F6E736F6C65293B632E6170706C7928';
wwv_flow_api.g_varchar2_table(68) := '742C69297D7D72657475726E206E2E6E616D6573706163653D742C6E2E656E61626C65643D652E656E61626C65642874292C6E2E757365436F6C6F72733D652E757365436F6C6F727328292C6E2E636F6C6F723D722874292C2266756E6374696F6E223D';
wwv_flow_api.g_varchar2_table(69) := '3D747970656F6620652E696E69742626652E696E6974286E292C6E7D66756E6374696F6E20692874297B652E736176652874292C652E6E616D65733D5B5D2C652E736B6970733D5B5D3B666F7228766172206E3D2822737472696E67223D3D747970656F';
wwv_flow_api.g_varchar2_table(70) := '6620743F743A2222292E73706C6974282F5B5C732C5D2B2F292C723D6E2E6C656E6774682C6F3D303B6F3C723B6F2B2B296E5B6F5D262628743D6E5B6F5D2E7265706C616365282F5C2A2F672C222E2A3F22292C222D223D3D3D745B305D3F652E736B69';
wwv_flow_api.g_varchar2_table(71) := '70732E70757368286E65772052656745787028225E222B742E7375627374722831292B22242229293A652E6E616D65732E70757368286E65772052656745787028225E222B742B2224222929297D66756E6374696F6E207328297B652E656E61626C6528';
wwv_flow_api.g_varchar2_table(72) := '2222297D66756E6374696F6E20612874297B766172206E2C723B666F72286E3D302C723D652E736B6970732E6C656E6774683B6E3C723B6E2B2B29696628652E736B6970735B6E5D2E746573742874292972657475726E21313B666F72286E3D302C723D';
wwv_flow_api.g_varchar2_table(73) := '652E6E616D65732E6C656E6774683B6E3C723B6E2B2B29696628652E6E616D65735B6E5D2E746573742874292972657475726E21303B72657475726E21317D66756E6374696F6E20632874297B72657475726E207420696E7374616E63656F6620457272';
wwv_flow_api.g_varchar2_table(74) := '6F723F742E737461636B7C7C742E6D6573736167653A747D653D742E6578706F7274733D6F2E64656275673D6F5B2264656661756C74225D3D6F2C652E636F657263653D632C652E64697361626C653D732C652E656E61626C653D692C652E656E61626C';
wwv_flow_api.g_varchar2_table(75) := '65643D612C652E68756D616E697A653D6E2836292C652E6E616D65733D5B5D2C652E736B6970733D5B5D2C652E666F726D6174746572733D7B7D3B76617220707D2C66756E6374696F6E28742C65297B66756E6374696F6E206E2874297B696628743D53';
wwv_flow_api.g_varchar2_table(76) := '7472696E672874292C2128742E6C656E6774683E31303029297B76617220653D2F5E28283F3A5C642B293F5C2E3F5C642B29202A286D696C6C697365636F6E64733F7C6D736563733F7C6D737C7365636F6E64733F7C736563733F7C737C6D696E757465';
wwv_flow_api.g_varchar2_table(77) := '733F7C6D696E733F7C6D7C686F7572733F7C6872733F7C687C646179733F7C647C79656172733F7C7972733F7C79293F242F692E657865632874293B69662865297B766172206E3D7061727365466C6F617428655B315D292C723D28655B325D7C7C226D';
wwv_flow_api.g_varchar2_table(78) := '7322292E746F4C6F7765724361736528293B7377697463682872297B63617365227965617273223A636173652279656172223A6361736522797273223A63617365227972223A636173652279223A72657475726E206E2A753B636173652264617973223A';
wwv_flow_api.g_varchar2_table(79) := '6361736522646179223A636173652264223A72657475726E206E2A703B6361736522686F757273223A6361736522686F7572223A6361736522687273223A63617365226872223A636173652268223A72657475726E206E2A633B63617365226D696E7574';
wwv_flow_api.g_varchar2_table(80) := '6573223A63617365226D696E757465223A63617365226D696E73223A63617365226D696E223A63617365226D223A72657475726E206E2A613B63617365227365636F6E6473223A63617365227365636F6E64223A636173652273656373223A6361736522';
wwv_flow_api.g_varchar2_table(81) := '736563223A636173652273223A72657475726E206E2A733B63617365226D696C6C697365636F6E6473223A63617365226D696C6C697365636F6E64223A63617365226D73656373223A63617365226D736563223A63617365226D73223A72657475726E20';
wwv_flow_api.g_varchar2_table(82) := '6E3B64656661756C743A72657475726E7D7D7D7D66756E6374696F6E20722874297B72657475726E20743E3D703F4D6174682E726F756E6428742F70292B2264223A743E3D633F4D6174682E726F756E6428742F63292B2268223A743E3D613F4D617468';
wwv_flow_api.g_varchar2_table(83) := '2E726F756E6428742F61292B226D223A743E3D733F4D6174682E726F756E6428742F73292B2273223A742B226D73227D66756E6374696F6E206F2874297B72657475726E206928742C702C2264617922297C7C6928742C632C22686F757222297C7C6928';
wwv_flow_api.g_varchar2_table(84) := '742C612C226D696E75746522297C7C6928742C732C227365636F6E6422297C7C742B22206D73227D66756E6374696F6E206928742C652C6E297B6966282128743C65292972657475726E20743C312E352A653F4D6174682E666C6F6F7228742F65292B22';
wwv_flow_api.g_varchar2_table(85) := '20222B6E3A4D6174682E6365696C28742F65292B2220222B6E2B2273227D76617220733D3165332C613D36302A732C633D36302A612C703D32342A632C753D3336352E32352A703B742E6578706F7274733D66756E6374696F6E28742C65297B653D657C';
wwv_flow_api.g_varchar2_table(86) := '7C7B7D3B76617220693D747970656F6620743B69662822737472696E67223D3D3D692626742E6C656E6774683E302972657475726E206E2874293B696628226E756D626572223D3D3D69262669734E614E2874293D3D3D21312972657475726E20655B22';
wwv_flow_api.g_varchar2_table(87) := '6C6F6E67225D3F6F2874293A722874293B7468726F77206E6577204572726F72282276616C206973206E6F742061206E6F6E2D656D70747920737472696E67206F7220612076616C6964206E756D6265722E2076616C3D222B4A534F4E2E737472696E67';
wwv_flow_api.g_varchar2_table(88) := '696679287429297D7D2C66756E6374696F6E28742C652C6E297B66756E6374696F6E207228297B7D66756E6374696F6E206F2874297B766172206E3D22222B742E747970653B72657475726E20652E42494E4152595F4556454E54213D3D742E74797065';
wwv_flow_api.g_varchar2_table(89) := '2626652E42494E4152595F41434B213D3D742E747970657C7C286E2B3D742E6174746163686D656E74732B222D22292C742E6E73702626222F22213D3D742E6E73702626286E2B3D742E6E73702B222C22292C6E756C6C213D742E69642626286E2B3D74';
wwv_flow_api.g_varchar2_table(90) := '2E6964292C6E756C6C213D742E646174612626286E2B3D4A534F4E2E737472696E6769667928742E6461746129292C682822656E636F64656420256A206173202573222C742C6E292C6E7D66756E6374696F6E206928742C65297B66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(91) := '6E2874297B766172206E3D642E6465636F6E7374727563745061636B65742874292C723D6F286E2E7061636B6574292C693D6E2E627566666572733B692E756E73686966742872292C652869297D642E72656D6F7665426C6F627328742C6E297D66756E';
wwv_flow_api.g_varchar2_table(92) := '6374696F6E207328297B746869732E7265636F6E7374727563746F723D6E756C6C7D66756E6374696F6E20612874297B766172206E3D302C723D7B747970653A4E756D62657228742E636861724174283029297D3B6966286E756C6C3D3D652E74797065';
wwv_flow_api.g_varchar2_table(93) := '735B722E747970655D2972657475726E207528293B696628652E42494E4152595F4556454E543D3D3D722E747970657C7C652E42494E4152595F41434B3D3D3D722E74797065297B666F7228766172206F3D22223B222D22213D3D742E63686172417428';
wwv_flow_api.g_varchar2_table(94) := '2B2B6E292626286F2B3D742E636861724174286E292C6E213D742E6C656E677468293B293B6966286F213D4E756D626572286F297C7C222D22213D3D742E636861724174286E29297468726F77206E6577204572726F722822496C6C6567616C20617474';
wwv_flow_api.g_varchar2_table(95) := '6163686D656E747322293B722E6174746163686D656E74733D4E756D626572286F297D696628222F223D3D3D742E636861724174286E2B312929666F7228722E6E73703D22223B2B2B6E3B297B76617220693D742E636861724174286E293B696628222C';
wwv_flow_api.g_varchar2_table(96) := '223D3D3D6929627265616B3B696628722E6E73702B3D692C6E3D3D3D742E6C656E67746829627265616B7D656C736520722E6E73703D222F223B76617220733D742E636861724174286E2B31293B6966282222213D3D7326264E756D6265722873293D3D';
wwv_flow_api.g_varchar2_table(97) := '73297B666F7228722E69643D22223B2B2B6E3B297B76617220693D742E636861724174286E293B6966286E756C6C3D3D697C7C4E756D626572286929213D69297B2D2D6E3B627265616B7D696628722E69642B3D742E636861724174286E292C6E3D3D3D';
wwv_flow_api.g_varchar2_table(98) := '742E6C656E67746829627265616B7D722E69643D4E756D62657228722E6964297D72657475726E20742E636861724174282B2B6E29262628723D6328722C742E737562737472286E2929292C6828226465636F64656420257320617320256A222C742C72';
wwv_flow_api.g_varchar2_table(99) := '292C727D66756E6374696F6E206328742C65297B7472797B742E646174613D4A534F4E2E70617273652865297D6361746368286E297B72657475726E207528297D72657475726E20747D66756E6374696F6E20702874297B746869732E7265636F6E5061';
wwv_flow_api.g_varchar2_table(100) := '636B3D742C746869732E627566666572733D5B5D7D66756E6374696F6E207528297B72657475726E7B747970653A652E4552524F522C646174613A22706172736572206572726F72227D7D76617220683D6E2833292822736F636B65742E696F2D706172';
wwv_flow_api.g_varchar2_table(101) := '73657222292C663D6E2838292C6C3D6E2839292C643D6E283131292C793D6E283132293B652E70726F746F636F6C3D342C652E74797065733D5B22434F4E4E454354222C22444953434F4E4E454354222C224556454E54222C2241434B222C224552524F';
wwv_flow_api.g_varchar2_table(102) := '52222C2242494E4152595F4556454E54222C2242494E4152595F41434B225D2C652E434F4E4E4543543D302C652E444953434F4E4E4543543D312C652E4556454E543D322C652E41434B3D332C652E4552524F523D342C652E42494E4152595F4556454E';
wwv_flow_api.g_varchar2_table(103) := '543D352C652E42494E4152595F41434B3D362C652E456E636F6465723D722C652E4465636F6465723D732C722E70726F746F747970652E656E636F64653D66756E6374696F6E28742C6E297B696628742E74797065213D3D652E4556454E542626742E74';
wwv_flow_api.g_varchar2_table(104) := '797065213D3D652E41434B7C7C216C28742E64617461297C7C28742E747970653D742E747970653D3D3D652E4556454E543F652E42494E4152595F4556454E543A652E42494E4152595F41434B292C682822656E636F64696E67207061636B657420256A';
wwv_flow_api.g_varchar2_table(105) := '222C74292C652E42494E4152595F4556454E543D3D3D742E747970657C7C652E42494E4152595F41434B3D3D3D742E74797065296928742C6E293B656C73657B76617220723D6F2874293B6E285B725D297D7D2C6628732E70726F746F74797065292C73';
wwv_flow_api.g_varchar2_table(106) := '2E70726F746F747970652E6164643D66756E6374696F6E2874297B766172206E3B69662822737472696E67223D3D747970656F662074296E3D612874292C652E42494E4152595F4556454E543D3D3D6E2E747970657C7C652E42494E4152595F41434B3D';
wwv_flow_api.g_varchar2_table(107) := '3D3D6E2E747970653F28746869732E7265636F6E7374727563746F723D6E65772070286E292C303D3D3D746869732E7265636F6E7374727563746F722E7265636F6E5061636B2E6174746163686D656E74732626746869732E656D697428226465636F64';
wwv_flow_api.g_varchar2_table(108) := '6564222C6E29293A746869732E656D697428226465636F646564222C6E293B656C73657B6966282179287429262621742E626173653634297468726F77206E6577204572726F722822556E6B6E6F776E20747970653A20222B74293B6966282174686973';
wwv_flow_api.g_varchar2_table(109) := '2E7265636F6E7374727563746F72297468726F77206E6577204572726F722822676F742062696E6172792064617461207768656E206E6F74207265636F6E737472756374696E672061207061636B657422293B6E3D746869732E7265636F6E7374727563';
wwv_flow_api.g_varchar2_table(110) := '746F722E74616B6542696E617279446174612874292C6E262628746869732E7265636F6E7374727563746F723D6E756C6C2C746869732E656D697428226465636F646564222C6E29297D7D2C732E70726F746F747970652E64657374726F793D66756E63';
wwv_flow_api.g_varchar2_table(111) := '74696F6E28297B746869732E7265636F6E7374727563746F722626746869732E7265636F6E7374727563746F722E66696E69736865645265636F6E737472756374696F6E28297D2C702E70726F746F747970652E74616B6542696E617279446174613D66';
wwv_flow_api.g_varchar2_table(112) := '756E6374696F6E2874297B696628746869732E627566666572732E707573682874292C746869732E627566666572732E6C656E6774683D3D3D746869732E7265636F6E5061636B2E6174746163686D656E7473297B76617220653D642E7265636F6E7374';
wwv_flow_api.g_varchar2_table(113) := '727563745061636B657428746869732E7265636F6E5061636B2C746869732E62756666657273293B72657475726E20746869732E66696E69736865645265636F6E737472756374696F6E28292C657D72657475726E206E756C6C7D2C702E70726F746F74';
wwv_flow_api.g_varchar2_table(114) := '7970652E66696E69736865645265636F6E737472756374696F6E3D66756E6374696F6E28297B746869732E7265636F6E5061636B3D6E756C6C2C746869732E627566666572733D5B5D7D7D2C66756E6374696F6E28742C652C6E297B66756E6374696F6E';
wwv_flow_api.g_varchar2_table(115) := '20722874297B696628742972657475726E206F2874297D66756E6374696F6E206F2874297B666F7228766172206520696E20722E70726F746F7479706529745B655D3D722E70726F746F747970655B655D3B72657475726E20747D742E6578706F727473';
wwv_flow_api.g_varchar2_table(116) := '3D722C722E70726F746F747970652E6F6E3D722E70726F746F747970652E6164644576656E744C697374656E65723D66756E6374696F6E28742C65297B72657475726E20746869732E5F63616C6C6261636B733D746869732E5F63616C6C6261636B737C';
wwv_flow_api.g_varchar2_table(117) := '7C7B7D2C28746869732E5F63616C6C6261636B735B2224222B745D3D746869732E5F63616C6C6261636B735B2224222B745D7C7C5B5D292E707573682865292C746869737D2C722E70726F746F747970652E6F6E63653D66756E6374696F6E28742C6529';
wwv_flow_api.g_varchar2_table(118) := '7B66756E6374696F6E206E28297B746869732E6F666628742C6E292C652E6170706C7928746869732C617267756D656E7473297D72657475726E206E2E666E3D652C746869732E6F6E28742C6E292C746869737D2C722E70726F746F747970652E6F6666';
wwv_flow_api.g_varchar2_table(119) := '3D722E70726F746F747970652E72656D6F76654C697374656E65723D722E70726F746F747970652E72656D6F7665416C6C4C697374656E6572733D722E70726F746F747970652E72656D6F76654576656E744C697374656E65723D66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(120) := '742C65297B696628746869732E5F63616C6C6261636B733D746869732E5F63616C6C6261636B737C7C7B7D2C303D3D617267756D656E74732E6C656E6774682972657475726E20746869732E5F63616C6C6261636B733D7B7D2C746869733B766172206E';
wwv_flow_api.g_varchar2_table(121) := '3D746869732E5F63616C6C6261636B735B2224222B745D3B696628216E2972657475726E20746869733B696628313D3D617267756D656E74732E6C656E6774682972657475726E2064656C65746520746869732E5F63616C6C6261636B735B2224222B74';
wwv_flow_api.g_varchar2_table(122) := '5D2C746869733B666F722876617220722C6F3D303B6F3C6E2E6C656E6774683B6F2B2B29696628723D6E5B6F5D2C723D3D3D657C7C722E666E3D3D3D65297B6E2E73706C696365286F2C31293B627265616B7D72657475726E20746869737D2C722E7072';
wwv_flow_api.g_varchar2_table(123) := '6F746F747970652E656D69743D66756E6374696F6E2874297B746869732E5F63616C6C6261636B733D746869732E5F63616C6C6261636B737C7C7B7D3B76617220653D5B5D2E736C6963652E63616C6C28617267756D656E74732C31292C6E3D74686973';
wwv_flow_api.g_varchar2_table(124) := '2E5F63616C6C6261636B735B2224222B745D3B6966286E297B6E3D6E2E736C6963652830293B666F722876617220723D302C6F3D6E2E6C656E6774683B723C6F3B2B2B72296E5B725D2E6170706C7928746869732C65297D72657475726E20746869737D';
wwv_flow_api.g_varchar2_table(125) := '2C722E70726F746F747970652E6C697374656E6572733D66756E6374696F6E2874297B72657475726E20746869732E5F63616C6C6261636B733D746869732E5F63616C6C6261636B737C7C7B7D2C746869732E5F63616C6C6261636B735B2224222B745D';
wwv_flow_api.g_varchar2_table(126) := '7C7C5B5D7D2C722E70726F746F747970652E6861734C697374656E6572733D66756E6374696F6E2874297B72657475726E2121746869732E6C697374656E6572732874292E6C656E6774687D7D2C66756E6374696F6E28742C652C6E297B2866756E6374';
wwv_flow_api.g_varchar2_table(127) := '696F6E2865297B66756E6374696F6E20722874297B69662821747C7C226F626A65637422213D747970656F6620742972657475726E21313B6966286F287429297B666F7228766172206E3D302C693D742E6C656E6774683B6E3C693B6E2B2B2969662872';
wwv_flow_api.g_varchar2_table(128) := '28745B6E5D292972657475726E21303B72657475726E21317D6966282266756E6374696F6E223D3D747970656F6620652E4275666665722626652E4275666665722E69734275666665722626652E4275666665722E69734275666665722874297C7C2266';
wwv_flow_api.g_varchar2_table(129) := '756E6374696F6E223D3D747970656F6620652E417272617942756666657226267420696E7374616E63656F662041727261794275666665727C7C7326267420696E7374616E63656F6620426C6F627C7C6126267420696E7374616E63656F662046696C65';
wwv_flow_api.g_varchar2_table(130) := '2972657475726E21303B696628742E746F4A534F4E26262266756E6374696F6E223D3D747970656F6620742E746F4A534F4E2626313D3D3D617267756D656E74732E6C656E6774682972657475726E207228742E746F4A534F4E28292C2130293B666F72';
wwv_flow_api.g_varchar2_table(131) := '28766172206320696E2074296966284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28742C632926267228745B635D292972657475726E21303B72657475726E21317D766172206F3D6E283130292C693D4F62';
wwv_flow_api.g_varchar2_table(132) := '6A6563742E70726F746F747970652E746F537472696E672C733D2266756E6374696F6E223D3D747970656F6620652E426C6F627C7C225B6F626A65637420426C6F62436F6E7374727563746F725D223D3D3D692E63616C6C28652E426C6F62292C613D22';
wwv_flow_api.g_varchar2_table(133) := '66756E6374696F6E223D3D747970656F6620652E46696C657C7C225B6F626A6563742046696C65436F6E7374727563746F725D223D3D3D692E63616C6C28652E46696C65293B742E6578706F7274733D727D292E63616C6C28652C66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(134) := '297B72657475726E20746869737D2829297D2C66756E6374696F6E28742C65297B766172206E3D7B7D2E746F537472696E673B742E6578706F7274733D41727261792E697341727261797C7C66756E6374696F6E2874297B72657475726E225B6F626A65';
wwv_flow_api.g_varchar2_table(135) := '63742041727261795D223D3D6E2E63616C6C2874297D7D2C66756E6374696F6E28742C652C6E297B2866756E6374696F6E2874297B66756E6374696F6E207228742C65297B69662821742972657475726E20743B69662873287429297B766172206E3D7B';
wwv_flow_api.g_varchar2_table(136) := '5F706C616365686F6C6465723A21302C6E756D3A652E6C656E6774687D3B72657475726E20652E707573682874292C6E7D69662869287429297B666F7228766172206F3D6E657720417272617928742E6C656E677468292C613D303B613C742E6C656E67';
wwv_flow_api.g_varchar2_table(137) := '74683B612B2B296F5B615D3D7228745B615D2C65293B72657475726E206F7D696628226F626A656374223D3D747970656F662074262621287420696E7374616E63656F66204461746529297B766172206F3D7B7D3B666F7228766172206320696E207429';
wwv_flow_api.g_varchar2_table(138) := '6F5B635D3D7228745B635D2C65293B72657475726E206F7D72657475726E20747D66756E6374696F6E206F28742C65297B69662821742972657475726E20743B696628742626742E5F706C616365686F6C6465722972657475726E20655B742E6E756D5D';
wwv_flow_api.g_varchar2_table(139) := '3B6966286928742929666F7228766172206E3D303B6E3C742E6C656E6774683B6E2B2B29745B6E5D3D6F28745B6E5D2C65293B656C736520696628226F626A656374223D3D747970656F66207429666F7228766172207220696E207429745B725D3D6F28';
wwv_flow_api.g_varchar2_table(140) := '745B725D2C65293B72657475726E20747D76617220693D6E283130292C733D6E283132292C613D4F626A6563742E70726F746F747970652E746F537472696E672C633D2266756E6374696F6E223D3D747970656F6620742E426C6F627C7C225B6F626A65';
wwv_flow_api.g_varchar2_table(141) := '637420426C6F62436F6E7374727563746F725D223D3D3D612E63616C6C28742E426C6F62292C703D2266756E6374696F6E223D3D747970656F6620742E46696C657C7C225B6F626A6563742046696C65436F6E7374727563746F725D223D3D3D612E6361';
wwv_flow_api.g_varchar2_table(142) := '6C6C28742E46696C65293B652E6465636F6E7374727563745061636B65743D66756E6374696F6E2874297B76617220653D5B5D2C6E3D742E646174612C6F3D743B72657475726E206F2E646174613D72286E2C65292C6F2E6174746163686D656E74733D';
wwv_flow_api.g_varchar2_table(143) := '652E6C656E6774682C7B7061636B65743A6F2C627566666572733A657D7D2C652E7265636F6E7374727563745061636B65743D66756E6374696F6E28742C65297B72657475726E20742E646174613D6F28742E646174612C65292C742E6174746163686D';
wwv_flow_api.g_varchar2_table(144) := '656E74733D766F696420302C747D2C652E72656D6F7665426C6F62733D66756E6374696F6E28742C65297B66756E6374696F6E206E28742C612C75297B69662821742972657475726E20743B6966286326267420696E7374616E63656F6620426C6F627C';
wwv_flow_api.g_varchar2_table(145) := '7C7026267420696E7374616E63656F662046696C65297B722B2B3B76617220683D6E65772046696C655265616465723B682E6F6E6C6F61643D66756E6374696F6E28297B753F755B615D3D746869732E726573756C743A6F3D746869732E726573756C74';
wwv_flow_api.g_varchar2_table(146) := '2C2D2D727C7C65286F297D2C682E72656164417341727261794275666665722874297D656C7365206966286928742929666F722876617220663D303B663C742E6C656E6774683B662B2B296E28745B665D2C662C74293B656C736520696628226F626A65';
wwv_flow_api.g_varchar2_table(147) := '6374223D3D747970656F6620742626217328742929666F7228766172206C20696E2074296E28745B6C5D2C6C2C74297D76617220723D302C6F3D743B6E286F292C727C7C65286F297D7D292E63616C6C28652C66756E6374696F6E28297B72657475726E';
wwv_flow_api.g_varchar2_table(148) := '20746869737D2829297D2C66756E6374696F6E28742C65297B2866756E6374696F6E2865297B66756E6374696F6E206E2874297B72657475726E20652E4275666665722626652E4275666665722E69734275666665722874297C7C652E41727261794275';
wwv_flow_api.g_varchar2_table(149) := '6666657226267420696E7374616E63656F662041727261794275666665727D742E6578706F7274733D6E7D292E63616C6C28652C66756E6374696F6E28297B72657475726E20746869737D2829297D2C66756E6374696F6E28742C652C6E297B22757365';
wwv_flow_api.g_varchar2_table(150) := '20737472696374223B66756E6374696F6E207228742C65297B69662821287468697320696E7374616E63656F662072292972657475726E206E6577207228742C65293B742626226F626A656374223D3D3D2822756E646566696E6564223D3D747970656F';
wwv_flow_api.g_varchar2_table(151) := '6620743F22756E646566696E6564223A6F28742929262628653D742C743D766F69642030292C653D657C7C7B7D2C652E706174683D652E706174687C7C222F736F636B65742E696F222C746869732E6E7370733D7B7D2C746869732E737562733D5B5D2C';
wwv_flow_api.g_varchar2_table(152) := '746869732E6F7074733D652C746869732E7265636F6E6E656374696F6E28652E7265636F6E6E656374696F6E213D3D2131292C746869732E7265636F6E6E656374696F6E417474656D70747328652E7265636F6E6E656374696F6E417474656D7074737C';
wwv_flow_api.g_varchar2_table(153) := '7C312F30292C746869732E7265636F6E6E656374696F6E44656C617928652E7265636F6E6E656374696F6E44656C61797C7C316533292C746869732E7265636F6E6E656374696F6E44656C61794D617828652E7265636F6E6E656374696F6E44656C6179';
wwv_flow_api.g_varchar2_table(154) := '4D61787C7C356533292C746869732E72616E646F6D697A6174696F6E466163746F7228652E72616E646F6D697A6174696F6E466163746F727C7C2E35292C746869732E6261636B6F66663D6E6577206C287B6D696E3A746869732E7265636F6E6E656374';
wwv_flow_api.g_varchar2_table(155) := '696F6E44656C617928292C6D61783A746869732E7265636F6E6E656374696F6E44656C61794D617828292C6A69747465723A746869732E72616E646F6D697A6174696F6E466163746F7228297D292C746869732E74696D656F7574286E756C6C3D3D652E';
wwv_flow_api.g_varchar2_table(156) := '74696D656F75743F3265343A652E74696D656F7574292C746869732E726561647953746174653D22636C6F736564222C746869732E7572693D742C746869732E636F6E6E656374696E673D5B5D2C746869732E6C61737450696E673D6E756C6C2C746869';
wwv_flow_api.g_varchar2_table(157) := '732E656E636F64696E673D21312C746869732E7061636B65744275666665723D5B5D3B766172206E3D652E7061727365727C7C633B746869732E656E636F6465723D6E6577206E2E456E636F6465722C746869732E6465636F6465723D6E6577206E2E44';
wwv_flow_api.g_varchar2_table(158) := '65636F6465722C746869732E6175746F436F6E6E6563743D652E6175746F436F6E6E656374213D3D21312C746869732E6175746F436F6E6E6563742626746869732E6F70656E28297D766172206F3D2266756E6374696F6E223D3D747970656F66205379';
wwv_flow_api.g_varchar2_table(159) := '6D626F6C26262273796D626F6C223D3D747970656F662053796D626F6C2E6974657261746F723F66756E6374696F6E2874297B72657475726E20747970656F6620747D3A66756E6374696F6E2874297B72657475726E207426262266756E6374696F6E22';
wwv_flow_api.g_varchar2_table(160) := '3D3D747970656F662053796D626F6C2626742E636F6E7374727563746F723D3D3D53796D626F6C262674213D3D53796D626F6C2E70726F746F747970653F2273796D626F6C223A747970656F6620747D2C693D6E283134292C733D6E283337292C613D6E';
wwv_flow_api.g_varchar2_table(161) := '2838292C633D6E2837292C703D6E283339292C753D6E283430292C683D6E2833292822736F636B65742E696F2D636C69656E743A6D616E6167657222292C663D6E283336292C6C3D6E283431292C643D4F626A6563742E70726F746F747970652E686173';
wwv_flow_api.g_varchar2_table(162) := '4F776E50726F70657274793B742E6578706F7274733D722C722E70726F746F747970652E656D6974416C6C3D66756E6374696F6E28297B746869732E656D69742E6170706C7928746869732C617267756D656E7473293B666F7228766172207420696E20';
wwv_flow_api.g_varchar2_table(163) := '746869732E6E73707329642E63616C6C28746869732E6E7370732C74292626746869732E6E7370735B745D2E656D69742E6170706C7928746869732E6E7370735B745D2C617267756D656E7473297D2C722E70726F746F747970652E757064617465536F';
wwv_flow_api.g_varchar2_table(164) := '636B65744964733D66756E6374696F6E28297B666F7228766172207420696E20746869732E6E73707329642E63616C6C28746869732E6E7370732C7429262628746869732E6E7370735B745D2E69643D746869732E67656E65726174654964287429297D';
wwv_flow_api.g_varchar2_table(165) := '2C722E70726F746F747970652E67656E657261746549643D66756E6374696F6E2874297B72657475726E28222F223D3D3D743F22223A742B222322292B746869732E656E67696E652E69647D2C6128722E70726F746F74797065292C722E70726F746F74';
wwv_flow_api.g_varchar2_table(166) := '7970652E7265636F6E6E656374696F6E3D66756E6374696F6E2874297B72657475726E20617267756D656E74732E6C656E6774683F28746869732E5F7265636F6E6E656374696F6E3D2121742C74686973293A746869732E5F7265636F6E6E656374696F';
wwv_flow_api.g_varchar2_table(167) := '6E7D2C722E70726F746F747970652E7265636F6E6E656374696F6E417474656D7074733D66756E6374696F6E2874297B72657475726E20617267756D656E74732E6C656E6774683F28746869732E5F7265636F6E6E656374696F6E417474656D7074733D';
wwv_flow_api.g_varchar2_table(168) := '742C74686973293A746869732E5F7265636F6E6E656374696F6E417474656D7074737D2C722E70726F746F747970652E7265636F6E6E656374696F6E44656C61793D66756E6374696F6E2874297B72657475726E20617267756D656E74732E6C656E6774';
wwv_flow_api.g_varchar2_table(169) := '683F28746869732E5F7265636F6E6E656374696F6E44656C61793D742C746869732E6261636B6F66662626746869732E6261636B6F66662E7365744D696E2874292C74686973293A746869732E5F7265636F6E6E656374696F6E44656C61797D2C722E70';
wwv_flow_api.g_varchar2_table(170) := '726F746F747970652E72616E646F6D697A6174696F6E466163746F723D66756E6374696F6E2874297B72657475726E20617267756D656E74732E6C656E6774683F28746869732E5F72616E646F6D697A6174696F6E466163746F723D742C746869732E62';
wwv_flow_api.g_varchar2_table(171) := '61636B6F66662626746869732E6261636B6F66662E7365744A69747465722874292C74686973293A746869732E5F72616E646F6D697A6174696F6E466163746F727D2C722E70726F746F747970652E7265636F6E6E656374696F6E44656C61794D61783D';
wwv_flow_api.g_varchar2_table(172) := '66756E6374696F6E2874297B72657475726E20617267756D656E74732E6C656E6774683F28746869732E5F7265636F6E6E656374696F6E44656C61794D61783D742C746869732E6261636B6F66662626746869732E6261636B6F66662E7365744D617828';
wwv_flow_api.g_varchar2_table(173) := '74292C74686973293A746869732E5F7265636F6E6E656374696F6E44656C61794D61787D2C722E70726F746F747970652E74696D656F75743D66756E6374696F6E2874297B72657475726E20617267756D656E74732E6C656E6774683F28746869732E5F';
wwv_flow_api.g_varchar2_table(174) := '74696D656F75743D742C74686973293A746869732E5F74696D656F75747D2C722E70726F746F747970652E6D617962655265636F6E6E6563744F6E4F70656E3D66756E6374696F6E28297B21746869732E7265636F6E6E656374696E672626746869732E';
wwv_flow_api.g_varchar2_table(175) := '5F7265636F6E6E656374696F6E2626303D3D3D746869732E6261636B6F66662E617474656D7074732626746869732E7265636F6E6E65637428297D2C722E70726F746F747970652E6F70656E3D722E70726F746F747970652E636F6E6E6563743D66756E';
wwv_flow_api.g_varchar2_table(176) := '6374696F6E28742C65297B69662868282272656164795374617465202573222C746869732E72656164795374617465292C7E746869732E726561647953746174652E696E6465784F6628226F70656E22292972657475726E20746869733B6828226F7065';
wwv_flow_api.g_varchar2_table(177) := '6E696E67202573222C746869732E757269292C746869732E656E67696E653D6928746869732E7572692C746869732E6F707473293B766172206E3D746869732E656E67696E652C723D746869733B746869732E726561647953746174653D226F70656E69';
wwv_flow_api.g_varchar2_table(178) := '6E67222C746869732E736B69705265636F6E6E6563743D21313B766172206F3D70286E2C226F70656E222C66756E6374696F6E28297B722E6F6E6F70656E28292C7426267428297D292C733D70286E2C226572726F72222C66756E6374696F6E2865297B';
wwv_flow_api.g_varchar2_table(179) := '696628682822636F6E6E6563745F6572726F7222292C722E636C65616E757028292C722E726561647953746174653D22636C6F736564222C722E656D6974416C6C2822636F6E6E6563745F6572726F72222C65292C74297B766172206E3D6E6577204572';
wwv_flow_api.g_varchar2_table(180) := '726F722822436F6E6E656374696F6E206572726F7222293B6E2E646174613D652C74286E297D656C736520722E6D617962655265636F6E6E6563744F6E4F70656E28297D293B6966282131213D3D746869732E5F74696D656F7574297B76617220613D74';
wwv_flow_api.g_varchar2_table(181) := '6869732E5F74696D656F75743B682822636F6E6E65637420617474656D70742077696C6C2074696D656F7574206166746572202564222C61293B76617220633D73657454696D656F75742866756E6374696F6E28297B682822636F6E6E65637420617474';
wwv_flow_api.g_varchar2_table(182) := '656D70742074696D6564206F7574206166746572202564222C61292C6F2E64657374726F7928292C6E2E636C6F736528292C6E2E656D697428226572726F72222C2274696D656F757422292C722E656D6974416C6C2822636F6E6E6563745F74696D656F';
wwv_flow_api.g_varchar2_table(183) := '7574222C61297D2C61293B746869732E737562732E70757368287B64657374726F793A66756E6374696F6E28297B636C65617254696D656F75742863297D7D297D72657475726E20746869732E737562732E70757368286F292C746869732E737562732E';
wwv_flow_api.g_varchar2_table(184) := '707573682873292C746869737D2C722E70726F746F747970652E6F6E6F70656E3D66756E6374696F6E28297B6828226F70656E22292C746869732E636C65616E757028292C746869732E726561647953746174653D226F70656E222C746869732E656D69';
wwv_flow_api.g_varchar2_table(185) := '7428226F70656E22293B76617220743D746869732E656E67696E653B746869732E737562732E70757368287028742C2264617461222C7528746869732C226F6E64617461222929292C746869732E737562732E70757368287028742C2270696E67222C75';
wwv_flow_api.g_varchar2_table(186) := '28746869732C226F6E70696E67222929292C746869732E737562732E70757368287028742C22706F6E67222C7528746869732C226F6E706F6E67222929292C746869732E737562732E70757368287028742C226572726F72222C7528746869732C226F6E';
wwv_flow_api.g_varchar2_table(187) := '6572726F72222929292C746869732E737562732E70757368287028742C22636C6F7365222C7528746869732C226F6E636C6F7365222929292C746869732E737562732E70757368287028746869732E6465636F6465722C226465636F646564222C752874';
wwv_flow_api.g_varchar2_table(188) := '6869732C226F6E6465636F646564222929297D2C722E70726F746F747970652E6F6E70696E673D66756E6374696F6E28297B746869732E6C61737450696E673D6E657720446174652C746869732E656D6974416C6C282270696E6722297D2C722E70726F';
wwv_flow_api.g_varchar2_table(189) := '746F747970652E6F6E706F6E673D66756E6374696F6E28297B746869732E656D6974416C6C2822706F6E67222C6E657720446174652D746869732E6C61737450696E67297D2C722E70726F746F747970652E6F6E646174613D66756E6374696F6E287429';
wwv_flow_api.g_varchar2_table(190) := '7B746869732E6465636F6465722E6164642874297D2C722E70726F746F747970652E6F6E6465636F6465643D66756E6374696F6E2874297B746869732E656D697428227061636B6574222C74297D2C722E70726F746F747970652E6F6E6572726F723D66';
wwv_flow_api.g_varchar2_table(191) := '756E6374696F6E2874297B6828226572726F72222C74292C746869732E656D6974416C6C28226572726F72222C74297D2C722E70726F746F747970652E736F636B65743D66756E6374696F6E28742C65297B66756E6374696F6E206E28297B7E66286F2E';
wwv_flow_api.g_varchar2_table(192) := '636F6E6E656374696E672C72297C7C6F2E636F6E6E656374696E672E707573682872297D76617220723D746869732E6E7370735B745D3B6966282172297B723D6E6577207328746869732C742C65292C746869732E6E7370735B745D3D723B766172206F';
wwv_flow_api.g_varchar2_table(193) := '3D746869733B722E6F6E2822636F6E6E656374696E67222C6E292C722E6F6E2822636F6E6E656374222C66756E6374696F6E28297B722E69643D6F2E67656E657261746549642874297D292C746869732E6175746F436F6E6E65637426266E28297D7265';
wwv_flow_api.g_varchar2_table(194) := '7475726E20727D2C722E70726F746F747970652E64657374726F793D66756E6374696F6E2874297B76617220653D6628746869732E636F6E6E656374696E672C74293B7E652626746869732E636F6E6E656374696E672E73706C69636528652C31292C74';
wwv_flow_api.g_varchar2_table(195) := '6869732E636F6E6E656374696E672E6C656E6774687C7C746869732E636C6F736528297D2C722E70726F746F747970652E7061636B65743D66756E6374696F6E2874297B68282277726974696E67207061636B657420256A222C74293B76617220653D74';
wwv_flow_api.g_varchar2_table(196) := '6869733B742E71756572792626303D3D3D742E74797065262628742E6E73702B3D223F222B742E7175657279292C652E656E636F64696E673F652E7061636B65744275666665722E707573682874293A28652E656E636F64696E673D21302C746869732E';
wwv_flow_api.g_varchar2_table(197) := '656E636F6465722E656E636F646528742C66756E6374696F6E286E297B666F722876617220723D303B723C6E2E6C656E6774683B722B2B29652E656E67696E652E7772697465286E5B725D2C742E6F7074696F6E73293B652E656E636F64696E673D2131';
wwv_flow_api.g_varchar2_table(198) := '2C652E70726F636573735061636B6574517565756528297D29297D2C722E70726F746F747970652E70726F636573735061636B657451756575653D66756E6374696F6E28297B696628746869732E7061636B65744275666665722E6C656E6774683E3026';
wwv_flow_api.g_varchar2_table(199) := '2621746869732E656E636F64696E67297B76617220743D746869732E7061636B65744275666665722E736869667428293B746869732E7061636B65742874297D7D2C722E70726F746F747970652E636C65616E75703D66756E6374696F6E28297B682822';
wwv_flow_api.g_varchar2_table(200) := '636C65616E757022293B666F722876617220743D746869732E737562732E6C656E6774682C653D303B653C743B652B2B297B766172206E3D746869732E737562732E736869667428293B6E2E64657374726F7928297D746869732E7061636B6574427566';
wwv_flow_api.g_varchar2_table(201) := '6665723D5B5D2C746869732E656E636F64696E673D21312C746869732E6C61737450696E673D6E756C6C2C746869732E6465636F6465722E64657374726F7928297D2C722E70726F746F747970652E636C6F73653D722E70726F746F747970652E646973';
wwv_flow_api.g_varchar2_table(202) := '636F6E6E6563743D66756E6374696F6E28297B682822646973636F6E6E65637422292C746869732E736B69705265636F6E6E6563743D21302C746869732E7265636F6E6E656374696E673D21312C226F70656E696E67223D3D3D746869732E7265616479';
wwv_flow_api.g_varchar2_table(203) := '53746174652626746869732E636C65616E757028292C746869732E6261636B6F66662E726573657428292C746869732E726561647953746174653D22636C6F736564222C746869732E656E67696E652626746869732E656E67696E652E636C6F73652829';
wwv_flow_api.g_varchar2_table(204) := '7D2C722E70726F746F747970652E6F6E636C6F73653D66756E6374696F6E2874297B6828226F6E636C6F736522292C746869732E636C65616E757028292C746869732E6261636B6F66662E726573657428292C746869732E726561647953746174653D22';
wwv_flow_api.g_varchar2_table(205) := '636C6F736564222C746869732E656D69742822636C6F7365222C74292C746869732E5F7265636F6E6E656374696F6E262621746869732E736B69705265636F6E6E6563742626746869732E7265636F6E6E65637428297D2C722E70726F746F747970652E';
wwv_flow_api.g_varchar2_table(206) := '7265636F6E6E6563743D66756E6374696F6E28297B696628746869732E7265636F6E6E656374696E677C7C746869732E736B69705265636F6E6E6563742972657475726E20746869733B76617220743D746869733B696628746869732E6261636B6F6666';
wwv_flow_api.g_varchar2_table(207) := '2E617474656D7074733E3D746869732E5F7265636F6E6E656374696F6E417474656D707473296828227265636F6E6E656374206661696C656422292C746869732E6261636B6F66662E726573657428292C746869732E656D6974416C6C28227265636F6E';
wwv_flow_api.g_varchar2_table(208) := '6E6563745F6661696C656422292C746869732E7265636F6E6E656374696E673D21313B656C73657B76617220653D746869732E6261636B6F66662E6475726174696F6E28293B68282277696C6C20776169742025646D73206265666F7265207265636F6E';
wwv_flow_api.g_varchar2_table(209) := '6E65637420617474656D7074222C65292C746869732E7265636F6E6E656374696E673D21303B766172206E3D73657454696D656F75742866756E6374696F6E28297B742E736B69705265636F6E6E6563747C7C28682822617474656D7074696E67207265';
wwv_flow_api.g_varchar2_table(210) := '636F6E6E65637422292C742E656D6974416C6C28227265636F6E6E6563745F617474656D7074222C742E6261636B6F66662E617474656D707473292C742E656D6974416C6C28227265636F6E6E656374696E67222C742E6261636B6F66662E617474656D';
wwv_flow_api.g_varchar2_table(211) := '707473292C742E736B69705265636F6E6E6563747C7C742E6F70656E2866756E6374696F6E2865297B653F286828227265636F6E6E65637420617474656D7074206572726F7222292C742E7265636F6E6E656374696E673D21312C742E7265636F6E6E65';
wwv_flow_api.g_varchar2_table(212) := '637428292C742E656D6974416C6C28227265636F6E6E6563745F6572726F72222C652E6461746129293A286828227265636F6E6E656374207375636365737322292C742E6F6E7265636F6E6E6563742829297D29297D2C65293B746869732E737562732E';
wwv_flow_api.g_varchar2_table(213) := '70757368287B64657374726F793A66756E6374696F6E28297B636C65617254696D656F7574286E297D7D297D7D2C722E70726F746F747970652E6F6E7265636F6E6E6563743D66756E6374696F6E28297B76617220743D746869732E6261636B6F66662E';
wwv_flow_api.g_varchar2_table(214) := '617474656D7074733B746869732E7265636F6E6E656374696E673D21312C746869732E6261636B6F66662E726573657428292C746869732E757064617465536F636B657449647328292C746869732E656D6974416C6C28227265636F6E6E656374222C74';
wwv_flow_api.g_varchar2_table(215) := '297D7D2C66756E6374696F6E28742C652C6E297B742E6578706F7274733D6E283135292C742E6578706F7274732E7061727365723D6E283232297D2C66756E6374696F6E28742C652C6E297B2866756E6374696F6E2865297B66756E6374696F6E207228';
wwv_flow_api.g_varchar2_table(216) := '742C6E297B69662821287468697320696E7374616E63656F662072292972657475726E206E6577207228742C6E293B6E3D6E7C7C7B7D2C742626226F626A656374223D3D747970656F6620742626286E3D742C743D6E756C6C292C743F28743D75287429';
wwv_flow_api.g_varchar2_table(217) := '2C6E2E686F73746E616D653D742E686F73742C6E2E7365637572653D226874747073223D3D3D742E70726F746F636F6C7C7C22777373223D3D3D742E70726F746F636F6C2C6E2E706F72743D742E706F72742C742E71756572792626286E2E7175657279';
wwv_flow_api.g_varchar2_table(218) := '3D742E717565727929293A6E2E686F73742626286E2E686F73746E616D653D75286E2E686F7374292E686F7374292C746869732E7365637572653D6E756C6C213D6E2E7365637572653F6E2E7365637572653A652E6C6F636174696F6E26262268747470';
wwv_flow_api.g_varchar2_table(219) := '733A223D3D3D6C6F636174696F6E2E70726F746F636F6C2C6E2E686F73746E616D652626216E2E706F72742626286E2E706F72743D746869732E7365637572653F22343433223A22383022292C746869732E6167656E743D6E2E6167656E747C7C21312C';
wwv_flow_api.g_varchar2_table(220) := '746869732E686F73746E616D653D6E2E686F73746E616D657C7C28652E6C6F636174696F6E3F6C6F636174696F6E2E686F73746E616D653A226C6F63616C686F737422292C746869732E706F72743D6E2E706F72747C7C28652E6C6F636174696F6E2626';
wwv_flow_api.g_varchar2_table(221) := '6C6F636174696F6E2E706F72743F6C6F636174696F6E2E706F72743A746869732E7365637572653F3434333A3830292C746869732E71756572793D6E2E71756572797C7C7B7D2C22737472696E67223D3D747970656F6620746869732E71756572792626';
wwv_flow_api.g_varchar2_table(222) := '28746869732E71756572793D682E6465636F646528746869732E717565727929292C746869732E757067726164653D2131213D3D6E2E757067726164652C746869732E706174683D286E2E706174687C7C222F656E67696E652E696F22292E7265706C61';
wwv_flow_api.g_varchar2_table(223) := '6365282F5C2F242F2C2222292B222F222C746869732E666F7263654A534F4E503D21216E2E666F7263654A534F4E502C746869732E6A736F6E703D2131213D3D6E2E6A736F6E702C746869732E666F7263654261736536343D21216E2E666F7263654261';
wwv_flow_api.g_varchar2_table(224) := '736536342C746869732E656E61626C65735844523D21216E2E656E61626C65735844522C746869732E74696D657374616D70506172616D3D6E2E74696D657374616D70506172616D7C7C2274222C746869732E74696D657374616D705265717565737473';
wwv_flow_api.g_varchar2_table(225) := '3D6E2E74696D657374616D7052657175657374732C746869732E7472616E73706F7274733D6E2E7472616E73706F7274737C7C5B22706F6C6C696E67222C22776562736F636B6574225D2C746869732E7472616E73706F72744F7074696F6E733D6E2E74';
wwv_flow_api.g_varchar2_table(226) := '72616E73706F72744F7074696F6E737C7C7B7D2C746869732E726561647953746174653D22222C746869732E77726974654275666665723D5B5D2C746869732E707265764275666665724C656E3D302C746869732E706F6C696379506F72743D6E2E706F';
wwv_flow_api.g_varchar2_table(227) := '6C696379506F72747C7C3834332C746869732E72656D656D626572557067726164653D6E2E72656D656D626572557067726164657C7C21312C746869732E62696E617279547970653D6E756C6C2C746869732E6F6E6C7942696E61727955706772616465';
wwv_flow_api.g_varchar2_table(228) := '733D6E2E6F6E6C7942696E61727955706772616465732C746869732E7065724D6573736167654465666C6174653D2131213D3D6E2E7065724D6573736167654465666C6174652626286E2E7065724D6573736167654465666C6174657C7C7B7D292C2130';
wwv_flow_api.g_varchar2_table(229) := '3D3D3D746869732E7065724D6573736167654465666C617465262628746869732E7065724D6573736167654465666C6174653D7B7D292C746869732E7065724D6573736167654465666C61746526266E756C6C3D3D746869732E7065724D657373616765';
wwv_flow_api.g_varchar2_table(230) := '4465666C6174652E7468726573686F6C64262628746869732E7065724D6573736167654465666C6174652E7468726573686F6C643D31303234292C746869732E7066783D6E2E7066787C7C6E756C6C2C746869732E6B65793D6E2E6B65797C7C6E756C6C';
wwv_flow_api.g_varchar2_table(231) := '2C746869732E706173737068726173653D6E2E706173737068726173657C7C6E756C6C2C746869732E636572743D6E2E636572747C7C6E756C6C2C746869732E63613D6E2E63617C7C6E756C6C2C746869732E636970686572733D6E2E63697068657273';
wwv_flow_api.g_varchar2_table(232) := '7C7C6E756C6C2C746869732E72656A656374556E617574686F72697A65643D766F696420303D3D3D6E2E72656A656374556E617574686F72697A65647C7C6E2E72656A656374556E617574686F72697A65642C746869732E666F7263654E6F64653D2121';
wwv_flow_api.g_varchar2_table(233) := '6E2E666F7263654E6F64653B766172206F3D226F626A656374223D3D747970656F6620652626653B6F2E676C6F62616C3D3D3D6F2626286E2E65787472614865616465727326264F626A6563742E6B657973286E2E657874726148656164657273292E6C';
wwv_flow_api.g_varchar2_table(234) := '656E6774683E30262628746869732E6578747261486561646572733D6E2E657874726148656164657273292C6E2E6C6F63616C41646472657373262628746869732E6C6F63616C416464726573733D6E2E6C6F63616C4164647265737329292C74686973';
wwv_flow_api.g_varchar2_table(235) := '2E69643D6E756C6C2C746869732E75706772616465733D6E756C6C2C746869732E70696E67496E74657276616C3D6E756C6C2C746869732E70696E6754696D656F75743D6E756C6C2C746869732E70696E67496E74657276616C54696D65723D6E756C6C';
wwv_flow_api.g_varchar2_table(236) := '2C746869732E70696E6754696D656F757454696D65723D6E756C6C2C746869732E6F70656E28297D66756E6374696F6E206F2874297B76617220653D7B7D3B666F7228766172206E20696E207429742E6861734F776E50726F7065727479286E29262628';
wwv_flow_api.g_varchar2_table(237) := '655B6E5D3D745B6E5D293B72657475726E20657D76617220693D6E283136292C733D6E2838292C613D6E2833292822656E67696E652E696F2D636C69656E743A736F636B657422292C633D6E283336292C703D6E283232292C753D6E2832292C683D6E28';
wwv_flow_api.g_varchar2_table(238) := '3330293B742E6578706F7274733D722C722E7072696F72576562736F636B6574537563636573733D21312C7328722E70726F746F74797065292C722E70726F746F636F6C3D702E70726F746F636F6C2C722E536F636B65743D722C722E5472616E73706F';
wwv_flow_api.g_varchar2_table(239) := '72743D6E283231292C722E7472616E73706F7274733D6E283136292C722E7061727365723D6E283232292C722E70726F746F747970652E6372656174655472616E73706F72743D66756E6374696F6E2874297B6128276372656174696E67207472616E73';
wwv_flow_api.g_varchar2_table(240) := '706F72742022257322272C74293B76617220653D6F28746869732E7175657279293B652E45494F3D702E70726F746F636F6C2C652E7472616E73706F72743D743B766172206E3D746869732E7472616E73706F72744F7074696F6E735B745D7C7C7B7D3B';
wwv_flow_api.g_varchar2_table(241) := '746869732E6964262628652E7369643D746869732E6964293B76617220723D6E657720695B745D287B71756572793A652C736F636B65743A746869732C6167656E743A6E2E6167656E747C7C746869732E6167656E742C686F73746E616D653A6E2E686F';
wwv_flow_api.g_varchar2_table(242) := '73746E616D657C7C746869732E686F73746E616D652C706F72743A6E2E706F72747C7C746869732E706F72742C7365637572653A6E2E7365637572657C7C746869732E7365637572652C706174683A6E2E706174687C7C746869732E706174682C666F72';
wwv_flow_api.g_varchar2_table(243) := '63654A534F4E503A6E2E666F7263654A534F4E507C7C746869732E666F7263654A534F4E502C6A736F6E703A6E2E6A736F6E707C7C746869732E6A736F6E702C666F7263654261736536343A6E2E666F7263654261736536347C7C746869732E666F7263';
wwv_flow_api.g_varchar2_table(244) := '654261736536342C656E61626C65735844523A6E2E656E61626C65735844527C7C746869732E656E61626C65735844522C74696D657374616D7052657175657374733A6E2E74696D657374616D7052657175657374737C7C746869732E74696D65737461';
wwv_flow_api.g_varchar2_table(245) := '6D7052657175657374732C74696D657374616D70506172616D3A6E2E74696D657374616D70506172616D7C7C746869732E74696D657374616D70506172616D2C706F6C696379506F72743A6E2E706F6C696379506F72747C7C746869732E706F6C696379';
wwv_flow_api.g_varchar2_table(246) := '506F72742C7066783A6E2E7066787C7C746869732E7066782C6B65793A6E2E6B65797C7C746869732E6B65792C706173737068726173653A6E2E706173737068726173657C7C746869732E706173737068726173652C636572743A6E2E636572747C7C74';
wwv_flow_api.g_varchar2_table(247) := '6869732E636572742C63613A6E2E63617C7C746869732E63612C636970686572733A6E2E636970686572737C7C746869732E636970686572732C72656A656374556E617574686F72697A65643A6E2E72656A656374556E617574686F72697A65647C7C74';
wwv_flow_api.g_varchar2_table(248) := '6869732E72656A656374556E617574686F72697A65642C7065724D6573736167654465666C6174653A6E2E7065724D6573736167654465666C6174657C7C746869732E7065724D6573736167654465666C6174652C6578747261486561646572733A6E2E';
wwv_flow_api.g_varchar2_table(249) := '6578747261486561646572737C7C746869732E6578747261486561646572732C666F7263654E6F64653A6E2E666F7263654E6F64657C7C746869732E666F7263654E6F64652C6C6F63616C416464726573733A6E2E6C6F63616C416464726573737C7C74';
wwv_flow_api.g_varchar2_table(250) := '6869732E6C6F63616C416464726573732C7265717565737454696D656F75743A6E2E7265717565737454696D656F75747C7C746869732E7265717565737454696D656F75742C70726F746F636F6C733A6E2E70726F746F636F6C737C7C766F696420307D';
wwv_flow_api.g_varchar2_table(251) := '293B72657475726E20727D2C722E70726F746F747970652E6F70656E3D66756E6374696F6E28297B76617220743B696628746869732E72656D656D626572557067726164652626722E7072696F72576562736F636B657453756363657373262674686973';
wwv_flow_api.g_varchar2_table(252) := '2E7472616E73706F7274732E696E6465784F662822776562736F636B65742229213D3D2D3129743D22776562736F636B6574223B656C73657B696628303D3D3D746869732E7472616E73706F7274732E6C656E677468297B76617220653D746869733B72';
wwv_flow_api.g_varchar2_table(253) := '657475726E20766F69642073657454696D656F75742866756E6374696F6E28297B652E656D697428226572726F72222C224E6F207472616E73706F72747320617661696C61626C6522297D2C30297D743D746869732E7472616E73706F7274735B305D7D';
wwv_flow_api.g_varchar2_table(254) := '746869732E726561647953746174653D226F70656E696E67223B7472797B743D746869732E6372656174655472616E73706F72742874297D6361746368286E297B72657475726E20746869732E7472616E73706F7274732E736869667428292C766F6964';
wwv_flow_api.g_varchar2_table(255) := '20746869732E6F70656E28297D742E6F70656E28292C746869732E7365745472616E73706F72742874297D2C722E70726F746F747970652E7365745472616E73706F72743D66756E6374696F6E2874297B61282273657474696E67207472616E73706F72';
wwv_flow_api.g_varchar2_table(256) := '74202573222C742E6E616D65293B76617220653D746869733B746869732E7472616E73706F7274262628612822636C656172696E67206578697374696E67207472616E73706F7274202573222C746869732E7472616E73706F72742E6E616D65292C7468';
wwv_flow_api.g_varchar2_table(257) := '69732E7472616E73706F72742E72656D6F7665416C6C4C697374656E6572732829292C746869732E7472616E73706F72743D742C742E6F6E2822647261696E222C66756E6374696F6E28297B652E6F6E447261696E28297D292E6F6E28227061636B6574';
wwv_flow_api.g_varchar2_table(258) := '222C66756E6374696F6E2874297B652E6F6E5061636B65742874297D292E6F6E28226572726F72222C66756E6374696F6E2874297B652E6F6E4572726F722874297D292E6F6E2822636C6F7365222C66756E6374696F6E28297B652E6F6E436C6F736528';
wwv_flow_api.g_varchar2_table(259) := '227472616E73706F727420636C6F736522297D297D2C722E70726F746F747970652E70726F62653D66756E6374696F6E2874297B66756E6374696F6E206528297B696628662E6F6E6C7942696E6172795570677261646573297B76617220653D21746869';
wwv_flow_api.g_varchar2_table(260) := '732E737570706F72747342696E6172792626662E7472616E73706F72742E737570706F72747342696E6172793B683D687C7C657D687C7C2861282770726F6265207472616E73706F72742022257322206F70656E6564272C74292C752E73656E64285B7B';
wwv_flow_api.g_varchar2_table(261) := '747970653A2270696E67222C646174613A2270726F6265227D5D292C752E6F6E636528227061636B6574222C66756E6374696F6E2865297B69662821682969662822706F6E67223D3D3D652E7479706526262270726F6265223D3D3D652E64617461297B';
wwv_flow_api.g_varchar2_table(262) := '69662861282770726F6265207472616E73706F7274202225732220706F6E67272C74292C662E757067726164696E673D21302C662E656D69742822757067726164696E67222C75292C21752972657475726E3B722E7072696F72576562736F636B657453';
wwv_flow_api.g_varchar2_table(263) := '7563636573733D22776562736F636B6574223D3D3D752E6E616D652C61282770617573696E672063757272656E74207472616E73706F72742022257322272C662E7472616E73706F72742E6E616D65292C662E7472616E73706F72742E70617573652866';
wwv_flow_api.g_varchar2_table(264) := '756E6374696F6E28297B687C7C22636C6F73656422213D3D662E726561647953746174652626286128226368616E67696E67207472616E73706F727420616E642073656E64696E672075706772616465207061636B657422292C7028292C662E73657454';
wwv_flow_api.g_varchar2_table(265) := '72616E73706F72742875292C752E73656E64285B7B747970653A2275706772616465227D5D292C662E656D6974282275706772616465222C75292C753D6E756C6C2C662E757067726164696E673D21312C662E666C7573682829297D297D656C73657B61';
wwv_flow_api.g_varchar2_table(266) := '282770726F6265207472616E73706F72742022257322206661696C6564272C74293B766172206E3D6E6577204572726F72282270726F6265206572726F7222293B6E2E7472616E73706F72743D752E6E616D652C662E656D697428227570677261646545';
wwv_flow_api.g_varchar2_table(267) := '72726F72222C6E297D7D29297D66756E6374696F6E206E28297B687C7C28683D21302C7028292C752E636C6F736528292C753D6E756C6C297D66756E6374696F6E206F2865297B76617220723D6E6577204572726F72282270726F6265206572726F723A';
wwv_flow_api.g_varchar2_table(268) := '20222B65293B722E7472616E73706F72743D752E6E616D652C6E28292C61282770726F6265207472616E73706F72742022257322206661696C65642062656361757365206F66206572726F723A202573272C742C65292C662E656D697428227570677261';
wwv_flow_api.g_varchar2_table(269) := '64654572726F72222C72297D66756E6374696F6E206928297B6F28227472616E73706F727420636C6F73656422297D66756E6374696F6E207328297B6F2822736F636B657420636C6F73656422297D66756E6374696F6E20632874297B752626742E6E61';
wwv_flow_api.g_varchar2_table(270) := '6D65213D3D752E6E616D652626286128272225732220776F726B73202D2061626F7274696E672022257322272C742E6E616D652C752E6E616D65292C6E2829297D66756E6374696F6E207028297B752E72656D6F76654C697374656E657228226F70656E';
wwv_flow_api.g_varchar2_table(271) := '222C65292C752E72656D6F76654C697374656E657228226572726F72222C6F292C752E72656D6F76654C697374656E65722822636C6F7365222C69292C662E72656D6F76654C697374656E65722822636C6F7365222C73292C662E72656D6F76654C6973';
wwv_flow_api.g_varchar2_table(272) := '74656E65722822757067726164696E67222C63297D61282770726F62696E67207472616E73706F72742022257322272C74293B76617220753D746869732E6372656174655472616E73706F727428742C7B70726F62653A317D292C683D21312C663D7468';
wwv_flow_api.g_varchar2_table(273) := '69733B722E7072696F72576562736F636B6574537563636573733D21312C752E6F6E636528226F70656E222C65292C752E6F6E636528226572726F72222C6F292C752E6F6E63652822636C6F7365222C69292C746869732E6F6E63652822636C6F736522';
wwv_flow_api.g_varchar2_table(274) := '2C73292C746869732E6F6E63652822757067726164696E67222C63292C752E6F70656E28297D2C722E70726F746F747970652E6F6E4F70656E3D66756E6374696F6E28297B696628612822736F636B6574206F70656E22292C746869732E726561647953';
wwv_flow_api.g_varchar2_table(275) := '746174653D226F70656E222C722E7072696F72576562736F636B6574537563636573733D22776562736F636B6574223D3D3D746869732E7472616E73706F72742E6E616D652C746869732E656D697428226F70656E22292C746869732E666C7573682829';
wwv_flow_api.g_varchar2_table(276) := '2C226F70656E223D3D3D746869732E726561647953746174652626746869732E757067726164652626746869732E7472616E73706F72742E7061757365297B6128227374617274696E6720757067726164652070726F62657322293B666F722876617220';
wwv_flow_api.g_varchar2_table(277) := '743D302C653D746869732E75706772616465732E6C656E6774683B743C653B742B2B29746869732E70726F626528746869732E75706772616465735B745D297D7D2C722E70726F746F747970652E6F6E5061636B65743D66756E6374696F6E2874297B69';
wwv_flow_api.g_varchar2_table(278) := '6628226F70656E696E67223D3D3D746869732E726561647953746174657C7C226F70656E223D3D3D746869732E726561647953746174657C7C22636C6F73696E67223D3D3D746869732E726561647953746174652973776974636828612827736F636B65';
wwv_flow_api.g_varchar2_table(279) := '7420726563656976653A207479706520222573222C20646174612022257322272C742E747970652C742E64617461292C746869732E656D697428227061636B6574222C74292C746869732E656D6974282268656172746265617422292C742E7479706529';
wwv_flow_api.g_varchar2_table(280) := '7B63617365226F70656E223A746869732E6F6E48616E647368616B65284A534F4E2E706172736528742E6461746129293B627265616B3B6361736522706F6E67223A746869732E73657450696E6728292C746869732E656D69742822706F6E6722293B62';
wwv_flow_api.g_varchar2_table(281) := '7265616B3B63617365226572726F72223A76617220653D6E6577204572726F722822736572766572206572726F7222293B652E636F64653D742E646174612C746869732E6F6E4572726F722865293B627265616B3B63617365226D657373616765223A74';
wwv_flow_api.g_varchar2_table(282) := '6869732E656D6974282264617461222C742E64617461292C746869732E656D697428226D657373616765222C742E64617461297D656C7365206128277061636B6574207265636569766564207769746820736F636B657420726561647953746174652022';
wwv_flow_api.g_varchar2_table(283) := '257322272C746869732E72656164795374617465297D2C722E70726F746F747970652E6F6E48616E647368616B653D66756E6374696F6E2874297B746869732E656D6974282268616E647368616B65222C74292C746869732E69643D742E7369642C7468';
wwv_flow_api.g_varchar2_table(284) := '69732E7472616E73706F72742E71756572792E7369643D742E7369642C746869732E75706772616465733D746869732E66696C746572557067726164657328742E7570677261646573292C746869732E70696E67496E74657276616C3D742E70696E6749';
wwv_flow_api.g_varchar2_table(285) := '6E74657276616C2C746869732E70696E6754696D656F75743D742E70696E6754696D656F75742C746869732E6F6E4F70656E28292C22636C6F73656422213D3D746869732E72656164795374617465262628746869732E73657450696E6728292C746869';
wwv_flow_api.g_varchar2_table(286) := '732E72656D6F76654C697374656E65722822686561727462656174222C746869732E6F6E486561727462656174292C746869732E6F6E2822686561727462656174222C746869732E6F6E48656172746265617429297D2C722E70726F746F747970652E6F';
wwv_flow_api.g_varchar2_table(287) := '6E4865617274626561743D66756E6374696F6E2874297B636C65617254696D656F757428746869732E70696E6754696D656F757454696D6572293B76617220653D746869733B652E70696E6754696D656F757454696D65723D73657454696D656F757428';
wwv_flow_api.g_varchar2_table(288) := '66756E6374696F6E28297B22636C6F73656422213D3D652E726561647953746174652626652E6F6E436C6F7365282270696E672074696D656F757422297D2C747C7C652E70696E67496E74657276616C2B652E70696E6754696D656F7574297D2C722E70';
wwv_flow_api.g_varchar2_table(289) := '726F746F747970652E73657450696E673D66756E6374696F6E28297B76617220743D746869733B636C65617254696D656F757428742E70696E67496E74657276616C54696D6572292C742E70696E67496E74657276616C54696D65723D73657454696D65';
wwv_flow_api.g_varchar2_table(290) := '6F75742866756E6374696F6E28297B61282277726974696E672070696E67207061636B6574202D20657870656374696E6720706F6E672077697468696E2025736D73222C742E70696E6754696D656F7574292C742E70696E6728292C742E6F6E48656172';
wwv_flow_api.g_varchar2_table(291) := '746265617428742E70696E6754696D656F7574297D2C742E70696E67496E74657276616C297D2C722E70726F746F747970652E70696E673D66756E6374696F6E28297B76617220743D746869733B746869732E73656E645061636B6574282270696E6722';
wwv_flow_api.g_varchar2_table(292) := '2C66756E6374696F6E28297B742E656D6974282270696E6722297D297D2C722E70726F746F747970652E6F6E447261696E3D66756E6374696F6E28297B746869732E77726974654275666665722E73706C69636528302C746869732E7072657642756666';
wwv_flow_api.g_varchar2_table(293) := '65724C656E292C746869732E707265764275666665724C656E3D302C303D3D3D746869732E77726974654275666665722E6C656E6774683F746869732E656D69742822647261696E22293A746869732E666C75736828297D2C722E70726F746F74797065';
wwv_flow_api.g_varchar2_table(294) := '2E666C7573683D66756E6374696F6E28297B22636C6F73656422213D3D746869732E726561647953746174652626746869732E7472616E73706F72742E7772697461626C65262621746869732E757067726164696E672626746869732E77726974654275';
wwv_flow_api.g_varchar2_table(295) := '666665722E6C656E677468262628612822666C757368696E67202564207061636B65747320696E20736F636B6574222C746869732E77726974654275666665722E6C656E677468292C746869732E7472616E73706F72742E73656E6428746869732E7772';
wwv_flow_api.g_varchar2_table(296) := '697465427566666572292C746869732E707265764275666665724C656E3D746869732E77726974654275666665722E6C656E6774682C746869732E656D69742822666C7573682229297D2C722E70726F746F747970652E77726974653D722E70726F746F';
wwv_flow_api.g_varchar2_table(297) := '747970652E73656E643D66756E6374696F6E28742C652C6E297B72657475726E20746869732E73656E645061636B657428226D657373616765222C742C652C6E292C746869737D2C722E70726F746F747970652E73656E645061636B65743D66756E6374';
wwv_flow_api.g_varchar2_table(298) := '696F6E28742C652C6E2C72297B6966282266756E6374696F6E223D3D747970656F662065262628723D652C653D766F69642030292C2266756E6374696F6E223D3D747970656F66206E262628723D6E2C6E3D6E756C6C292C22636C6F73696E6722213D3D';
wwv_flow_api.g_varchar2_table(299) := '746869732E72656164795374617465262622636C6F73656422213D3D746869732E72656164795374617465297B6E3D6E7C7C7B7D2C6E2E636F6D70726573733D2131213D3D6E2E636F6D70726573733B766172206F3D7B747970653A742C646174613A65';
wwv_flow_api.g_varchar2_table(300) := '2C6F7074696F6E733A6E7D3B746869732E656D697428227061636B6574437265617465222C6F292C746869732E77726974654275666665722E70757368286F292C722626746869732E6F6E63652822666C757368222C72292C746869732E666C75736828';
wwv_flow_api.g_varchar2_table(301) := '297D7D2C722E70726F746F747970652E636C6F73653D66756E6374696F6E28297B66756E6374696F6E207428297B722E6F6E436C6F73652822666F7263656420636C6F736522292C612822736F636B657420636C6F73696E67202D2074656C6C696E6720';
wwv_flow_api.g_varchar2_table(302) := '7472616E73706F727420746F20636C6F736522292C722E7472616E73706F72742E636C6F736528297D66756E6374696F6E206528297B722E72656D6F76654C697374656E6572282275706772616465222C65292C722E72656D6F76654C697374656E6572';
wwv_flow_api.g_varchar2_table(303) := '2822757067726164654572726F72222C65292C7428297D66756E6374696F6E206E28297B722E6F6E6365282275706772616465222C65292C722E6F6E63652822757067726164654572726F72222C65297D696628226F70656E696E67223D3D3D74686973';
wwv_flow_api.g_varchar2_table(304) := '2E726561647953746174657C7C226F70656E223D3D3D746869732E72656164795374617465297B746869732E726561647953746174653D22636C6F73696E67223B76617220723D746869733B746869732E77726974654275666665722E6C656E6774683F';
wwv_flow_api.g_varchar2_table(305) := '746869732E6F6E63652822647261696E222C66756E6374696F6E28297B746869732E757067726164696E673F6E28293A7428297D293A746869732E757067726164696E673F6E28293A7428297D72657475726E20746869737D2C722E70726F746F747970';
wwv_flow_api.g_varchar2_table(306) := '652E6F6E4572726F723D66756E6374696F6E2874297B612822736F636B6574206572726F7220256A222C74292C722E7072696F72576562736F636B6574537563636573733D21312C746869732E656D697428226572726F72222C74292C746869732E6F6E';
wwv_flow_api.g_varchar2_table(307) := '436C6F736528227472616E73706F7274206572726F72222C74297D2C722E70726F746F747970652E6F6E436C6F73653D66756E6374696F6E28742C65297B696628226F70656E696E67223D3D3D746869732E726561647953746174657C7C226F70656E22';
wwv_flow_api.g_varchar2_table(308) := '3D3D3D746869732E726561647953746174657C7C22636C6F73696E67223D3D3D746869732E72656164795374617465297B612827736F636B657420636C6F7365207769746820726561736F6E3A2022257322272C74293B766172206E3D746869733B636C';
wwv_flow_api.g_varchar2_table(309) := '65617254696D656F757428746869732E70696E67496E74657276616C54696D6572292C636C65617254696D656F757428746869732E70696E6754696D656F757454696D6572292C746869732E7472616E73706F72742E72656D6F7665416C6C4C69737465';
wwv_flow_api.g_varchar2_table(310) := '6E6572732822636C6F736522292C746869732E7472616E73706F72742E636C6F736528292C746869732E7472616E73706F72742E72656D6F7665416C6C4C697374656E65727328292C746869732E726561647953746174653D22636C6F736564222C7468';
wwv_flow_api.g_varchar2_table(311) := '69732E69643D6E756C6C2C746869732E656D69742822636C6F7365222C742C65292C6E2E77726974654275666665723D5B5D2C6E2E707265764275666665724C656E3D307D7D2C722E70726F746F747970652E66696C74657255706772616465733D6675';
wwv_flow_api.g_varchar2_table(312) := '6E6374696F6E2874297B666F722876617220653D5B5D2C6E3D302C723D742E6C656E6774683B6E3C723B6E2B2B297E6328746869732E7472616E73706F7274732C745B6E5D292626652E7075736828745B6E5D293B72657475726E20657D7D292E63616C';
wwv_flow_api.g_varchar2_table(313) := '6C28652C66756E6374696F6E28297B72657475726E20746869737D2829297D2C66756E6374696F6E28742C652C6E297B2866756E6374696F6E2874297B66756E6374696F6E20722865297B766172206E2C723D21312C613D21312C633D2131213D3D652E';
wwv_flow_api.g_varchar2_table(314) := '6A736F6E703B696628742E6C6F636174696F6E297B76617220703D2268747470733A223D3D3D6C6F636174696F6E2E70726F746F636F6C2C753D6C6F636174696F6E2E706F72743B757C7C28753D703F3434333A3830292C723D652E686F73746E616D65';
wwv_flow_api.g_varchar2_table(315) := '213D3D6C6F636174696F6E2E686F73746E616D657C7C75213D3D652E706F72742C613D652E736563757265213D3D707D696628652E78646F6D61696E3D722C652E78736368656D653D612C6E3D6E6577206F2865292C226F70656E22696E206E26262165';
wwv_flow_api.g_varchar2_table(316) := '2E666F7263654A534F4E502972657475726E206E657720692865293B6966282163297468726F77206E6577204572726F7228224A534F4E502064697361626C656422293B72657475726E206E657720732865297D766172206F3D6E283137292C693D6E28';
wwv_flow_api.g_varchar2_table(317) := '3139292C733D6E283333292C613D6E283334293B652E706F6C6C696E673D722C652E776562736F636B65743D617D292E63616C6C28652C66756E6374696F6E28297B72657475726E20746869737D2829297D2C66756E6374696F6E28742C652C6E297B28';
wwv_flow_api.g_varchar2_table(318) := '66756E6374696F6E2865297B76617220723D6E283138293B742E6578706F7274733D66756E6374696F6E2874297B766172206E3D742E78646F6D61696E2C6F3D742E78736368656D652C693D742E656E61626C65735844523B7472797B69662822756E64';
wwv_flow_api.g_varchar2_table(319) := '6566696E656422213D747970656F6620584D4C4874747052657175657374262628216E7C7C72292972657475726E206E657720584D4C48747470526571756573747D63617463682873297B7D7472797B69662822756E646566696E656422213D74797065';
wwv_flow_api.g_varchar2_table(320) := '6F662058446F6D61696E526571756573742626216F2626692972657475726E206E65772058446F6D61696E526571756573747D63617463682873297B7D696628216E297472797B72657475726E206E657728655B5B22416374697665225D2E636F6E6361';
wwv_flow_api.g_varchar2_table(321) := '7428224F626A65637422292E6A6F696E28225822295D2928224D6963726F736F66742E584D4C4854545022293B0A7D63617463682873297B7D7D7D292E63616C6C28652C66756E6374696F6E28297B72657475726E20746869737D2829297D2C66756E63';
wwv_flow_api.g_varchar2_table(322) := '74696F6E28742C65297B7472797B742E6578706F7274733D22756E646566696E656422213D747970656F6620584D4C48747470526571756573742626227769746843726564656E7469616C7322696E206E657720584D4C48747470526571756573747D63';
wwv_flow_api.g_varchar2_table(323) := '61746368286E297B742E6578706F7274733D21317D7D2C66756E6374696F6E28742C652C6E297B2866756E6374696F6E2865297B66756E6374696F6E207228297B7D66756E6374696F6E206F2874297B696628632E63616C6C28746869732C74292C7468';
wwv_flow_api.g_varchar2_table(324) := '69732E7265717565737454696D656F75743D742E7265717565737454696D656F75742C746869732E6578747261486561646572733D742E6578747261486561646572732C652E6C6F636174696F6E297B766172206E3D2268747470733A223D3D3D6C6F63';
wwv_flow_api.g_varchar2_table(325) := '6174696F6E2E70726F746F636F6C2C723D6C6F636174696F6E2E706F72743B727C7C28723D6E3F3434333A3830292C746869732E78643D742E686F73746E616D65213D3D652E6C6F636174696F6E2E686F73746E616D657C7C72213D3D742E706F72742C';
wwv_flow_api.g_varchar2_table(326) := '746869732E78733D742E736563757265213D3D6E7D7D66756E6374696F6E20692874297B746869732E6D6574686F643D742E6D6574686F647C7C22474554222C746869732E7572693D742E7572692C746869732E78643D2121742E78642C746869732E78';
wwv_flow_api.g_varchar2_table(327) := '733D2121742E78732C746869732E6173796E633D2131213D3D742E6173796E632C746869732E646174613D766F69642030213D3D742E646174613F742E646174613A6E756C6C2C746869732E6167656E743D742E6167656E742C746869732E697342696E';
wwv_flow_api.g_varchar2_table(328) := '6172793D742E697342696E6172792C746869732E737570706F72747342696E6172793D742E737570706F72747342696E6172792C746869732E656E61626C65735844523D742E656E61626C65735844522C746869732E7265717565737454696D656F7574';
wwv_flow_api.g_varchar2_table(329) := '3D742E7265717565737454696D656F75742C746869732E7066783D742E7066782C746869732E6B65793D742E6B65792C746869732E706173737068726173653D742E706173737068726173652C746869732E636572743D742E636572742C746869732E63';
wwv_flow_api.g_varchar2_table(330) := '613D742E63612C746869732E636970686572733D742E636970686572732C746869732E72656A656374556E617574686F72697A65643D742E72656A656374556E617574686F72697A65642C746869732E6578747261486561646572733D742E6578747261';
wwv_flow_api.g_varchar2_table(331) := '486561646572732C746869732E63726561746528297D66756E6374696F6E207328297B666F7228766172207420696E20692E726571756573747329692E72657175657374732E6861734F776E50726F70657274792874292626692E72657175657374735B';
wwv_flow_api.g_varchar2_table(332) := '745D2E61626F727428297D76617220613D6E283137292C633D6E283230292C703D6E2838292C753D6E283331292C683D6E2833292822656E67696E652E696F2D636C69656E743A706F6C6C696E672D78687222293B742E6578706F7274733D6F2C742E65';
wwv_flow_api.g_varchar2_table(333) := '78706F7274732E526571756573743D692C75286F2C63292C6F2E70726F746F747970652E737570706F72747342696E6172793D21302C6F2E70726F746F747970652E726571756573743D66756E6374696F6E2874297B72657475726E20743D747C7C7B7D';
wwv_flow_api.g_varchar2_table(334) := '2C742E7572693D746869732E75726928292C742E78643D746869732E78642C742E78733D746869732E78732C742E6167656E743D746869732E6167656E747C7C21312C742E737570706F72747342696E6172793D746869732E737570706F72747342696E';
wwv_flow_api.g_varchar2_table(335) := '6172792C742E656E61626C65735844523D746869732E656E61626C65735844522C742E7066783D746869732E7066782C742E6B65793D746869732E6B65792C742E706173737068726173653D746869732E706173737068726173652C742E636572743D74';
wwv_flow_api.g_varchar2_table(336) := '6869732E636572742C742E63613D746869732E63612C742E636970686572733D746869732E636970686572732C742E72656A656374556E617574686F72697A65643D746869732E72656A656374556E617574686F72697A65642C742E7265717565737454';
wwv_flow_api.g_varchar2_table(337) := '696D656F75743D746869732E7265717565737454696D656F75742C742E6578747261486561646572733D746869732E6578747261486561646572732C6E657720692874297D2C6F2E70726F746F747970652E646F57726974653D66756E6374696F6E2874';
wwv_flow_api.g_varchar2_table(338) := '2C65297B766172206E3D22737472696E6722213D747970656F6620742626766F69642030213D3D742C723D746869732E72657175657374287B6D6574686F643A22504F5354222C646174613A742C697342696E6172793A6E7D292C6F3D746869733B722E';
wwv_flow_api.g_varchar2_table(339) := '6F6E282273756363657373222C65292C722E6F6E28226572726F72222C66756E6374696F6E2874297B6F2E6F6E4572726F72282278687220706F7374206572726F72222C74297D292C746869732E73656E645868723D727D2C6F2E70726F746F74797065';
wwv_flow_api.g_varchar2_table(340) := '2E646F506F6C6C3D66756E6374696F6E28297B68282278687220706F6C6C22293B76617220743D746869732E7265717565737428292C653D746869733B742E6F6E282264617461222C66756E6374696F6E2874297B652E6F6E446174612874297D292C74';
wwv_flow_api.g_varchar2_table(341) := '2E6F6E28226572726F72222C66756E6374696F6E2874297B652E6F6E4572726F72282278687220706F6C6C206572726F72222C74297D292C746869732E706F6C6C5868723D747D2C7028692E70726F746F74797065292C692E70726F746F747970652E63';
wwv_flow_api.g_varchar2_table(342) := '72656174653D66756E6374696F6E28297B76617220743D7B6167656E743A746869732E6167656E742C78646F6D61696E3A746869732E78642C78736368656D653A746869732E78732C656E61626C65735844523A746869732E656E61626C65735844527D';
wwv_flow_api.g_varchar2_table(343) := '3B742E7066783D746869732E7066782C742E6B65793D746869732E6B65792C742E706173737068726173653D746869732E706173737068726173652C742E636572743D746869732E636572742C742E63613D746869732E63612C742E636970686572733D';
wwv_flow_api.g_varchar2_table(344) := '746869732E636970686572732C742E72656A656374556E617574686F72697A65643D746869732E72656A656374556E617574686F72697A65643B766172206E3D746869732E7868723D6E657720612874292C723D746869733B7472797B68282278687220';
wwv_flow_api.g_varchar2_table(345) := '6F70656E2025733A202573222C746869732E6D6574686F642C746869732E757269292C6E2E6F70656E28746869732E6D6574686F642C746869732E7572692C746869732E6173796E63293B7472797B696628746869732E65787472614865616465727329';
wwv_flow_api.g_varchar2_table(346) := '7B6E2E73657444697361626C65486561646572436865636B26266E2E73657444697361626C65486561646572436865636B282130293B666F7228766172206F20696E20746869732E65787472614865616465727329746869732E65787472614865616465';
wwv_flow_api.g_varchar2_table(347) := '72732E6861734F776E50726F7065727479286F2926266E2E73657452657175657374486561646572286F2C746869732E6578747261486561646572735B6F5D297D7D63617463682873297B7D69662822504F5354223D3D3D746869732E6D6574686F6429';
wwv_flow_api.g_varchar2_table(348) := '7472797B746869732E697342696E6172793F6E2E736574526571756573744865616465722822436F6E74656E742D74797065222C226170706C69636174696F6E2F6F637465742D73747265616D22293A6E2E736574526571756573744865616465722822';
wwv_flow_api.g_varchar2_table(349) := '436F6E74656E742D74797065222C22746578742F706C61696E3B636861727365743D5554462D3822297D63617463682873297B7D7472797B6E2E736574526571756573744865616465722822416363657074222C222A2F2A22297D63617463682873297B';
wwv_flow_api.g_varchar2_table(350) := '7D227769746843726564656E7469616C7322696E206E2626286E2E7769746843726564656E7469616C733D2130292C746869732E7265717565737454696D656F75742626286E2E74696D656F75743D746869732E7265717565737454696D656F7574292C';
wwv_flow_api.g_varchar2_table(351) := '746869732E68617358445228293F286E2E6F6E6C6F61643D66756E6374696F6E28297B722E6F6E4C6F616428297D2C6E2E6F6E6572726F723D66756E6374696F6E28297B722E6F6E4572726F72286E2E726573706F6E736554657874297D293A6E2E6F6E';
wwv_flow_api.g_varchar2_table(352) := '726561647973746174656368616E67653D66756E6374696F6E28297B696628323D3D3D6E2E72656164795374617465297B76617220743B7472797B743D6E2E676574526573706F6E73654865616465722822436F6E74656E742D5479706522297D636174';
wwv_flow_api.g_varchar2_table(353) := '63682865297B7D226170706C69636174696F6E2F6F637465742D73747265616D223D3D3D742626286E2E726573706F6E7365547970653D22617272617962756666657222297D343D3D3D6E2E726561647953746174652626283230303D3D3D6E2E737461';
wwv_flow_api.g_varchar2_table(354) := '7475737C7C313232333D3D3D6E2E7374617475733F722E6F6E4C6F616428293A73657454696D656F75742866756E6374696F6E28297B722E6F6E4572726F72286E2E737461747573297D2C3029297D2C6828227868722064617461202573222C74686973';
wwv_flow_api.g_varchar2_table(355) := '2E64617461292C6E2E73656E6428746869732E64617461297D63617463682873297B72657475726E20766F69642073657454696D656F75742866756E6374696F6E28297B722E6F6E4572726F722873297D2C30297D652E646F63756D656E742626287468';
wwv_flow_api.g_varchar2_table(356) := '69732E696E6465783D692E7265717565737473436F756E742B2B2C692E72657175657374735B746869732E696E6465785D3D74686973297D2C692E70726F746F747970652E6F6E537563636573733D66756E6374696F6E28297B746869732E656D697428';
wwv_flow_api.g_varchar2_table(357) := '227375636365737322292C746869732E636C65616E757028297D2C692E70726F746F747970652E6F6E446174613D66756E6374696F6E2874297B746869732E656D6974282264617461222C74292C746869732E6F6E5375636365737328297D2C692E7072';
wwv_flow_api.g_varchar2_table(358) := '6F746F747970652E6F6E4572726F723D66756E6374696F6E2874297B746869732E656D697428226572726F72222C74292C746869732E636C65616E7570282130297D2C692E70726F746F747970652E636C65616E75703D66756E6374696F6E2874297B69';
wwv_flow_api.g_varchar2_table(359) := '662822756E646566696E656422213D747970656F6620746869732E78687226266E756C6C213D3D746869732E786872297B696628746869732E68617358445228293F746869732E7868722E6F6E6C6F61643D746869732E7868722E6F6E6572726F723D72';
wwv_flow_api.g_varchar2_table(360) := '3A746869732E7868722E6F6E726561647973746174656368616E67653D722C74297472797B746869732E7868722E61626F727428297D6361746368286E297B7D652E646F63756D656E74262664656C65746520692E72657175657374735B746869732E69';
wwv_flow_api.g_varchar2_table(361) := '6E6465785D2C746869732E7868723D6E756C6C7D7D2C692E70726F746F747970652E6F6E4C6F61643D66756E6374696F6E28297B76617220743B7472797B76617220653B7472797B653D746869732E7868722E676574526573706F6E7365486561646572';
wwv_flow_api.g_varchar2_table(362) := '2822436F6E74656E742D5479706522297D6361746368286E297B7D743D226170706C69636174696F6E2F6F637465742D73747265616D223D3D3D653F746869732E7868722E726573706F6E73657C7C746869732E7868722E726573706F6E736554657874';
wwv_flow_api.g_varchar2_table(363) := '3A746869732E7868722E726573706F6E7365546578747D6361746368286E297B746869732E6F6E4572726F72286E297D6E756C6C213D742626746869732E6F6E446174612874297D2C692E70726F746F747970652E6861735844523D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(364) := '28297B72657475726E22756E646566696E656422213D747970656F6620652E58446F6D61696E52657175657374262621746869732E78732626746869732E656E61626C65735844527D2C692E70726F746F747970652E61626F72743D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(365) := '28297B746869732E636C65616E757028297D2C692E7265717565737473436F756E743D302C692E72657175657374733D7B7D2C652E646F63756D656E74262628652E6174746163684576656E743F652E6174746163684576656E7428226F6E756E6C6F61';
wwv_flow_api.g_varchar2_table(366) := '64222C73293A652E6164644576656E744C697374656E65722626652E6164644576656E744C697374656E657228226265666F7265756E6C6F6164222C732C213129297D292E63616C6C28652C66756E6374696F6E28297B72657475726E20746869737D28';
wwv_flow_api.g_varchar2_table(367) := '29297D2C66756E6374696F6E28742C652C6E297B66756E6374696F6E20722874297B76617220653D742626742E666F7263654261736536343B75262621657C7C28746869732E737570706F72747342696E6172793D2131292C6F2E63616C6C2874686973';
wwv_flow_api.g_varchar2_table(368) := '2C74297D766172206F3D6E283231292C693D6E283330292C733D6E283232292C613D6E283331292C633D6E283332292C703D6E2833292822656E67696E652E696F2D636C69656E743A706F6C6C696E6722293B742E6578706F7274733D723B7661722075';
wwv_flow_api.g_varchar2_table(369) := '3D66756E6374696F6E28297B76617220743D6E283137292C653D6E65772074287B78646F6D61696E3A21317D293B72657475726E206E756C6C213D652E726573706F6E7365547970657D28293B6128722C6F292C722E70726F746F747970652E6E616D65';
wwv_flow_api.g_varchar2_table(370) := '3D22706F6C6C696E67222C722E70726F746F747970652E646F4F70656E3D66756E6374696F6E28297B746869732E706F6C6C28297D2C722E70726F746F747970652E70617573653D66756E6374696F6E2874297B66756E6374696F6E206528297B702822';
wwv_flow_api.g_varchar2_table(371) := '70617573656422292C6E2E726561647953746174653D22706175736564222C7428297D766172206E3D746869733B696628746869732E726561647953746174653D2270617573696E67222C746869732E706F6C6C696E677C7C21746869732E7772697461';
wwv_flow_api.g_varchar2_table(372) := '626C65297B76617220723D303B746869732E706F6C6C696E672626287028227765206172652063757272656E746C7920706F6C6C696E67202D2077616974696E6720746F20706175736522292C722B2B2C746869732E6F6E63652822706F6C6C436F6D70';
wwv_flow_api.g_varchar2_table(373) := '6C657465222C66756E6374696F6E28297B7028227072652D706175736520706F6C6C696E6720636F6D706C65746522292C2D2D727C7C6528297D29292C746869732E7772697461626C657C7C287028227765206172652063757272656E746C7920777269';
wwv_flow_api.g_varchar2_table(374) := '74696E67202D2077616974696E6720746F20706175736522292C722B2B2C746869732E6F6E63652822647261696E222C66756E6374696F6E28297B7028227072652D70617573652077726974696E6720636F6D706C65746522292C2D2D727C7C6528297D';
wwv_flow_api.g_varchar2_table(375) := '29297D656C7365206528297D2C722E70726F746F747970652E706F6C6C3D66756E6374696F6E28297B702822706F6C6C696E6722292C746869732E706F6C6C696E673D21302C746869732E646F506F6C6C28292C746869732E656D69742822706F6C6C22';
wwv_flow_api.g_varchar2_table(376) := '297D2C722E70726F746F747970652E6F6E446174613D66756E6374696F6E2874297B76617220653D746869733B702822706F6C6C696E6720676F742064617461202573222C74293B766172206E3D66756E6374696F6E28742C6E2C72297B72657475726E';
wwv_flow_api.g_varchar2_table(377) := '226F70656E696E67223D3D3D652E726561647953746174652626652E6F6E4F70656E28292C22636C6F7365223D3D3D742E747970653F28652E6F6E436C6F736528292C2131293A766F696420652E6F6E5061636B65742874297D3B732E6465636F646550';
wwv_flow_api.g_varchar2_table(378) := '61796C6F616428742C746869732E736F636B65742E62696E617279547970652C6E292C22636C6F73656422213D3D746869732E72656164795374617465262628746869732E706F6C6C696E673D21312C746869732E656D69742822706F6C6C436F6D706C';
wwv_flow_api.g_varchar2_table(379) := '65746522292C226F70656E223D3D3D746869732E726561647953746174653F746869732E706F6C6C28293A70282769676E6F72696E6720706F6C6C202D207472616E73706F72742073746174652022257322272C746869732E7265616479537461746529';
wwv_flow_api.g_varchar2_table(380) := '297D2C722E70726F746F747970652E646F436C6F73653D66756E6374696F6E28297B66756E6374696F6E207428297B70282277726974696E6720636C6F7365207061636B657422292C652E7772697465285B7B747970653A22636C6F7365227D5D297D76';
wwv_flow_api.g_varchar2_table(381) := '617220653D746869733B226F70656E223D3D3D746869732E726561647953746174653F287028227472616E73706F7274206F70656E202D20636C6F73696E6722292C742829293A287028227472616E73706F7274206E6F74206F70656E202D2064656665';
wwv_flow_api.g_varchar2_table(382) := '7272696E6720636C6F736522292C746869732E6F6E636528226F70656E222C7429297D2C722E70726F746F747970652E77726974653D66756E6374696F6E2874297B76617220653D746869733B746869732E7772697461626C653D21313B766172206E3D';
wwv_flow_api.g_varchar2_table(383) := '66756E6374696F6E28297B652E7772697461626C653D21302C652E656D69742822647261696E22297D3B732E656E636F64655061796C6F616428742C746869732E737570706F72747342696E6172792C66756E6374696F6E2874297B652E646F57726974';
wwv_flow_api.g_varchar2_table(384) := '6528742C6E297D297D2C722E70726F746F747970652E7572693D66756E6374696F6E28297B76617220743D746869732E71756572797C7C7B7D2C653D746869732E7365637572653F226874747073223A2268747470222C6E3D22223B2131213D3D746869';
wwv_flow_api.g_varchar2_table(385) := '732E74696D657374616D705265717565737473262628745B746869732E74696D657374616D70506172616D5D3D632829292C746869732E737570706F72747342696E6172797C7C742E7369647C7C28742E6236343D31292C743D692E656E636F64652874';
wwv_flow_api.g_varchar2_table(386) := '292C746869732E706F7274262628226874747073223D3D3D652626343433213D3D4E756D62657228746869732E706F7274297C7C2268747470223D3D3D6526263830213D3D4E756D62657228746869732E706F727429292626286E3D223A222B74686973';
wwv_flow_api.g_varchar2_table(387) := '2E706F7274292C742E6C656E677468262628743D223F222B74293B76617220723D746869732E686F73746E616D652E696E6465784F6628223A2229213D3D2D313B72657475726E20652B223A2F2F222B28723F225B222B746869732E686F73746E616D65';
wwv_flow_api.g_varchar2_table(388) := '2B225D223A746869732E686F73746E616D65292B6E2B746869732E706174682B747D7D2C66756E6374696F6E28742C652C6E297B66756E6374696F6E20722874297B746869732E706174683D742E706174682C746869732E686F73746E616D653D742E68';
wwv_flow_api.g_varchar2_table(389) := '6F73746E616D652C746869732E706F72743D742E706F72742C746869732E7365637572653D742E7365637572652C746869732E71756572793D742E71756572792C746869732E74696D657374616D70506172616D3D742E74696D657374616D7050617261';
wwv_flow_api.g_varchar2_table(390) := '6D2C746869732E74696D657374616D7052657175657374733D742E74696D657374616D7052657175657374732C746869732E726561647953746174653D22222C746869732E6167656E743D742E6167656E747C7C21312C746869732E736F636B65743D74';
wwv_flow_api.g_varchar2_table(391) := '2E736F636B65742C746869732E656E61626C65735844523D742E656E61626C65735844522C746869732E7066783D742E7066782C746869732E6B65793D742E6B65792C746869732E706173737068726173653D742E706173737068726173652C74686973';
wwv_flow_api.g_varchar2_table(392) := '2E636572743D742E636572742C746869732E63613D742E63612C746869732E636970686572733D742E636970686572732C746869732E72656A656374556E617574686F72697A65643D742E72656A656374556E617574686F72697A65642C746869732E66';
wwv_flow_api.g_varchar2_table(393) := '6F7263654E6F64653D742E666F7263654E6F64652C746869732E6578747261486561646572733D742E6578747261486561646572732C746869732E6C6F63616C416464726573733D742E6C6F63616C416464726573737D766172206F3D6E283232292C69';
wwv_flow_api.g_varchar2_table(394) := '3D6E2838293B742E6578706F7274733D722C6928722E70726F746F74797065292C722E70726F746F747970652E6F6E4572726F723D66756E6374696F6E28742C65297B766172206E3D6E6577204572726F722874293B72657475726E206E2E747970653D';
wwv_flow_api.g_varchar2_table(395) := '225472616E73706F72744572726F72222C6E2E6465736372697074696F6E3D652C746869732E656D697428226572726F72222C6E292C746869737D2C722E70726F746F747970652E6F70656E3D66756E6374696F6E28297B72657475726E22636C6F7365';
wwv_flow_api.g_varchar2_table(396) := '6422213D3D746869732E7265616479537461746526262222213D3D746869732E726561647953746174657C7C28746869732E726561647953746174653D226F70656E696E67222C746869732E646F4F70656E2829292C746869737D2C722E70726F746F74';
wwv_flow_api.g_varchar2_table(397) := '7970652E636C6F73653D66756E6374696F6E28297B72657475726E226F70656E696E6722213D3D746869732E726561647953746174652626226F70656E22213D3D746869732E726561647953746174657C7C28746869732E646F436C6F736528292C7468';
wwv_flow_api.g_varchar2_table(398) := '69732E6F6E436C6F73652829292C746869737D2C722E70726F746F747970652E73656E643D66756E6374696F6E2874297B696628226F70656E22213D3D746869732E72656164795374617465297468726F77206E6577204572726F7228225472616E7370';
wwv_flow_api.g_varchar2_table(399) := '6F7274206E6F74206F70656E22293B746869732E77726974652874297D2C722E70726F746F747970652E6F6E4F70656E3D66756E6374696F6E28297B746869732E726561647953746174653D226F70656E222C746869732E7772697461626C653D21302C';
wwv_flow_api.g_varchar2_table(400) := '746869732E656D697428226F70656E22297D2C722E70726F746F747970652E6F6E446174613D66756E6374696F6E2874297B76617220653D6F2E6465636F64655061636B657428742C746869732E736F636B65742E62696E61727954797065293B746869';
wwv_flow_api.g_varchar2_table(401) := '732E6F6E5061636B65742865297D2C722E70726F746F747970652E6F6E5061636B65743D66756E6374696F6E2874297B746869732E656D697428227061636B6574222C74297D2C722E70726F746F747970652E6F6E436C6F73653D66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(402) := '297B746869732E726561647953746174653D22636C6F736564222C746869732E656D69742822636C6F736522297D7D2C66756E6374696F6E28742C652C6E297B2866756E6374696F6E2874297B66756E6374696F6E207228742C6E297B76617220723D22';
wwv_flow_api.g_varchar2_table(403) := '62222B652E7061636B6574735B742E747970655D2B742E646174612E646174613B72657475726E206E2872297D66756E6374696F6E206F28742C6E2C72297B696628216E2972657475726E20652E656E636F64654261736536345061636B657428742C72';
wwv_flow_api.g_varchar2_table(404) := '293B766172206F3D742E646174612C693D6E65772055696E74384172726179286F292C733D6E65772055696E7438417272617928312B6F2E627974654C656E677468293B735B305D3D765B742E747970655D3B666F722876617220613D303B613C692E6C';
wwv_flow_api.g_varchar2_table(405) := '656E6774683B612B2B29735B612B315D3D695B615D3B72657475726E207228732E627566666572297D66756E6374696F6E206928742C6E2C72297B696628216E2972657475726E20652E656E636F64654261736536345061636B657428742C72293B7661';
wwv_flow_api.g_varchar2_table(406) := '72206F3D6E65772046696C655265616465723B72657475726E206F2E6F6E6C6F61643D66756E6374696F6E28297B742E646174613D6F2E726573756C742C652E656E636F64655061636B657428742C6E2C21302C72297D2C6F2E72656164417341727261';
wwv_flow_api.g_varchar2_table(407) := '7942756666657228742E64617461297D66756E6374696F6E207328742C6E2C72297B696628216E2972657475726E20652E656E636F64654261736536345061636B657428742C72293B696628672972657475726E206928742C6E2C72293B766172206F3D';
wwv_flow_api.g_varchar2_table(408) := '6E65772055696E743841727261792831293B6F5B305D3D765B742E747970655D3B76617220733D6E6577206B285B6F2E6275666665722C742E646174615D293B72657475726E20722873297D66756E6374696F6E20612874297B7472797B743D642E6465';
wwv_flow_api.g_varchar2_table(409) := '636F646528742C7B7374726963743A21317D297D63617463682865297B72657475726E21317D72657475726E20747D66756E6374696F6E206328742C652C6E297B666F722876617220723D6E657720417272617928742E6C656E677468292C6F3D6C2874';
wwv_flow_api.g_varchar2_table(410) := '2E6C656E6774682C6E292C693D66756E6374696F6E28742C6E2C6F297B65286E2C66756E6374696F6E28652C6E297B725B745D3D6E2C6F28652C72297D297D2C733D303B733C742E6C656E6774683B732B2B296928732C745B735D2C6F297D7661722070';
wwv_flow_api.g_varchar2_table(411) := '2C753D6E283233292C683D6E2839292C663D6E283234292C6C3D6E283235292C643D6E283236293B742626742E4172726179427566666572262628703D6E28323829293B76617220793D22756E646566696E656422213D747970656F66206E6176696761';
wwv_flow_api.g_varchar2_table(412) := '746F7226262F416E64726F69642F692E74657374286E6176696761746F722E757365724167656E74292C6D3D22756E646566696E656422213D747970656F66206E6176696761746F7226262F5068616E746F6D4A532F692E74657374286E617669676174';
wwv_flow_api.g_varchar2_table(413) := '6F722E757365724167656E74292C673D797C7C6D3B652E70726F746F636F6C3D333B76617220763D652E7061636B6574733D7B6F70656E3A302C636C6F73653A312C70696E673A322C706F6E673A332C6D6573736167653A342C757067726164653A352C';
wwv_flow_api.g_varchar2_table(414) := '6E6F6F703A367D2C623D752876292C773D7B747970653A226572726F72222C646174613A22706172736572206572726F72227D2C6B3D6E283239293B652E656E636F64655061636B65743D66756E6374696F6E28652C6E2C692C61297B2266756E637469';
wwv_flow_api.g_varchar2_table(415) := '6F6E223D3D747970656F66206E262628613D6E2C6E3D2131292C2266756E6374696F6E223D3D747970656F662069262628613D692C693D6E756C6C293B76617220633D766F696420303D3D3D652E646174613F766F696420303A652E646174612E627566';
wwv_flow_api.g_varchar2_table(416) := '6665727C7C652E646174613B696628742E417272617942756666657226266320696E7374616E63656F662041727261794275666665722972657475726E206F28652C6E2C61293B6966286B26266320696E7374616E63656F6620742E426C6F6229726574';
wwv_flow_api.g_varchar2_table(417) := '75726E207328652C6E2C61293B696628632626632E6261736536342972657475726E207228652C61293B76617220703D765B652E747970655D3B72657475726E20766F69642030213D3D652E64617461262628702B3D693F642E656E636F646528537472';
wwv_flow_api.g_varchar2_table(418) := '696E6728652E64617461292C7B7374726963743A21317D293A537472696E6728652E6461746129292C612822222B70297D2C652E656E636F64654261736536345061636B65743D66756E6374696F6E286E2C72297B766172206F3D2262222B652E706163';
wwv_flow_api.g_varchar2_table(419) := '6B6574735B6E2E747970655D3B6966286B26266E2E6461746120696E7374616E63656F6620742E426C6F62297B76617220693D6E65772046696C655265616465723B72657475726E20692E6F6E6C6F61643D66756E6374696F6E28297B76617220743D69';
wwv_flow_api.g_varchar2_table(420) := '2E726573756C742E73706C697428222C22295B315D3B72286F2B74297D2C692E7265616441734461746155524C286E2E64617461297D76617220733B7472797B733D537472696E672E66726F6D43686172436F64652E6170706C79286E756C6C2C6E6577';
wwv_flow_api.g_varchar2_table(421) := '2055696E74384172726179286E2E6461746129297D63617463682861297B666F722876617220633D6E65772055696E74384172726179286E2E64617461292C703D6E657720417272617928632E6C656E677468292C753D303B753C632E6C656E6774683B';
wwv_flow_api.g_varchar2_table(422) := '752B2B29705B755D3D635B755D3B733D537472696E672E66726F6D43686172436F64652E6170706C79286E756C6C2C70297D72657475726E206F2B3D742E62746F612873292C72286F297D2C652E6465636F64655061636B65743D66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(423) := '742C6E2C72297B696628766F696420303D3D3D742972657475726E20773B69662822737472696E67223D3D747970656F662074297B6966282262223D3D3D742E6368617241742830292972657475726E20652E6465636F64654261736536345061636B65';
wwv_flow_api.g_varchar2_table(424) := '7428742E7375627374722831292C6E293B69662872262628743D612874292C743D3D3D2131292972657475726E20773B766172206F3D742E6368617241742830293B72657475726E204E756D626572286F293D3D6F2626625B6F5D3F742E6C656E677468';
wwv_flow_api.g_varchar2_table(425) := '3E313F7B747970653A625B6F5D2C646174613A742E737562737472696E672831297D3A7B747970653A625B6F5D7D3A777D76617220693D6E65772055696E743841727261792874292C6F3D695B305D2C733D6628742C31293B72657475726E206B262622';
wwv_flow_api.g_varchar2_table(426) := '626C6F62223D3D3D6E262628733D6E6577206B285B735D29292C7B747970653A625B6F5D2C646174613A737D7D2C652E6465636F64654261736536345061636B65743D66756E6374696F6E28742C65297B766172206E3D625B742E636861724174283029';
wwv_flow_api.g_varchar2_table(427) := '5D3B69662821702972657475726E7B747970653A6E2C646174613A7B6261736536343A21302C646174613A742E7375627374722831297D7D3B76617220723D702E6465636F646528742E737562737472283129293B72657475726E22626C6F62223D3D3D';
wwv_flow_api.g_varchar2_table(428) := '6526266B262628723D6E6577206B285B725D29292C7B747970653A6E2C646174613A727D7D2C652E656E636F64655061796C6F61643D66756E6374696F6E28742C6E2C72297B66756E6374696F6E206F2874297B72657475726E20742E6C656E6774682B';
wwv_flow_api.g_varchar2_table(429) := '223A222B747D66756E6374696F6E206928742C72297B652E656E636F64655061636B657428742C21217326266E2C21312C66756E6374696F6E2874297B72286E756C6C2C6F287429297D297D2266756E6374696F6E223D3D747970656F66206E26262872';
wwv_flow_api.g_varchar2_table(430) := '3D6E2C6E3D6E756C6C293B76617220733D682874293B72657475726E206E2626733F6B262621673F652E656E636F64655061796C6F61644173426C6F6228742C72293A652E656E636F64655061796C6F61644173417272617942756666657228742C7229';
wwv_flow_api.g_varchar2_table(431) := '3A742E6C656E6774683F766F6964206328742C692C66756E6374696F6E28742C65297B72657475726E207228652E6A6F696E28222229297D293A722822303A22297D2C652E6465636F64655061796C6F61643D66756E6374696F6E28742C6E2C72297B69';
wwv_flow_api.g_varchar2_table(432) := '662822737472696E6722213D747970656F6620742972657475726E20652E6465636F64655061796C6F6164417342696E61727928742C6E2C72293B2266756E6374696F6E223D3D747970656F66206E262628723D6E2C6E3D6E756C6C293B766172206F3B';
wwv_flow_api.g_varchar2_table(433) := '69662822223D3D3D742972657475726E207228772C302C31293B666F722876617220692C732C613D22222C633D302C703D742E6C656E6774683B633C703B632B2B297B76617220753D742E6368617241742863293B696628223A223D3D3D75297B696628';
wwv_flow_api.g_varchar2_table(434) := '22223D3D3D617C7C61213D28693D4E756D626572286129292972657475726E207228772C302C31293B696628733D742E73756273747228632B312C69292C61213D732E6C656E6774682972657475726E207228772C302C31293B696628732E6C656E6774';
wwv_flow_api.g_varchar2_table(435) := '68297B6966286F3D652E6465636F64655061636B657428732C6E2C2131292C772E747970653D3D3D6F2E747970652626772E646174613D3D3D6F2E646174612972657475726E207228772C302C31293B76617220683D72286F2C632B692C70293B696628';
wwv_flow_api.g_varchar2_table(436) := '21313D3D3D682972657475726E7D632B3D692C613D22227D656C736520612B3D757D72657475726E2222213D3D613F7228772C302C31293A766F696420307D2C652E656E636F64655061796C6F6164417341727261794275666665723D66756E6374696F';
wwv_flow_api.g_varchar2_table(437) := '6E28742C6E297B66756E6374696F6E207228742C6E297B652E656E636F64655061636B657428742C21302C21302C66756E6374696F6E2874297B72657475726E206E286E756C6C2C74297D297D72657475726E20742E6C656E6774683F766F6964206328';
wwv_flow_api.g_varchar2_table(438) := '742C722C66756E6374696F6E28742C65297B76617220723D652E7265647563652866756E6374696F6E28742C65297B766172206E3B72657475726E206E3D22737472696E67223D3D747970656F6620653F652E6C656E6774683A652E627974654C656E67';
wwv_flow_api.g_varchar2_table(439) := '74682C742B6E2E746F537472696E6728292E6C656E6774682B6E2B327D2C30292C6F3D6E65772055696E743841727261792872292C693D303B72657475726E20652E666F72456163682866756E6374696F6E2874297B76617220653D22737472696E6722';
wwv_flow_api.g_varchar2_table(440) := '3D3D747970656F6620742C6E3D743B69662865297B666F722876617220723D6E65772055696E7438417272617928742E6C656E677468292C733D303B733C742E6C656E6774683B732B2B29725B735D3D742E63686172436F646541742873293B6E3D722E';
wwv_flow_api.g_varchar2_table(441) := '6275666665727D653F6F5B692B2B5D3D303A6F5B692B2B5D3D313B666F722876617220613D6E2E627974654C656E6774682E746F537472696E6728292C733D303B733C612E6C656E6774683B732B2B296F5B692B2B5D3D7061727365496E7428615B735D';
wwv_flow_api.g_varchar2_table(442) := '293B6F5B692B2B5D3D3235353B666F722876617220723D6E65772055696E74384172726179286E292C733D303B733C722E6C656E6774683B732B2B296F5B692B2B5D3D725B735D7D292C6E286F2E627566666572297D293A6E286E657720417272617942';
wwv_flow_api.g_varchar2_table(443) := '7566666572283029297D2C652E656E636F64655061796C6F61644173426C6F623D66756E6374696F6E28742C6E297B66756E6374696F6E207228742C6E297B652E656E636F64655061636B657428742C21302C21302C66756E6374696F6E2874297B7661';
wwv_flow_api.g_varchar2_table(444) := '7220653D6E65772055696E743841727261792831293B696628655B305D3D312C22737472696E67223D3D747970656F662074297B666F722876617220723D6E65772055696E7438417272617928742E6C656E677468292C6F3D303B6F3C742E6C656E6774';
wwv_flow_api.g_varchar2_table(445) := '683B6F2B2B29725B6F5D3D742E63686172436F64654174286F293B743D722E6275666665722C655B305D3D307D666F722876617220693D7420696E7374616E63656F662041727261794275666665723F742E627974654C656E6774683A742E73697A652C';
wwv_flow_api.g_varchar2_table(446) := '733D692E746F537472696E6728292C613D6E65772055696E7438417272617928732E6C656E6774682B31292C6F3D303B6F3C732E6C656E6774683B6F2B2B29615B6F5D3D7061727365496E7428735B6F5D293B696628615B732E6C656E6774685D3D3235';
wwv_flow_api.g_varchar2_table(447) := '352C6B297B76617220633D6E6577206B285B652E6275666665722C612E6275666665722C745D293B6E286E756C6C2C63297D7D297D6328742C722C66756E6374696F6E28742C65297B72657475726E206E286E6577206B286529297D297D2C652E646563';
wwv_flow_api.g_varchar2_table(448) := '6F64655061796C6F6164417342696E6172793D66756E6374696F6E28742C6E2C72297B2266756E6374696F6E223D3D747970656F66206E262628723D6E2C6E3D6E756C6C293B666F7228766172206F3D742C693D5B5D3B6F2E627974654C656E6774683E';
wwv_flow_api.g_varchar2_table(449) := '303B297B666F722876617220733D6E65772055696E74384172726179286F292C613D303D3D3D735B305D2C633D22222C703D313B323535213D3D735B705D3B702B2B297B696628632E6C656E6774683E3331302972657475726E207228772C302C31293B';
wwv_flow_api.g_varchar2_table(450) := '632B3D735B705D7D6F3D66286F2C322B632E6C656E677468292C633D7061727365496E742863293B76617220753D66286F2C302C63293B69662861297472797B753D537472696E672E66726F6D43686172436F64652E6170706C79286E756C6C2C6E6577';
wwv_flow_api.g_varchar2_table(451) := '2055696E74384172726179287529297D63617463682868297B766172206C3D6E65772055696E743841727261792875293B753D22223B666F722876617220703D303B703C6C2E6C656E6774683B702B2B29752B3D537472696E672E66726F6D4368617243';
wwv_flow_api.g_varchar2_table(452) := '6F6465286C5B705D297D692E707573682875292C6F3D66286F2C63297D76617220643D692E6C656E6774683B692E666F72456163682866756E6374696F6E28742C6F297B7228652E6465636F64655061636B657428742C6E2C2130292C6F2C64297D297D';
wwv_flow_api.g_varchar2_table(453) := '7D292E63616C6C28652C66756E6374696F6E28297B72657475726E20746869737D2829297D2C66756E6374696F6E28742C65297B742E6578706F7274733D4F626A6563742E6B6579737C7C66756E6374696F6E2874297B76617220653D5B5D2C6E3D4F62';
wwv_flow_api.g_varchar2_table(454) := '6A6563742E70726F746F747970652E6861734F776E50726F70657274793B666F7228766172207220696E2074296E2E63616C6C28742C72292626652E707573682872293B72657475726E20657D7D2C66756E6374696F6E28742C65297B742E6578706F72';
wwv_flow_api.g_varchar2_table(455) := '74733D66756E6374696F6E28742C652C6E297B76617220723D742E627974654C656E6774683B696628653D657C7C302C6E3D6E7C7C722C742E736C6963652972657475726E20742E736C69636528652C6E293B696628653C30262628652B3D72292C6E3C';
wwv_flow_api.g_varchar2_table(456) := '302626286E2B3D72292C6E3E722626286E3D72292C653E3D727C7C653E3D6E7C7C303D3D3D722972657475726E206E65772041727261794275666665722830293B666F7228766172206F3D6E65772055696E743841727261792874292C693D6E65772055';
wwv_flow_api.g_varchar2_table(457) := '696E74384172726179286E2D65292C733D652C613D303B733C6E3B732B2B2C612B2B29695B615D3D6F5B735D3B72657475726E20692E6275666665727D7D2C66756E6374696F6E28742C65297B66756E6374696F6E206E28742C652C6E297B66756E6374';
wwv_flow_api.g_varchar2_table(458) := '696F6E206F28742C72297B6966286F2E636F756E743C3D30297468726F77206E6577204572726F72282261667465722063616C6C656420746F6F206D616E792074696D657322293B2D2D6F2E636F756E742C743F28693D21302C652874292C653D6E293A';
wwv_flow_api.g_varchar2_table(459) := '30213D3D6F2E636F756E747C7C697C7C65286E756C6C2C72297D76617220693D21313B72657475726E206E3D6E7C7C722C6F2E636F756E743D742C303D3D3D743F6528293A6F7D66756E6374696F6E207228297B7D742E6578706F7274733D6E7D2C6675';
wwv_flow_api.g_varchar2_table(460) := '6E6374696F6E28742C652C6E297B76617220723B2866756E6374696F6E28742C6F297B2166756E6374696F6E2869297B66756E6374696F6E20732874297B666F722876617220652C6E2C723D5B5D2C6F3D302C693D742E6C656E6774683B6F3C693B2965';
wwv_flow_api.g_varchar2_table(461) := '3D742E63686172436F64654174286F2B2B292C653E3D35353239362626653C3D353633313926266F3C693F286E3D742E63686172436F64654174286F2B2B292C35363332303D3D283634353132266E293F722E70757368282828313032332665293C3C31';
wwv_flow_api.g_varchar2_table(462) := '30292B2831303233266E292B3635353336293A28722E707573682865292C6F2D2D29293A722E707573682865293B72657475726E20727D66756E6374696F6E20612874297B666F722876617220652C6E3D742E6C656E6774682C723D2D312C6F3D22223B';
wwv_flow_api.g_varchar2_table(463) := '2B2B723C6E3B29653D745B725D2C653E3635353335262628652D3D36353533362C6F2B3D7728653E3E3E313026313032337C3535323936292C653D35363332307C313032332665292C6F2B3D772865293B72657475726E206F7D66756E6374696F6E2063';
wwv_flow_api.g_varchar2_table(464) := '28742C65297B696628743E3D35353239362626743C3D3537333433297B69662865297468726F77204572726F7228224C6F6E6520737572726F6761746520552B222B742E746F537472696E67283136292E746F55707065724361736528292B2220697320';
wwv_flow_api.g_varchar2_table(465) := '6E6F742061207363616C61722076616C756522293B72657475726E21317D72657475726E21307D66756E6374696F6E207028742C65297B72657475726E207728743E3E652636337C313238297D66756E6374696F6E207528742C65297B696628303D3D28';
wwv_flow_api.g_varchar2_table(466) := '343239343936373136382674292972657475726E20772874293B766172206E3D22223B72657475726E20303D3D28343239343936353234382674293F6E3D7728743E3E362633317C313932293A303D3D28343239343930313736302674293F286328742C';
wwv_flow_api.g_varchar2_table(467) := '65297C7C28743D3635353333292C6E3D7728743E3E31322631357C323234292C6E2B3D7028742C3629293A303D3D28343239323837303134342674292626286E3D7728743E3E313826377C323430292C6E2B3D7028742C3132292C6E2B3D7028742C3629';
wwv_flow_api.g_varchar2_table(468) := '292C6E2B3D7728363326747C313238297D66756E6374696F6E206828742C65297B653D657C7C7B7D3B666F7228766172206E2C723D2131213D3D652E7374726963742C6F3D732874292C693D6F2E6C656E6774682C613D2D312C633D22223B2B2B613C69';
wwv_flow_api.g_varchar2_table(469) := '3B296E3D6F5B615D2C632B3D75286E2C72293B72657475726E20637D66756E6374696F6E206628297B696628623E3D76297468726F77204572726F722822496E76616C6964206279746520696E64657822293B76617220743D32353526675B625D3B6966';
wwv_flow_api.g_varchar2_table(470) := '28622B2B2C3132383D3D283139322674292972657475726E20363326743B7468726F77204572726F722822496E76616C696420636F6E74696E756174696F6E206279746522297D66756E6374696F6E206C2874297B76617220652C6E2C722C6F2C693B69';
wwv_flow_api.g_varchar2_table(471) := '6628623E76297468726F77204572726F722822496E76616C6964206279746520696E64657822293B696628623D3D762972657475726E21313B696628653D32353526675B625D2C622B2B2C303D3D283132382665292972657475726E20653B6966283139';
wwv_flow_api.g_varchar2_table(472) := '323D3D28323234266529297B6966286E3D6628292C693D2833312665293C3C367C6E2C693E3D3132382972657475726E20693B7468726F77204572726F722822496E76616C696420636F6E74696E756174696F6E206279746522297D6966283232343D3D';
wwv_flow_api.g_varchar2_table(473) := '28323430266529297B6966286E3D6628292C723D6628292C693D2831352665293C3C31327C6E3C3C367C722C693E3D323034382972657475726E206328692C74293F693A36353533333B7468726F77204572726F722822496E76616C696420636F6E7469';
wwv_flow_api.g_varchar2_table(474) := '6E756174696F6E206279746522297D6966283234303D3D283234382665292626286E3D6628292C723D6628292C6F3D6628292C693D28372665293C3C31387C6E3C3C31327C723C3C367C6F2C693E3D36353533362626693C3D3131313431313129297265';
wwv_flow_api.g_varchar2_table(475) := '7475726E20693B7468726F77204572726F722822496E76616C6964205554462D3820646574656374656422297D66756E6374696F6E206428742C65297B653D657C7C7B7D3B766172206E3D2131213D3D652E7374726963743B673D732874292C763D672E';
wwv_flow_api.g_varchar2_table(476) := '6C656E6774682C623D303B666F722876617220722C6F3D5B5D3B28723D6C286E2929213D3D21313B296F2E707573682872293B72657475726E2061286F297D76617220793D226F626A656374223D3D747970656F6620652626652C6D3D28226F626A6563';
wwv_flow_api.g_varchar2_table(477) := '74223D3D747970656F6620742626742626742E6578706F7274733D3D792626742C226F626A656374223D3D747970656F66206F26266F293B6D2E676C6F62616C213D3D6D26266D2E77696E646F77213D3D6D7C7C28693D6D293B76617220672C762C622C';
wwv_flow_api.g_varchar2_table(478) := '773D537472696E672E66726F6D43686172436F64652C6B3D7B76657273696F6E3A22322E312E32222C656E636F64653A682C6465636F64653A647D3B723D66756E6374696F6E28297B72657475726E206B7D2E63616C6C28652C6E2C652C74292C212876';
wwv_flow_api.g_varchar2_table(479) := '6F69642030213D3D72262628742E6578706F7274733D7229297D2874686973297D292E63616C6C28652C6E283237292874292C66756E6374696F6E28297B72657475726E20746869737D2829297D2C66756E6374696F6E28742C65297B742E6578706F72';
wwv_flow_api.g_varchar2_table(480) := '74733D66756E6374696F6E2874297B72657475726E20742E7765627061636B506F6C7966696C6C7C7C28742E6465707265636174653D66756E6374696F6E28297B7D2C742E70617468733D5B5D2C742E6368696C6472656E3D5B5D2C742E776562706163';
wwv_flow_api.g_varchar2_table(481) := '6B506F6C7966696C6C3D31292C747D7D2C66756E6374696F6E28742C65297B2166756E6374696F6E28297B2275736520737472696374223B666F722876617220743D224142434445464748494A4B4C4D4E4F505152535455565758595A61626364656667';
wwv_flow_api.g_varchar2_table(482) := '68696A6B6C6D6E6F707172737475767778797A303132333435363738392B2F222C6E3D6E65772055696E7438417272617928323536292C723D303B723C742E6C656E6774683B722B2B296E5B742E63686172436F646541742872295D3D723B652E656E63';
wwv_flow_api.g_varchar2_table(483) := '6F64653D66756E6374696F6E2865297B766172206E2C723D6E65772055696E743841727261792865292C6F3D722E6C656E6774682C693D22223B666F72286E3D303B6E3C6F3B6E2B3D3329692B3D745B725B6E5D3E3E325D2C692B3D745B283326725B6E';
wwv_flow_api.g_varchar2_table(484) := '5D293C3C347C725B6E2B315D3E3E345D2C692B3D745B28313526725B6E2B315D293C3C327C725B6E2B325D3E3E365D2C692B3D745B363326725B6E2B325D5D3B72657475726E206F25333D3D3D323F693D692E737562737472696E6728302C692E6C656E';
wwv_flow_api.g_varchar2_table(485) := '6774682D31292B223D223A6F25333D3D3D31262628693D692E737562737472696E6728302C692E6C656E6774682D32292B223D3D22292C697D2C652E6465636F64653D66756E6374696F6E2874297B76617220652C722C6F2C692C732C613D2E37352A74';
wwv_flow_api.g_varchar2_table(486) := '2E6C656E6774682C633D742E6C656E6774682C703D303B223D223D3D3D745B742E6C656E6774682D315D262628612D2D2C223D223D3D3D745B742E6C656E6774682D325D2626612D2D293B76617220753D6E65772041727261794275666665722861292C';
wwv_flow_api.g_varchar2_table(487) := '683D6E65772055696E743841727261792875293B666F7228653D303B653C633B652B3D3429723D6E5B742E63686172436F646541742865295D2C6F3D6E5B742E63686172436F6465417428652B31295D2C693D6E5B742E63686172436F6465417428652B';
wwv_flow_api.g_varchar2_table(488) := '32295D2C733D6E5B742E63686172436F6465417428652B33295D2C685B702B2B5D3D723C3C327C6F3E3E342C685B702B2B5D3D283135266F293C3C347C693E3E322C685B702B2B5D3D28332669293C3C367C363326733B72657475726E20757D7D28297D';
wwv_flow_api.g_varchar2_table(489) := '2C66756E6374696F6E28742C65297B2866756E6374696F6E2865297B66756E6374696F6E206E2874297B666F722876617220653D303B653C742E6C656E6774683B652B2B297B766172206E3D745B655D3B6966286E2E62756666657220696E7374616E63';
wwv_flow_api.g_varchar2_table(490) := '656F66204172726179427566666572297B76617220723D6E2E6275666665723B6966286E2E627974654C656E677468213D3D722E627974654C656E677468297B766172206F3D6E65772055696E74384172726179286E2E627974654C656E677468293B6F';
wwv_flow_api.g_varchar2_table(491) := '2E736574286E65772055696E7438417272617928722C6E2E627974654F66667365742C6E2E627974654C656E67746829292C723D6F2E6275666665727D745B655D3D727D7D7D66756E6374696F6E207228742C65297B653D657C7C7B7D3B76617220723D';
wwv_flow_api.g_varchar2_table(492) := '6E657720693B6E2874293B666F7228766172206F3D303B6F3C742E6C656E6774683B6F2B2B29722E617070656E6428745B6F5D293B72657475726E20652E747970653F722E676574426C6F6228652E74797065293A722E676574426C6F6228297D66756E';
wwv_flow_api.g_varchar2_table(493) := '6374696F6E206F28742C65297B72657475726E206E2874292C6E657720426C6F6228742C657C7C7B7D297D76617220693D652E426C6F624275696C6465727C7C652E5765624B6974426C6F624275696C6465727C7C652E4D53426C6F624275696C646572';
wwv_flow_api.g_varchar2_table(494) := '7C7C652E4D6F7A426C6F624275696C6465722C733D66756E6374696F6E28297B7472797B76617220743D6E657720426C6F62285B226869225D293B72657475726E20323D3D3D742E73697A657D63617463682865297B72657475726E21317D7D28292C61';
wwv_flow_api.g_varchar2_table(495) := '3D73262666756E6374696F6E28297B7472797B76617220743D6E657720426C6F62285B6E65772055696E74384172726179285B312C325D295D293B72657475726E20323D3D3D742E73697A657D63617463682865297B72657475726E21317D7D28292C63';
wwv_flow_api.g_varchar2_table(496) := '3D692626692E70726F746F747970652E617070656E642626692E70726F746F747970652E676574426C6F623B742E6578706F7274733D66756E6374696F6E28297B72657475726E20733F613F652E426C6F623A6F3A633F723A766F696420307D28297D29';
wwv_flow_api.g_varchar2_table(497) := '2E63616C6C28652C66756E6374696F6E28297B72657475726E20746869737D2829297D2C66756E6374696F6E28742C65297B652E656E636F64653D66756E6374696F6E2874297B76617220653D22223B666F7228766172206E20696E207429742E686173';
wwv_flow_api.g_varchar2_table(498) := '4F776E50726F7065727479286E29262628652E6C656E677468262628652B3D222622292C652B3D656E636F6465555249436F6D706F6E656E74286E292B223D222B656E636F6465555249436F6D706F6E656E7428745B6E5D29293B72657475726E20657D';
wwv_flow_api.g_varchar2_table(499) := '2C652E6465636F64653D66756E6374696F6E2874297B666F722876617220653D7B7D2C6E3D742E73706C697428222622292C723D302C6F3D6E2E6C656E6774683B723C6F3B722B2B297B76617220693D6E5B725D2E73706C697428223D22293B655B6465';
wwv_flow_api.g_varchar2_table(500) := '636F6465555249436F6D706F6E656E7428695B305D295D3D6465636F6465555249436F6D706F6E656E7428695B315D297D72657475726E20657D7D2C66756E6374696F6E28742C65297B742E6578706F7274733D66756E6374696F6E28742C65297B7661';
wwv_flow_api.g_varchar2_table(501) := '72206E3D66756E6374696F6E28297B7D3B6E2E70726F746F747970653D652E70726F746F747970652C742E70726F746F747970653D6E6577206E2C742E70726F746F747970652E636F6E7374727563746F723D747D7D2C66756E6374696F6E28742C6529';
wwv_flow_api.g_varchar2_table(502) := '7B2275736520737472696374223B66756E6374696F6E206E2874297B76617220653D22223B646F20653D735B7425615D2B652C743D4D6174682E666C6F6F7228742F61293B7768696C6528743E30293B72657475726E20657D66756E6374696F6E207228';
wwv_flow_api.g_varchar2_table(503) := '74297B76617220653D303B666F7228753D303B753C742E6C656E6774683B752B2B29653D652A612B635B742E6368617241742875295D3B72657475726E20657D66756E6374696F6E206F28297B76617220743D6E282B6E65772044617465293B72657475';
wwv_flow_api.g_varchar2_table(504) := '726E2074213D3D693F28703D302C693D74293A742B222E222B6E28702B2B297D666F722876617220692C733D22303132333435363738394142434445464748494A4B4C4D4E4F505152535455565758595A6162636465666768696A6B6C6D6E6F70717273';
wwv_flow_api.g_varchar2_table(505) := '7475767778797A2D5F222E73706C6974282222292C613D36342C633D7B7D2C703D302C753D303B753C613B752B2B29635B735B755D5D3D753B6F2E656E636F64653D6E2C6F2E6465636F64653D722C742E6578706F7274733D6F7D2C66756E6374696F6E';
wwv_flow_api.g_varchar2_table(506) := '28742C652C6E297B2866756E6374696F6E2865297B66756E6374696F6E207228297B7D66756E6374696F6E206F2874297B692E63616C6C28746869732C74292C746869732E71756572793D746869732E71756572797C7C7B7D2C617C7C28652E5F5F5F65';
wwv_flow_api.g_varchar2_table(507) := '696F7C7C28652E5F5F5F65696F3D5B5D292C613D652E5F5F5F65696F292C746869732E696E6465783D612E6C656E6774683B766172206E3D746869733B612E707573682866756E6374696F6E2874297B6E2E6F6E446174612874297D292C746869732E71';
wwv_flow_api.g_varchar2_table(508) := '756572792E6A3D746869732E696E6465782C652E646F63756D656E742626652E6164644576656E744C697374656E65722626652E6164644576656E744C697374656E657228226265666F7265756E6C6F6164222C66756E6374696F6E28297B6E2E736372';
wwv_flow_api.g_varchar2_table(509) := '6970742626286E2E7363726970742E6F6E6572726F723D72297D2C2131297D76617220693D6E283230292C733D6E283331293B742E6578706F7274733D6F3B76617220612C633D2F5C6E2F672C703D2F5C5C6E2F673B73286F2C69292C6F2E70726F746F';
wwv_flow_api.g_varchar2_table(510) := '747970652E737570706F72747342696E6172793D21312C6F2E70726F746F747970652E646F436C6F73653D66756E6374696F6E28297B746869732E736372697074262628746869732E7363726970742E706172656E744E6F64652E72656D6F7665436869';
wwv_flow_api.g_varchar2_table(511) := '6C6428746869732E736372697074292C746869732E7363726970743D6E756C6C292C746869732E666F726D262628746869732E666F726D2E706172656E744E6F64652E72656D6F76654368696C6428746869732E666F726D292C746869732E666F726D3D';
wwv_flow_api.g_varchar2_table(512) := '6E756C6C2C746869732E696672616D653D6E756C6C292C692E70726F746F747970652E646F436C6F73652E63616C6C2874686973297D2C6F2E70726F746F747970652E646F506F6C6C3D66756E6374696F6E28297B76617220743D746869732C653D646F';
wwv_flow_api.g_varchar2_table(513) := '63756D656E742E637265617465456C656D656E74282273637269707422293B746869732E736372697074262628746869732E7363726970742E706172656E744E6F64652E72656D6F76654368696C6428746869732E736372697074292C746869732E7363';
wwv_flow_api.g_varchar2_table(514) := '726970743D6E756C6C292C652E6173796E633D21302C652E7372633D746869732E75726928292C652E6F6E6572726F723D66756E6374696F6E2865297B742E6F6E4572726F7228226A736F6E7020706F6C6C206572726F72222C65297D3B766172206E3D';
wwv_flow_api.g_varchar2_table(515) := '646F63756D656E742E676574456C656D656E747342795461674E616D65282273637269707422295B305D3B6E3F6E2E706172656E744E6F64652E696E736572744265666F726528652C6E293A28646F63756D656E742E686561647C7C646F63756D656E74';
wwv_flow_api.g_varchar2_table(516) := '2E626F6479292E617070656E644368696C642865292C746869732E7363726970743D653B76617220723D22756E646566696E656422213D747970656F66206E6176696761746F7226262F6765636B6F2F692E74657374286E6176696761746F722E757365';
wwv_flow_api.g_varchar2_table(517) := '724167656E74293B72262673657454696D656F75742866756E6374696F6E28297B76617220743D646F63756D656E742E637265617465456C656D656E742822696672616D6522293B646F63756D656E742E626F64792E617070656E644368696C64287429';
wwv_flow_api.g_varchar2_table(518) := '2C646F63756D656E742E626F64792E72656D6F76654368696C642874297D2C313030297D2C6F2E70726F746F747970652E646F57726974653D66756E6374696F6E28742C65297B66756E6374696F6E206E28297B7228292C6528297D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(519) := '207228297B6966286F2E696672616D65297472797B6F2E666F726D2E72656D6F76654368696C64286F2E696672616D65297D63617463682874297B6F2E6F6E4572726F7228226A736F6E7020706F6C6C696E6720696672616D652072656D6F76616C2065';
wwv_flow_api.g_varchar2_table(520) := '72726F72222C74297D7472797B76617220653D273C696672616D65207372633D226A6176617363726970743A3022206E616D653D22272B6F2E696672616D6549642B27223E273B693D646F63756D656E742E637265617465456C656D656E742865297D63';
wwv_flow_api.g_varchar2_table(521) := '617463682874297B693D646F63756D656E742E637265617465456C656D656E742822696672616D6522292C692E6E616D653D6F2E696672616D6549642C692E7372633D226A6176617363726970743A30227D692E69643D6F2E696672616D6549642C6F2E';
wwv_flow_api.g_varchar2_table(522) := '666F726D2E617070656E644368696C642869292C6F2E696672616D653D697D766172206F3D746869733B69662821746869732E666F726D297B76617220692C733D646F63756D656E742E637265617465456C656D656E742822666F726D22292C613D646F';
wwv_flow_api.g_varchar2_table(523) := '63756D656E742E637265617465456C656D656E742822746578746172656122292C753D746869732E696672616D6549643D2265696F5F696672616D655F222B746869732E696E6465783B732E636C6173734E616D653D22736F636B6574696F222C732E73';
wwv_flow_api.g_varchar2_table(524) := '74796C652E706F736974696F6E3D226162736F6C757465222C732E7374796C652E746F703D222D313030307078222C732E7374796C652E6C6566743D222D313030307078222C732E7461726765743D752C732E6D6574686F643D22504F5354222C732E73';
wwv_flow_api.g_varchar2_table(525) := '657441747472696275746528226163636570742D63686172736574222C227574662D3822292C612E6E616D653D2264222C732E617070656E644368696C642861292C646F63756D656E742E626F64792E617070656E644368696C642873292C746869732E';
wwv_flow_api.g_varchar2_table(526) := '666F726D3D732C746869732E617265613D617D746869732E666F726D2E616374696F6E3D746869732E75726928292C7228292C743D742E7265706C61636528702C225C5C5C6E22292C746869732E617265612E76616C75653D742E7265706C6163652863';
wwv_flow_api.g_varchar2_table(527) := '2C225C5C6E22293B7472797B746869732E666F726D2E7375626D697428297D63617463682868297B7D746869732E696672616D652E6174746163684576656E743F746869732E696672616D652E6F6E726561647973746174656368616E67653D66756E63';
wwv_flow_api.g_varchar2_table(528) := '74696F6E28297B22636F6D706C657465223D3D3D6F2E696672616D652E7265616479537461746526266E28297D3A746869732E696672616D652E6F6E6C6F61643D6E7D7D292E63616C6C28652C66756E6374696F6E28297B72657475726E20746869737D';
wwv_flow_api.g_varchar2_table(529) := '2829297D2C66756E6374696F6E28742C652C6E297B2866756E6374696F6E2865297B66756E6374696F6E20722874297B76617220653D742626742E666F7263654261736536343B65262628746869732E737570706F72747342696E6172793D2131292C74';
wwv_flow_api.g_varchar2_table(530) := '6869732E7065724D6573736167654465666C6174653D742E7065724D6573736167654465666C6174652C746869732E7573696E6742726F77736572576562536F636B65743D68262621742E666F7263654E6F64652C746869732E70726F746F636F6C733D';
wwv_flow_api.g_varchar2_table(531) := '742E70726F746F636F6C732C746869732E7573696E6742726F77736572576562536F636B65747C7C286C3D6F292C692E63616C6C28746869732C74297D766172206F2C693D6E283231292C733D6E283232292C613D6E283330292C633D6E283331292C70';
wwv_flow_api.g_varchar2_table(532) := '3D6E283332292C753D6E2833292822656E67696E652E696F2D636C69656E743A776562736F636B657422292C683D652E576562536F636B65747C7C652E4D6F7A576562536F636B65743B69662822756E646566696E6564223D3D747970656F662077696E';
wwv_flow_api.g_varchar2_table(533) := '646F77297472797B6F3D6E283335297D63617463682866297B7D766172206C3D683B6C7C7C22756E646566696E656422213D747970656F662077696E646F777C7C286C3D6F292C742E6578706F7274733D722C6328722C69292C722E70726F746F747970';
wwv_flow_api.g_varchar2_table(534) := '652E6E616D653D22776562736F636B6574222C722E70726F746F747970652E737570706F72747342696E6172793D21302C722E70726F746F747970652E646F4F70656E3D66756E6374696F6E28297B696628746869732E636865636B2829297B76617220';
wwv_flow_api.g_varchar2_table(535) := '743D746869732E75726928292C653D746869732E70726F746F636F6C732C6E3D7B6167656E743A746869732E6167656E742C7065724D6573736167654465666C6174653A746869732E7065724D6573736167654465666C6174657D3B6E2E7066783D7468';
wwv_flow_api.g_varchar2_table(536) := '69732E7066782C6E2E6B65793D746869732E6B65792C6E2E706173737068726173653D746869732E706173737068726173652C6E2E636572743D746869732E636572742C6E2E63613D746869732E63612C6E2E636970686572733D746869732E63697068';
wwv_flow_api.g_varchar2_table(537) := '6572732C6E2E72656A656374556E617574686F72697A65643D746869732E72656A656374556E617574686F72697A65642C746869732E6578747261486561646572732626286E2E686561646572733D746869732E657874726148656164657273292C7468';
wwv_flow_api.g_varchar2_table(538) := '69732E6C6F63616C416464726573732626286E2E6C6F63616C416464726573733D746869732E6C6F63616C41646472657373293B7472797B746869732E77733D746869732E7573696E6742726F77736572576562536F636B65743F653F6E6577206C2874';
wwv_flow_api.g_varchar2_table(539) := '2C65293A6E6577206C2874293A6E6577206C28742C652C6E297D63617463682872297B72657475726E20746869732E656D697428226572726F72222C72297D766F696420303D3D3D746869732E77732E62696E61727954797065262628746869732E7375';
wwv_flow_api.g_varchar2_table(540) := '70706F72747342696E6172793D2131292C746869732E77732E737570706F7274732626746869732E77732E737570706F7274732E62696E6172793F28746869732E737570706F72747342696E6172793D21302C746869732E77732E62696E617279547970';
wwv_flow_api.g_varchar2_table(541) := '653D226E6F646562756666657222293A746869732E77732E62696E617279547970653D226172726179627566666572222C746869732E6164644576656E744C697374656E65727328297D7D2C722E70726F746F747970652E6164644576656E744C697374';
wwv_flow_api.g_varchar2_table(542) := '656E6572733D66756E6374696F6E28297B76617220743D746869733B746869732E77732E6F6E6F70656E3D66756E6374696F6E28297B742E6F6E4F70656E28297D2C746869732E77732E6F6E636C6F73653D66756E6374696F6E28297B742E6F6E436C6F';
wwv_flow_api.g_varchar2_table(543) := '736528297D2C746869732E77732E6F6E6D6573736167653D66756E6374696F6E2865297B742E6F6E4461746128652E64617461297D2C746869732E77732E6F6E6572726F723D66756E6374696F6E2865297B742E6F6E4572726F722822776562736F636B';
wwv_flow_api.g_varchar2_table(544) := '6574206572726F72222C65297D7D2C722E70726F746F747970652E77726974653D66756E6374696F6E2874297B66756E6374696F6E206E28297B722E656D69742822666C75736822292C73657454696D656F75742866756E6374696F6E28297B722E7772';
wwv_flow_api.g_varchar2_table(545) := '697461626C653D21302C722E656D69742822647261696E22297D2C30297D76617220723D746869733B746869732E7772697461626C653D21313B666F7228766172206F3D742E6C656E6774682C693D302C613D6F3B693C613B692B2B292166756E637469';
wwv_flow_api.g_varchar2_table(546) := '6F6E2874297B732E656E636F64655061636B657428742C722E737570706F72747342696E6172792C66756E6374696F6E2869297B69662821722E7573696E6742726F77736572576562536F636B6574297B76617220733D7B7D3B696628742E6F7074696F';
wwv_flow_api.g_varchar2_table(547) := '6E73262628732E636F6D70726573733D742E6F7074696F6E732E636F6D7072657373292C722E7065724D6573736167654465666C617465297B76617220613D22737472696E67223D3D747970656F6620693F652E4275666665722E627974654C656E6774';
wwv_flow_api.g_varchar2_table(548) := '682869293A692E6C656E6774683B613C722E7065724D6573736167654465666C6174652E7468726573686F6C64262628732E636F6D70726573733D2131297D7D7472797B722E7573696E6742726F77736572576562536F636B65743F722E77732E73656E';
wwv_flow_api.g_varchar2_table(549) := '642869293A722E77732E73656E6428692C73297D63617463682863297B752822776562736F636B657420636C6F736564206265666F7265206F6E636C6F7365206576656E7422297D2D2D6F7C7C6E28297D297D28745B695D297D2C722E70726F746F7479';
wwv_flow_api.g_varchar2_table(550) := '70652E6F6E436C6F73653D66756E6374696F6E28297B692E70726F746F747970652E6F6E436C6F73652E63616C6C2874686973297D2C722E70726F746F747970652E646F436C6F73653D66756E6374696F6E28297B22756E646566696E656422213D7479';
wwv_flow_api.g_varchar2_table(551) := '70656F6620746869732E77732626746869732E77732E636C6F736528297D2C722E70726F746F747970652E7572693D66756E6374696F6E28297B76617220743D746869732E71756572797C7C7B7D2C653D746869732E7365637572653F22777373223A22';
wwv_flow_api.g_varchar2_table(552) := '7773222C6E3D22223B746869732E706F727426262822777373223D3D3D652626343433213D3D4E756D62657228746869732E706F7274297C7C227773223D3D3D6526263830213D3D4E756D62657228746869732E706F727429292626286E3D223A222B74';
wwv_flow_api.g_varchar2_table(553) := '6869732E706F7274292C746869732E74696D657374616D705265717565737473262628745B746869732E74696D657374616D70506172616D5D3D702829292C746869732E737570706F72747342696E6172797C7C28742E6236343D31292C743D612E656E';
wwv_flow_api.g_varchar2_table(554) := '636F64652874292C742E6C656E677468262628743D223F222B74293B76617220723D746869732E686F73746E616D652E696E6465784F6628223A2229213D3D2D313B72657475726E20652B223A2F2F222B28723F225B222B746869732E686F73746E616D';
wwv_flow_api.g_varchar2_table(555) := '652B225D223A746869732E686F73746E616D65292B6E2B746869732E706174682B747D2C722E70726F746F747970652E636865636B3D66756E6374696F6E28297B72657475726E2128216C7C7C225F5F696E697469616C697A6522696E206C2626746869';
wwv_flow_api.g_varchar2_table(556) := '732E6E616D653D3D3D722E70726F746F747970652E6E616D65297D7D292E63616C6C28652C66756E6374696F6E28297B72657475726E20746869737D2829297D2C66756E6374696F6E28742C65297B7D2C66756E6374696F6E28742C65297B766172206E';
wwv_flow_api.g_varchar2_table(557) := '3D5B5D2E696E6465784F663B742E6578706F7274733D66756E6374696F6E28742C65297B6966286E2972657475726E20742E696E6465784F662865293B666F722876617220723D303B723C742E6C656E6774683B2B2B7229696628745B725D3D3D3D6529';
wwv_flow_api.g_varchar2_table(558) := '72657475726E20723B72657475726E2D317D7D2C66756E6374696F6E28742C652C6E297B2275736520737472696374223B66756E6374696F6E207228742C652C6E297B746869732E696F3D742C746869732E6E73703D652C746869732E6A736F6E3D7468';
wwv_flow_api.g_varchar2_table(559) := '69732C746869732E6964733D302C746869732E61636B733D7B7D2C746869732E726563656976654275666665723D5B5D2C746869732E73656E644275666665723D5B5D2C746869732E636F6E6E65637465643D21312C746869732E646973636F6E6E6563';
wwv_flow_api.g_varchar2_table(560) := '7465643D21302C6E26266E2E7175657279262628746869732E71756572793D6E2E7175657279292C746869732E696F2E6175746F436F6E6E6563742626746869732E6F70656E28297D766172206F3D2266756E6374696F6E223D3D747970656F66205379';
wwv_flow_api.g_varchar2_table(561) := '6D626F6C26262273796D626F6C223D3D747970656F662053796D626F6C2E6974657261746F723F66756E6374696F6E2874297B72657475726E20747970656F6620747D3A66756E6374696F6E2874297B72657475726E207426262266756E6374696F6E22';
wwv_flow_api.g_varchar2_table(562) := '3D3D747970656F662053796D626F6C2626742E636F6E7374727563746F723D3D3D53796D626F6C262674213D3D53796D626F6C2E70726F746F747970653F2273796D626F6C223A747970656F6620747D2C693D6E2837292C733D6E2838292C613D6E2833';
wwv_flow_api.g_varchar2_table(563) := '38292C633D6E283339292C703D6E283430292C753D6E2833292822736F636B65742E696F2D636C69656E743A736F636B657422292C683D6E283330293B742E6578706F7274733D653D723B76617220663D7B636F6E6E6563743A312C636F6E6E6563745F';
wwv_flow_api.g_varchar2_table(564) := '6572726F723A312C636F6E6E6563745F74696D656F75743A312C636F6E6E656374696E673A312C646973636F6E6E6563743A312C6572726F723A312C7265636F6E6E6563743A312C7265636F6E6E6563745F617474656D70743A312C7265636F6E6E6563';
wwv_flow_api.g_varchar2_table(565) := '745F6661696C65643A312C7265636F6E6E6563745F6572726F723A312C7265636F6E6E656374696E673A312C70696E673A312C706F6E673A317D2C6C3D732E70726F746F747970652E656D69743B7328722E70726F746F74797065292C722E70726F746F';
wwv_flow_api.g_varchar2_table(566) := '747970652E7375624576656E74733D66756E6374696F6E28297B69662821746869732E73756273297B76617220743D746869732E696F3B746869732E737562733D5B6328742C226F70656E222C7028746869732C226F6E6F70656E2229292C6328742C22';
wwv_flow_api.g_varchar2_table(567) := '7061636B6574222C7028746869732C226F6E7061636B65742229292C6328742C22636C6F7365222C7028746869732C226F6E636C6F73652229295D7D7D2C722E70726F746F747970652E6F70656E3D722E70726F746F747970652E636F6E6E6563743D66';
wwv_flow_api.g_varchar2_table(568) := '756E6374696F6E28297B72657475726E20746869732E636F6E6E65637465643F746869733A28746869732E7375624576656E747328292C746869732E696F2E6F70656E28292C226F70656E223D3D3D746869732E696F2E72656164795374617465262674';
wwv_flow_api.g_varchar2_table(569) := '6869732E6F6E6F70656E28292C746869732E656D69742822636F6E6E656374696E6722292C74686973297D2C722E70726F746F747970652E73656E643D66756E6374696F6E28297B76617220743D6128617267756D656E7473293B72657475726E20742E';
wwv_flow_api.g_varchar2_table(570) := '756E736869667428226D65737361676522292C746869732E656D69742E6170706C7928746869732C74292C746869737D2C722E70726F746F747970652E656D69743D66756E6374696F6E2874297B696628662E6861734F776E50726F7065727479287429';
wwv_flow_api.g_varchar2_table(571) := '2972657475726E206C2E6170706C7928746869732C617267756D656E7473292C746869733B76617220653D6128617267756D656E7473292C6E3D7B747970653A692E4556454E542C646174613A657D3B72657475726E206E2E6F7074696F6E733D7B7D2C';
wwv_flow_api.g_varchar2_table(572) := '6E2E6F7074696F6E732E636F6D70726573733D21746869732E666C6167737C7C2131213D3D746869732E666C6167732E636F6D70726573732C2266756E6374696F6E223D3D747970656F6620655B652E6C656E6774682D315D262628752822656D697474';
wwv_flow_api.g_varchar2_table(573) := '696E67207061636B657420776974682061636B206964202564222C746869732E696473292C746869732E61636B735B746869732E6964735D3D652E706F7028292C6E2E69643D746869732E6964732B2B292C746869732E636F6E6E65637465643F746869';
wwv_flow_api.g_varchar2_table(574) := '732E7061636B6574286E293A746869732E73656E644275666665722E70757368286E292C64656C65746520746869732E666C6167732C746869737D2C722E70726F746F747970652E7061636B65743D66756E6374696F6E2874297B742E6E73703D746869';
wwv_flow_api.g_varchar2_table(575) := '732E6E73702C746869732E696F2E7061636B65742874297D2C722E70726F746F747970652E6F6E6F70656E3D66756E6374696F6E28297B6966287528227472616E73706F7274206973206F70656E202D20636F6E6E656374696E6722292C222F22213D3D';
wwv_flow_api.g_varchar2_table(576) := '746869732E6E737029696628746869732E7175657279297B76617220743D226F626A656374223D3D3D6F28746869732E7175657279293F682E656E636F646528746869732E7175657279293A746869732E71756572793B75282273656E64696E6720636F';
wwv_flow_api.g_varchar2_table(577) := '6E6E656374207061636B65742077697468207175657279202573222C74292C746869732E7061636B6574287B747970653A692E434F4E4E4543542C71756572793A747D297D656C736520746869732E7061636B6574287B747970653A692E434F4E4E4543';
wwv_flow_api.g_varchar2_table(578) := '547D297D2C722E70726F746F747970652E6F6E636C6F73653D66756E6374696F6E2874297B752822636C6F73652028257329222C74292C746869732E636F6E6E65637465643D21312C746869732E646973636F6E6E65637465643D21302C64656C657465';
wwv_flow_api.g_varchar2_table(579) := '20746869732E69642C746869732E656D69742822646973636F6E6E656374222C74297D2C722E70726F746F747970652E6F6E7061636B65743D66756E6374696F6E2874297B696628742E6E73703D3D3D746869732E6E73702973776974636828742E7479';
wwv_flow_api.g_varchar2_table(580) := '7065297B6361736520692E434F4E4E4543543A746869732E6F6E636F6E6E65637428293B627265616B3B6361736520692E4556454E543A746869732E6F6E6576656E742874293B627265616B3B6361736520692E42494E4152595F4556454E543A746869';
wwv_flow_api.g_varchar2_table(581) := '732E6F6E6576656E742874293B627265616B3B6361736520692E41434B3A746869732E6F6E61636B2874293B627265616B3B6361736520692E42494E4152595F41434B3A746869732E6F6E61636B2874293B627265616B3B6361736520692E444953434F';
wwv_flow_api.g_varchar2_table(582) := '4E4E4543543A746869732E6F6E646973636F6E6E65637428293B627265616B3B6361736520692E4552524F523A746869732E656D697428226572726F72222C742E64617461297D7D2C722E70726F746F747970652E6F6E6576656E743D66756E6374696F';
wwv_flow_api.g_varchar2_table(583) := '6E2874297B76617220653D742E646174617C7C5B5D3B752822656D697474696E67206576656E7420256A222C65292C6E756C6C213D742E6964262628752822617474616368696E672061636B2063616C6C6261636B20746F206576656E7422292C652E70';
wwv_flow_api.g_varchar2_table(584) := '75736828746869732E61636B28742E69642929292C746869732E636F6E6E65637465643F6C2E6170706C7928746869732C65293A746869732E726563656976654275666665722E707573682865297D2C722E70726F746F747970652E61636B3D66756E63';
wwv_flow_api.g_varchar2_table(585) := '74696F6E2874297B76617220653D746869732C6E3D21313B72657475726E2066756E6374696F6E28297B696628216E297B6E3D21303B76617220723D6128617267756D656E7473293B75282273656E64696E672061636B20256A222C72292C652E706163';
wwv_flow_api.g_varchar2_table(586) := '6B6574287B747970653A692E41434B2C69643A742C646174613A727D297D7D7D2C722E70726F746F747970652E6F6E61636B3D66756E6374696F6E2874297B76617220653D746869732E61636B735B742E69645D3B2266756E6374696F6E223D3D747970';
wwv_flow_api.g_varchar2_table(587) := '656F6620653F2875282263616C6C696E672061636B202573207769746820256A222C742E69642C742E64617461292C652E6170706C7928746869732C742E64617461292C64656C65746520746869732E61636B735B742E69645D293A7528226261642061';
wwv_flow_api.g_varchar2_table(588) := '636B202573222C742E6964297D2C722E70726F746F747970652E6F6E636F6E6E6563743D66756E6374696F6E28297B746869732E636F6E6E65637465643D21302C746869732E646973636F6E6E65637465643D21312C746869732E656D69742822636F6E';
wwv_flow_api.g_varchar2_table(589) := '6E65637422292C746869732E656D6974427566666572656428297D2C722E70726F746F747970652E656D697442756666657265643D66756E6374696F6E28297B76617220743B666F7228743D303B743C746869732E726563656976654275666665722E6C';
wwv_flow_api.g_varchar2_table(590) := '656E6774683B742B2B296C2E6170706C7928746869732C746869732E726563656976654275666665725B745D293B666F7228746869732E726563656976654275666665723D5B5D2C743D303B743C746869732E73656E644275666665722E6C656E677468';
wwv_flow_api.g_varchar2_table(591) := '3B742B2B29746869732E7061636B657428746869732E73656E644275666665725B745D293B746869732E73656E644275666665723D5B5D7D2C722E70726F746F747970652E6F6E646973636F6E6E6563743D66756E6374696F6E28297B75282273657276';
wwv_flow_api.g_varchar2_table(592) := '657220646973636F6E6E6563742028257329222C746869732E6E7370292C746869732E64657374726F7928292C746869732E6F6E636C6F73652822696F2073657276657220646973636F6E6E65637422297D2C722E70726F746F747970652E6465737472';
wwv_flow_api.g_varchar2_table(593) := '6F793D66756E6374696F6E28297B696628746869732E73756273297B666F722876617220743D303B743C746869732E737562732E6C656E6774683B742B2B29746869732E737562735B745D2E64657374726F7928293B746869732E737562733D6E756C6C';
wwv_flow_api.g_varchar2_table(594) := '7D746869732E696F2E64657374726F792874686973297D2C722E70726F746F747970652E636C6F73653D722E70726F746F747970652E646973636F6E6E6563743D66756E6374696F6E28297B72657475726E20746869732E636F6E6E6563746564262628';
wwv_flow_api.g_varchar2_table(595) := '752822706572666F726D696E6720646973636F6E6E6563742028257329222C746869732E6E7370292C746869732E7061636B6574287B747970653A692E444953434F4E4E4543547D29292C746869732E64657374726F7928292C746869732E636F6E6E65';
wwv_flow_api.g_varchar2_table(596) := '637465642626746869732E6F6E636C6F73652822696F20636C69656E7420646973636F6E6E65637422292C746869737D2C722E70726F746F747970652E636F6D70726573733D66756E6374696F6E2874297B72657475726E20746869732E666C6167733D';
wwv_flow_api.g_varchar2_table(597) := '746869732E666C6167737C7C7B7D2C746869732E666C6167732E636F6D70726573733D742C746869737D7D2C66756E6374696F6E28742C65297B66756E6374696F6E206E28742C65297B766172206E3D5B5D3B653D657C7C303B666F722876617220723D';
wwv_flow_api.g_varchar2_table(598) := '657C7C303B723C742E6C656E6774683B722B2B296E5B722D655D3D745B725D3B72657475726E206E7D742E6578706F7274733D6E7D2C66756E6374696F6E28742C65297B2275736520737472696374223B66756E6374696F6E206E28742C652C6E297B72';
wwv_flow_api.g_varchar2_table(599) := '657475726E20742E6F6E28652C6E292C7B64657374726F793A66756E6374696F6E28297B742E72656D6F76654C697374656E657228652C6E297D7D7D742E6578706F7274733D6E7D2C66756E6374696F6E28742C65297B766172206E3D5B5D2E736C6963';
wwv_flow_api.g_varchar2_table(600) := '653B742E6578706F7274733D66756E6374696F6E28742C65297B69662822737472696E67223D3D747970656F662065262628653D745B655D292C2266756E6374696F6E22213D747970656F662065297468726F77206E6577204572726F72282262696E64';
wwv_flow_api.g_varchar2_table(601) := '282920726571756972657320612066756E6374696F6E22293B76617220723D6E2E63616C6C28617267756D656E74732C32293B72657475726E2066756E6374696F6E28297B72657475726E20652E6170706C7928742C722E636F6E636174286E2E63616C';
wwv_flow_api.g_varchar2_table(602) := '6C28617267756D656E74732929297D7D7D2C66756E6374696F6E28742C65297B66756E6374696F6E206E2874297B743D747C7C7B7D2C746869732E6D733D742E6D696E7C7C3130302C746869732E6D61783D742E6D61787C7C3165342C746869732E6661';
wwv_flow_api.g_varchar2_table(603) := '63746F723D742E666163746F727C7C322C746869732E6A69747465723D742E6A69747465723E302626742E6A69747465723C3D313F742E6A69747465723A302C746869732E617474656D7074733D307D742E6578706F7274733D6E2C6E2E70726F746F74';
wwv_flow_api.g_varchar2_table(604) := '7970652E6475726174696F6E3D66756E6374696F6E28297B76617220743D746869732E6D732A4D6174682E706F7728746869732E666163746F722C746869732E617474656D7074732B2B293B696628746869732E6A6974746572297B76617220653D4D61';
wwv_flow_api.g_varchar2_table(605) := '74682E72616E646F6D28292C6E3D4D6174682E666C6F6F7228652A746869732E6A69747465722A74293B743D303D3D2831264D6174682E666C6F6F722831302A6529293F742D6E3A742B6E7D72657475726E20307C4D6174682E6D696E28742C74686973';
wwv_flow_api.g_varchar2_table(606) := '2E6D6178297D2C6E2E70726F746F747970652E72657365743D66756E6374696F6E28297B746869732E617474656D7074733D307D2C6E2E70726F746F747970652E7365744D696E3D66756E6374696F6E2874297B746869732E6D733D747D2C6E2E70726F';
wwv_flow_api.g_varchar2_table(607) := '746F747970652E7365744D61783D66756E6374696F6E2874297B746869732E6D61783D747D2C6E2E70726F746F747970652E7365744A69747465723D66756E6374696F6E2874297B746869732E6A69747465723D747D7D5D297D293B0A2F2F2320736F75';
wwv_flow_api.g_varchar2_table(608) := '7263654D617070696E6755524C3D736F636B65742E696F2E6A732E6D6170';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(32578759886417949)
,p_plugin_id=>wwv_flow_api.id(96392797084945955)
,p_file_name=>'socket.io.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(20060192490224130)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(20007916901224059)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(20046789331224106)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(20060000387224130)
,p_nav_bar_list_template_id=>wwv_flow_api.id(20046605917224106)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(20060192490224130)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20171129090858'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20061952139224164)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(20030960933224096)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(20061446871224159)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(20049865656224110)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(20060192490224130)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'APEX Voice Control - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(20009952227224078)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20171129090858'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20060680172224152)
,p_plug_name=>'APEX Voice Control'
,p_icon_css_classes=>'fa-sign-in'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(20026343690224095)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20060937947224157)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(20060680172224152)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20049359945224110)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20060753466224156)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(20060680172224152)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20048707166224107)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20060818081224157)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(20060680172224152)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(20048707166224107)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20061187090224159)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20061067453224158)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20061321553224159)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20061214107224159)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
