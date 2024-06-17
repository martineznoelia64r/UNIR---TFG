prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_default_workspace_id=>22969401767766552
);
end;
/
prompt  WORKSPACE 22969401767766552
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   17:50 Lunes Junio 17, 2024
--   Exported By:     AGSN
--   Export Type:     Workspace Export
--   Version:         21.1.0
--   Instance ID:     697967970572147
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_210100
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>22969401767766552);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace WS_AGSN_PRE...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 22969691850766805
 ,p_provisioning_company_id => 22969401767766552
 ,p_short_name => 'WS_AGSN_PRE'
 ,p_display_name => 'WS_AGSN_PRE'
 ,p_first_schema_provisioned => 'AGSN'
 ,p_company_schemas => 'AGSN'
 ,p_expire_fnd_user_accounts => 'N'
 ,p_fnd_user_max_login_failures => 15
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'WS_AGSN_'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'WS_AGSN_PRE'
 ,p_files_version => 1
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 2000353958354749,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 2000282191354749,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 2000122424354732,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22977552777422092',
  p_user_name                    => 'ADM_MARTINEZNOELIA',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'noelia.martinez.sspa@juntadeandalucia.es',
  p_web_password                 => 'A69D73CB7A4CDC29C3F0BC8460A3BB400666FA45EC0CD8501F4BE49CE8C5C70044B0C6E8E7DA119C5BFA1A7EBF9DB9ABAE6D292A119D58FC397869E794FB0674',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'AGSN',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202405300449','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22977112146175812',
  p_user_name                    => 'ADM_1_PRUEBAS',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'XXXXXXX.sspa@juntadeandalucia.es',
  p_web_password                 => 'CCC330843B047A516BC5E56BAE762CDE3BCE4C1904F4EA067B1442D29201CC5D779B70F50F0243CFAE16318E8F9B699B37F01D48359D552F603073B3AF7DFA74',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'AGSN',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202303280000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '22969390838766552',
  p_user_name                    => 'AGSN',
  p_first_name                   => 'Área de Gestión Sanitaria Norte',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'XXXXXXX.sspa@juntadeandalucia.es',
  p_web_password                 => 'C101E9BC9649BD558DA904B83AE1C1F27F06F8C2EB3EFA7C3F1D513F06B3484E071133F1D5AF2DB12BC5A373BF25633A900B2EC67B0D732E8CA08F510618F884',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'AGSN',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404172022','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '39279872441791115',
  p_user_name                    => '2_PRUEBAS62P',
  p_first_name                   => 'JOSE ANTONIO',
  p_last_name                    => 'CARDENAS RODRIGUEZ',
  p_description                  => '',
  p_email_address                => 'XXXXXXX.sspa@juntadeandalucia.es',
  p_web_password                 => '324CB5AC49FC8CF1DB7C1B20AFE978C71361D78D9E706DF87F7E8D085510884A055C7A2456FCE3613172CD7E3F26D5E96A3987CA4E0F87FBA43B353572F3515A',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '2000122424354732:2000282191354749:2000353958354749:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'AGSN',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202404300000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 1,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
----------------
--App Builder Preferences
--
begin
  wwv_flow_api.create_app_build_pref (
    p_id => 22971242073054890,
    p_default_parsing_schema => '',
    p_default_auth_scheme => 'Application Express',
    p_default_app_theme => 42,
    p_default_tabs => 'SINGLE_LEVEL_TABS',
    p_default_proxy_server => '',
    p_default_language => '',
    p_default_language_derived => '',
    p_date_format => '',
    p_date_time_format => '',
    p_timestamp_format => '',
    p_timestamp_tz_format => '',
    p_created_on => to_date('202303280951','YYYYMMDDHH24MI'),
    p_created_by => 'AGSN',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_updated_by => '');
end;
/
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_flow_api.create_password_history (
    p_id => 33799428612016587,
    p_user_id => 22977552777422092,
    p_password => 'B65BE188421B8C310606EB29C16D733485BF4D505491E7EB81B085189F1F6E8181DCA1F6E98EB7D619A5E3A11BE7B6DEDAE440A980BC6A6D632839EF8D736823');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 33813107808486551,
    p_user_id => 22977552777422092,
    p_password => '96382C0C15981A8B4033C13356DF9F2945538BEF461C10A27366798780AD0FE68F124E2D40CEF54A82737B81E494B53EC7FEF4C45A79D636CC109968AA734531');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 39004581343876121,
    p_user_id => 22969390838766552,
    p_password => 'C101E9BC9649BD558DA904B83AE1C1F27F06F8C2EB3EFA7C3F1D513F06B3484E071133F1D5AF2DB12BC5A373BF25633A900B2EC67B0D732E8CA08F510618F884');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 39111890809311521,
    p_user_id => 22977552777422092,
    p_password => 'CF6C98FBE8C39F26B1004260EB9A7646617A0E24F8175CA5AF9851867C7A78CC4E1783AFFF47226E9A037F5E837717489EC48781CE070C55571D1263EEF2B529');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 22969808238766849,
    p_user_id => 22969390838766552,
    p_password => '29BA6048156D160837E121E3D05BDB14529FA06148FB2616FA98451E84F96E39F56C01A3A3CC8D8544DF827F04FAFEEA3908704AC0FE9EB207FC7B136CAB5EF4');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 22977234244175866,
    p_user_id => 22977112146175812,
    p_password => 'CCC330843B047A516BC5E56BAE762CDE3BCE4C1904F4EA067B1442D29201CC5D779B70F50F0243CFAE16318E8F9B699B37F01D48359D552F603073B3AF7DFA74');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 22977685219422123,
    p_user_id => 22977552777422092,
    p_password => 'A876522692E3C9F22549A507348E8DD84A1E793D942CEAD22D9560D77ED91380540E1FB1D8BDFDED1B82DBFBC439B59ECFBAC43F15634185B0DF04758841F7EA');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 39279904576791083,
    p_user_id => 39279872441791115,
    p_password => '324CB5AC49FC8CF1DB7C1B20AFE978C71361D78D9E706DF87F7E8D085510884A055C7A2456FCE3613172CD7E3F26D5E96A3987CA4E0F87FBA43B353572F3515A');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 42001126090957563,
    p_user_id => 22977552777422092,
    p_password => 'A69D73CB7A4CDC29C3F0BC8460A3BB400666FA45EC0CD8501F4BE49CE8C5C70044B0C6E8E7DA119C5BFA1A7EBF9DB9ABAE6D292A119D58FC397869E794FB0674');
end;
/
----------------
--preferences
--
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40434455482755119,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P4400_W27796519609844319',
    p_attribute_value => '27798220762844327____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22991658503814996,
    p_user_id => 'ADM_3_RUEBAS',
    p_preference_name => 'FSP_IR_115_P7_W2608109609961358211',
    p_attribute_value => '2608118641076358372____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 23326013741972570,
    p_user_id => 'AGSN',
    p_preference_name => 'PD_ENABLE_COMPONENT_VIEW',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 23728466917738510,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'FSP_IR_121_P3_W23540723624648631',
    p_attribute_value => '23556509880648764____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40508378153435463,
    p_user_id => 'AGSN',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '2',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40654130388409776,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P431_W478896025956673213',
    p_attribute_value => '478896612991674411____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40654342723408949,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P527_W478911116494917969',
    p_attribute_value => '478911808086918993____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41537598615046333,
    p_user_id => 'AGSN',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '379:false',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41916340722268884,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P197_R935666971301945228_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41934189703500302,
    p_user_id => 'AGSN',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_H',
    p_attribute_value => '670.99',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22970900539806436,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P25_DATE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22976154073077845,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_5402528899234735_CURRENT_REPORT',
    p_attribute_value => '27818993000237613:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40427862011173683,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P556_W188103615005859601',
    p_attribute_value => '188104818844859950____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41729294795176201,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P30_W41720162182199732',
    p_attribute_value => '41728762143176206_N___REPORT',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41967158803839862,
    p_user_id => 'AGSN',
    p_preference_name => 'PD_GLV_HIDE_BTNS',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22976793533161425,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_786390949359884461_CURRENT_REPORT',
    p_attribute_value => '786401902417889038:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22985669669635369,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '128',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22987920370666053,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41853267954554862,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP129_P5_R41838626400566371_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22988213109666121,
    p_user_id => 'AGSN',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '129',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41853335167554844,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP129_P5_R41848526828556375_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42104493778631135,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P1_R6616287455149937869_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42104750479631120,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P1_W6634245762876573231',
    p_attribute_value => '6634812494716206916_N___',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 23728852555739877,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'FSP_IR_121_P10031_W23645195143649217',
    p_attribute_value => '23646705609649240____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42104869736631088,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_AS',
    p_attribute_value => 'CARDS',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42107119938570213,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P93_R8918602828328359835_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42107283443570209,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P93_R9090625802341293538_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42107343235570201,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P93_R9090631630756453154_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42107475948570195,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P93_R12682069463299618819_SORT',
    p_attribute_value => 'sort_5_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42107545808570191,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P93_R10415628808260682879_SORT',
    p_attribute_value => 'sort_10_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42120373936745851,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_48400504749292790893_CURRENT_REPORT',
    p_attribute_value => '4947184827341310973:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42207487948388381,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P50_W42198200221529976',
    p_attribute_value => '42206952897388383_N___',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22984416820629214,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22985069834633881,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'PD_ENABLE_COMPONENT_VIEW',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22985136523633908,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'PD_TAB_LAYOUT_3',
    p_attribute_value => '0:renderTree_container,0:dynActTree_container,0:procTree_container,0:sharedComp_container,1:grid_layout,1:search,1:help,2:peComponentProperties,2:peAttributesTabPanel,2:pePrintingTabPanel',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22978206121591554,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4000T3',
    p_attribute_value => '204021106338377303',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22978338611591555,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4020T101',
    p_attribute_value => '2787940904864180601',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22978435665591566,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4050T3',
    p_attribute_value => '204023405870765307',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22978564529591566,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4300T3',
    p_attribute_value => '204023628129766298',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22978611290591570,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4350T3',
    p_attribute_value => '204023711571766699',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22978747436591570,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4500T3',
    p_attribute_value => '204023927913767476',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22978856446591570,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4550T3',
    p_attribute_value => '204024031242767851',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22978993310591570,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4600T101',
    p_attribute_value => '209225663324524664',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22979041857591570,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4650T3',
    p_attribute_value => '210531387365324264',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22979142712591570,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4700T3',
    p_attribute_value => '204024310335769388',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22979268322591572,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4750T3',
    p_attribute_value => '607578911660270943',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22979317377591572,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'APEX_THEME_STYLE_A4850T3',
    p_attribute_value => '204025807133792433',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22984523920629446,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'PD_ENABLE_COMPONENT_VIEW',
    p_attribute_value => 'N',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22984640343629465,
    p_user_id => 'ADM_1_PRUEBAS',
    p_preference_name => 'PD_TAB_LAYOUT_3',
    p_attribute_value => '0:renderTree_container,0:dynActTree_container,0:procTree_container,0:sharedComp_container,1:grid_layout,1:search,1:help,2:peComponentProperties,2:peAttributesTabPanel,2:pePrintingTabPanel',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22984923302633707,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22985796173651478,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4000T3',
    p_attribute_value => '204021106338377303',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22985886853651478,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4020T101',
    p_attribute_value => '2787940904864180601',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22985944045651479,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4050T3',
    p_attribute_value => '204023405870765307',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22986098470651480,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4300T3',
    p_attribute_value => '204023628129766298',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22986192572651480,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4350T3',
    p_attribute_value => '204023711571766699',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22986212191651481,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4500T3',
    p_attribute_value => '204023927913767476',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22986313633651481,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4550T3',
    p_attribute_value => '204024031242767851',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22986457231651482,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4600T101',
    p_attribute_value => '209225663324524664',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22986536899651482,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4650T3',
    p_attribute_value => '210531387365324264',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22986632715651483,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4700T3',
    p_attribute_value => '204024310335769388',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22986717797651484,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4750T3',
    p_attribute_value => '607578911660270943',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 22986816927651484,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'APEX_THEME_STYLE_A4850T3',
    p_attribute_value => '204025807133792433',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 23325915284972535,
    p_user_id => 'AGSN',
    p_preference_name => 'PD_TAB_LAYOUT_3',
    p_attribute_value => '0:renderTree_container,0:dynActTree_container,0:procTree_container,0:sharedComp_container,1:grid_layout,1:help,1:search,2:peComponentProperties,2:peAttributesTabPanel,2:pePrintingTabPanel',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40359485612168126,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40361787037982216,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4500_P2102_R5737432600960966_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40567653869271003,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP131_P2_R40481002528564236_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40610087373244478,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_131_P4_W40603025457245080',
    p_attribute_value => '40609541195244479____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40653327387411291,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P19_W451745617575288584',
    p_attribute_value => '451746507039288843____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40653929828410157,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P939_W451352700445603348',
    p_attribute_value => '451353909559603360____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40721951519370780,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4350_P25_W9307709001462905',
    p_attribute_value => '9309908769463151____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40724462123352621,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40724862340352166,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P4050_W10642116325440827',
    p_attribute_value => '10643624462441172____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40725982898481455,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P10_W48550008997384160',
    p_attribute_value => '48550601868384480____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40726120223481250,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P557_W188111124623892263',
    p_attribute_value => '188112203092893275____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40726540737480810,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P44_W192971700145071263',
    p_attribute_value => '192972607003071274____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41482192855323096,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_131_P2_W41475221698326893',
    p_attribute_value => '41481638266323114_N___',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41567159302891109,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_41551795758891641_CURRENT_REPORT',
    p_attribute_value => '41552691867891631:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41599755332758101,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_41584205284760269_CURRENT_REPORT',
    p_attribute_value => '41585111002760266:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41633568258242065,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P73_R78240013758270704_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42110271091832621,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P94_R8942044001888813433_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42001345224955782,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP_IR_121_P3_W23540723624648631',
    p_attribute_value => '23556509880648764____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42110148214832626,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P94_R8923548317907880203_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42110355660832618,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P94_R8931515909051438926_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42110499608832611,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P94_R8944029933496229461_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42110510969832607,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P94_R12682069463299618819_SORT',
    p_attribute_value => 'sort_5_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42110650346832596,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P94_R10415628808260682879_SORT',
    p_attribute_value => 'sort_10_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42120864052743377,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_49158336775223373140_CURRENT_REPORT',
    p_attribute_value => '5705016853271893220:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40162646046151666,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P2300_W92468021968325911',
    p_attribute_value => '95148537308558700____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40163722472088576,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P4850_W663191354226602129',
    p_attribute_value => '663193778295677089____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40353165702048259,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P4110_W1548412223182178',
    p_attribute_value => '1550029190194632____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40353359572018916,
    p_user_id => 'AGSN',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40460910202613539,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_131_P3_W63975745210285689',
    p_attribute_value => '63991531466285822____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40532592069296356,
    p_user_id => 'AGSN',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '301:false',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40722435904369967,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4350_P29_W9294827650405715',
    p_attribute_value => '9296821143409975____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40161519770185000,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P801_W47918412797645641',
    p_attribute_value => '47921608032702994____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40162448537151672,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P2300_W2050828593861326',
    p_attribute_value => '2117833588027975____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40726389125481058,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P156_W48551809017399629',
    p_attribute_value => '48552523817400257____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40774468327601285,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P763_W480600211834691519',
    p_attribute_value => '480602703192699428____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41126928824597725,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4600_P1_R4876236258998332_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41127008809597709,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4600_P1_R15607707130231509_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41127123819597702,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4600_P1_R10424237842079440_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41802221386015638,
    p_user_id => 'AGSN',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '263:false',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41934029647500328,
    p_user_id => 'AGSN',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_W',
    p_attribute_value => '1247.99',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42104084670631314,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P19_R6502251317526132326_SORT',
    p_attribute_value => 'sort_12_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42104234840631252,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P19_W6627086846099384958',
    p_attribute_value => '6634233308113526227____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42104303006631238,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P19_DISPLAY_AS',
    p_attribute_value => 'REPORT',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42106125937627028,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P4_W10290194320531860499',
    p_attribute_value => '10290196243130866294____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42106200661622498,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P23_R6616284618058937841_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42106405391622493,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P23_W6634847540927888530',
    p_attribute_value => '6634904859332043147____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42106502804622490,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P23_DISPLAY_AS',
    p_attribute_value => 'CARDS',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42110962819818992,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P80_R8883578503369389334_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42111095988818977,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P80_R8888750823053073173_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42111144931818968,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P80_R8889041203669143309_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42111299525818959,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P80_R12682069463299618819_SORT',
    p_attribute_value => 'sort_5_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42111316112818956,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P80_R10415628808260682879_SORT',
    p_attribute_value => 'sort_10_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42120582184745726,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_138_P48_W1041640091972919047',
    p_attribute_value => '120830948554828527____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42120974342743364,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_5705026807174896366_CURRENT_REPORT',
    p_attribute_value => '5705056062038938128:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42121087143743362,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_5705029639518897607_CURRENT_REPORT',
    p_attribute_value => '5705056598982938129:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42121192862743357,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_5265770590550701654_CURRENT_REPORT',
    p_attribute_value => '5328221496176121006:DETAIL',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42156483419671319,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P14_W42146911689671902',
    p_attribute_value => '42155948470671321____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42156540279670430,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_42149010940671893_CURRENT_REPORT',
    p_attribute_value => '42149946335671891:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42176745895619854,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P50_W42171337010621140',
    p_attribute_value => '42176204362619855____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42439207191542377,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_1573009001030403_CURRENT_REPORT',
    p_attribute_value => '1748625822176016:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42440120130508904,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P4655_R620324697529117358_SORT',
    p_attribute_value => 'sort_4_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42440286204508899,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P4655_R688592842784673826_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42451628702885611,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P50_R1533933130769636360_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42529514325569341,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P707_ROWS',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42529620363569325,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P707_R90472917919261593_SORT',
    p_attribute_value => 'sort_6_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42546714121337369,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P712_R40749510927686102_SORT',
    p_attribute_value => 'sort_4_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42688775815575083,
    p_user_id => '1_PRUEBAS70C',
    p_preference_name => 'FSP_IR_129_P20_W41662767435518792',
    p_attribute_value => '41669610918508975____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42719507970832326,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P49_W10293240227940227179',
    p_attribute_value => '10293240741983228288____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42728994496349633,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_51012337945910643745_CURRENT_REPORT',
    p_attribute_value => '7559018023959163825:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40163489198089051,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P4207_W47814307723191364',
    p_attribute_value => '47815210532192150____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41244832649107893,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_41226507284108616_CURRENT_REPORT',
    p_attribute_value => '41227499726108602:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40160100722308462,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40160753728229943,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P4100_W3727618522871356',
    p_attribute_value => '3728530690872449____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41361401947818479,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_41343136677819056_CURRENT_REPORT',
    p_attribute_value => '41344046494819051:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41391087294690447,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP131_P11_R41381815738705880_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41670126109508945,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P20_W41662767435518792',
    p_attribute_value => '41669610918508975_N___',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42024833127794560,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P40_W42017895599795742',
    p_attribute_value => '42024358851794576____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41864654560458624,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP129_P5_R41853929629546553_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41874512907685827,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP129_P5_R41869728136690133_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42045396847668158,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P40_W42039546713669316',
    p_attribute_value => '42044870543668159_N___',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42104968817630101,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P50_R6442608250053726856_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34179310676736788,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP_IR_4000_P801_W47918412797645641',
    p_attribute_value => '47921608032702994____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34163549456746244,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34163723433745651,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34179857439732717,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP_IR_4000_P4070_W47949429235486335',
    p_attribute_value => '47951124794493113____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34180869513708029,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP_IR_4000_P19_W451745617575288584',
    p_attribute_value => '451746507039288843____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34181486136707820,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP_IR_4000_P939_W451352700445603348',
    p_attribute_value => '451353909559603360____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42105125879630092,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P50_W6634247332413573247',
    p_attribute_value => '6634829297135347059____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42105231094630087,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P50_DISPLAY_AS',
    p_attribute_value => 'CARDS',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42105370917629729,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P2_R6495312319870447745_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42105586730629722,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P2_W6634248941439573263',
    p_attribute_value => '6634856344162888924____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42105695973629717,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P2_DISPLAY_AS',
    p_attribute_value => 'REPORT',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42105761316627674,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P68_R6611698614449591248_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42105961133627669,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P68_W6599262721852192765',
    p_attribute_value => '6633868917484786696____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42688965442574027,
    p_user_id => '1_PRUEBAS70C',
    p_preference_name => 'FSP_IR_129_P40_W42039546713669316',
    p_attribute_value => '42044870543668159____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42729054860349624,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_7559027977862166971_CURRENT_REPORT',
    p_attribute_value => '7559057232726208733:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42729145925349621,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_7559030810206168212_CURRENT_REPORT',
    p_attribute_value => '7559057769670208734:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42729236284349619,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_3964951391051327092_CURRENT_REPORT',
    p_attribute_value => '3981395699620981194:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42729321084349617,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_3964952535328327103_CURRENT_REPORT',
    p_attribute_value => '3981406512157077491:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42729483728349613,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_7119771761237972259_CURRENT_REPORT',
    p_attribute_value => '7182222666863391611:DETAIL',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43325632726299383,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P50_SORT',
    p_attribute_value => 'NAME',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42993900808686056,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P10034_W40027086865309136',
    p_attribute_value => '40031381241309100____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42994102801680214,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P10010_W39993960832309443',
    p_attribute_value => '39997037757309377____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43010189934403032,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P4911_R52412001060114527_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43020981074064219,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P10053_W40127313429308760',
    p_attribute_value => '40132952899308724____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43030501245945786,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P796_R185991323167292111_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43069203195574884,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P8_W170055004572851800',
    p_attribute_value => '170055522720852028____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43072734607567508,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P201_W169482721810656581',
    p_attribute_value => '169484418827659303____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43072908957565389,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4350_P42_W9858405979065705',
    p_attribute_value => '9859502658065926____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43109154258417383,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P20_W10277780320022826044',
    p_attribute_value => '10277782442434827687____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43313252562428215,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P11_W43311455468429044',
    p_attribute_value => '43312749551428231____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43326127469295837,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P138_W6679086978104674072',
    p_attribute_value => '6703110519912899420____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43328001902268604,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P135_W7506795272355629974',
    p_attribute_value => '7507362004195263659____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43420412590795709,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P1_SORT',
    p_attribute_value => 'NAME',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43526392946504544,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP129_P50_R43039875430900944_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43653826426063768,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P52_W43648169247105323',
    p_attribute_value => '43653391121063781____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40406528251241577,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_40390635526248382_CURRENT_REPORT',
    p_attribute_value => '40391558726248280:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40426311825225451,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_128_P6_W40420056200226769',
    p_attribute_value => '40425837703225497____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40460721429615573,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_131_P5_W40453426467628550',
    p_attribute_value => '40460275268615584____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40489369705563560,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_131_P2_W40481417741564236',
    p_attribute_value => '40488823112563562____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40552152896273307,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_40481002528564236_CURRENT_REPORT',
    p_attribute_value => '40535841128273743:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40581786350269403,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_131_P2_W40497070318512538',
    p_attribute_value => '40581253299269405____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42398243058717438,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P4653_R549191974509047647_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42398340386717434,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P4653_R655680133816025797_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42398490646717426,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P4653_R244091719536099844_SORT',
    p_attribute_value => 'sort_4_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42556035506333594,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P4654_R1499572493724561712_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42556183909333586,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P4654_R1499573840880561732_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43495893085571279,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4350_P33_R47031617128214415_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43189198393800882,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP129_P32_R43179753558862948_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43200360795753941,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P32_W84912294095954351',
    p_attribute_value => '84920894056930825_N___',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34163461749747572,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34178680591741317,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP4500_P1220_R11177418830226625_SORT',
    p_attribute_value => 'fsp_sort_8',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34178975819741188,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34179005870741138,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP4500_P1225_R164053306541529880_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34180105480719702,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'FSP_IR_4000_P4100_W3727618522871356',
    p_attribute_value => '3728530690872449____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 34181609539698830,
    p_user_id => 'ADM_MARTINEZNOELIA',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '298:false',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41691254414444950,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P30_W41684388861473031',
    p_attribute_value => '41690722141444953____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42106687383621988,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P23_SORT',
    p_attribute_value => 'NAME',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 39144478322385948,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42136397451714597,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_42124590512718300_CURRENT_REPORT',
    p_attribute_value => '42125481730718298:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42136470394714588,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_42129598954718271_CURRENT_REPORT',
    p_attribute_value => '42130411398718270:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42993280893690893,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P10041_W40077746471308910',
    p_attribute_value => '40079220208308876____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43327579554270369,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P68_DISPLAY_AS',
    p_attribute_value => 'REPORT',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43327621418270368,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P68_SORT',
    p_attribute_value => 'NAME',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 39241533977850425,
    p_user_id => 'AGSN',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '297:false',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 39280777968745313,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_9499495849275742_CURRENT_REPORT',
    p_attribute_value => '23204494782337413:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 39281239665556292,
    p_user_id => 'AGSN',
    p_preference_name => 'F4500_1157684150404338202_SPLITTER_STATE',
    p_attribute_value => '280:false',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 39719705286898999,
    p_user_id => 'AGSN',
    p_preference_name => 'WIZARD_SQL_SOURCE_TYPE',
    p_attribute_value => 'TABLE',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43399735700124695,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP115_P41_R795089888751494280_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43470324878841656,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP115_P6_R2165678728730140617_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43419643820827127,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP129_P16_R43404400690977904_SORT',
    p_attribute_value => 'sort_2_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43541306348481652,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_43039875430900944_CURRENT_REPORT',
    p_attribute_value => '43530883995482183:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43646675856130754,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P50_W129396017131039639',
    p_attribute_value => '129404769806898046____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 39740038996895610,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP128_P3_R39720074203898970_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40161292762207975,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40161991972164774,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P4070_W47949429235486335',
    p_attribute_value => '47951124794493113____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 39823434868077565,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P34_ROWS',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41210383321228477,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_131_P5_W41202989814244399',
    p_attribute_value => '41209826584228498____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42443016450179256,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P133_R12682069463299618819_SORT',
    p_attribute_value => 'sort_5_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42443175667179252,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P133_R10415628808260682879_SORT',
    p_attribute_value => 'sort_10_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42687017170662254,
    p_user_id => '1_PRUEBAS70C',
    p_preference_name => 'FSP_IR_129_P30_W41720162182199732',
    p_attribute_value => '41728762143176206____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42719751904831324,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P61_R12682069463299618819_SORT',
    p_attribute_value => 'sort_5_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42719824097831318,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP137_P61_R10415628808260682879_SORT',
    p_attribute_value => 'sort_10_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42966521429055187,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P10031_W40049998808309054',
    p_attribute_value => '40053532018309033____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 40352975603056435,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP128_P4_R40307923601060206_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41327405995836029,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP131_P3_R41320970038857117_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41633013265260033,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P688_R205852217711540402_SORT',
    p_attribute_value => 'sort_4_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41633173092259885,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P688_R207469307328320096_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41633259021258497,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P688_ROWS',
    p_attribute_value => '10',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41916225543272816,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P4003_W632908938554265910',
    p_attribute_value => '632910390117265918____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41916683181253534,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P260_W40585608941890825',
    p_attribute_value => '40587517034894377____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41916820770252884,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P267_W925260893554540223',
    p_attribute_value => '941041546743949140____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 41916903294252846,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P267_R22486830752876187_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42120623613745028,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_4527389859684561103_CURRENT_REPORT',
    p_attribute_value => '4662132082047216178:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42120787400745022,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_4662126510351216061_CURRENT_REPORT',
    p_attribute_value => '4662147300230223435:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42450699836934565,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P417_W185271900690507433',
    p_attribute_value => '185272916759507952____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42719304015849905,
    p_user_id => 'AGSN',
    p_preference_name => 'APEX_IG_712080000591813402_CURRENT_REPORT',
    p_attribute_value => '712386498335634625:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42993536631687421,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P10032_W40044569624309065',
    p_attribute_value => '40047345523309059____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42993725416686834,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P10033_W40034946944309092',
    p_attribute_value => '40040916622309070____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43267411173794412,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P9_W43265387995796986',
    p_attribute_value => '43266976420794431____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43420383440797591,
    p_user_id => 'AGSN',
    p_preference_name => 'PERSISTENT_ITEM_P2_SORT',
    p_attribute_value => 'NAME',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43687674493009503,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'APEX_IG_43674579936010455_CURRENT_REPORT',
    p_attribute_value => '43675477692010452:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42688418317608188,
    p_user_id => '1_PRUEBAS70C',
    p_preference_name => 'FSP_IR_129_P14_W42146911689671902',
    p_attribute_value => '42155948470671321____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42406285446617916,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP4000_P34_R77549119545304597_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42545972102355645,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_4000_P546_W30205316146531602',
    p_attribute_value => '30206031208532453____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42688564362607620,
    p_user_id => '1_PRUEBAS70C',
    p_preference_name => 'APEX_IG_42149010940671893_CURRENT_REPORT',
    p_attribute_value => '42149946335671891:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 42689176005572504,
    p_user_id => '1_PRUEBAS70C',
    p_preference_name => 'FSP_IR_129_P50_W42198200221529976',
    p_attribute_value => '42206952897388383____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43328994047264710,
    p_user_id => 'AGSN',
    p_preference_name => 'FSP_IR_137_P129_W7399827808707425358',
    p_attribute_value => '7399830110441425412____',
    p_tenant_id => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 43575592216334789,
    p_user_id => 'MARTINEZNOELIA64R',
    p_preference_name => 'FSP_IR_129_P52_W85760574902907633',
    p_attribute_value => '85769327578766040____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
begin
  wwv_flow_api.create_qb_saved_query (
    p_id => 42396286552802236
    ,p_query_owner => 'AGSN'
    ,p_title => 'menu dinamico lista'
 ,p_qb_sql => 
'select   null,'||wwv_flow.LF||
'        entry_text,'||wwv_flow.LF||
'        entry_target,'||wwv_flow.LF||
'        ''YES'' as is_current,'||wwv_flow.LF||
'        NVL (entry_image, entry_attribute_01) as LOGO,'||wwv_flow.LF||
'        SUBSTR (entry_target, INSTR (entry_target, '':'', 1, 1)+1,INSTR (entry_target, '':'', 1, 2) - instr (entry_target, '':'', 1, 1) -1 ) as PAGE_ID'||wwv_flow.LF||
'from apex_application_list_entries'||wwv_flow.LF||
'where application_id = 129 and'||wwv_flow.LF||
'        list_name  = ''Desktop Navigation Menu'''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405310901','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'AGSN'
    ,p_last_updated_on => to_date('202405310901','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_qb_saved_query (
    p_id => 41783777846516205
    ,p_query_owner => 'AGSN'
    ,p_title => 'menudinamico'
 ,p_qb_sql => 
'SELECT '||wwv_flow.LF||
'    APPLICATION_ID AS "Application ID",'||wwv_flow.LF||
'    LIST_NAME AS "Menu Name",'||wwv_flow.LF||
'    ENTRY_TEXT AS "Option Name",'||wwv_flow.LF||
'    ENTRY_TARGET AS "URL"'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
'WHERE'||wwv_flow.LF||
'    APPLICATION_ID =   129-- Filtra por la aplicación actual'||wwv_flow.LF||
'    and LIST_NAME = ''Desktop Navigation Bar'''||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'    LIST_NAME, ENTRY_TEXT;'||wwv_flow.LF||
''
    ,p_description => ''
    ,p_query_type => 'R'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271942','YYYYMMDDHH24MI')
    ,p_last_updated_by => 'AGSN'
    ,p_last_updated_on => to_date('202405271948','YYYYMMDDHH24MI'));
end;
/
----------------
--sql scripts
--
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '637265617465206F72207265706C6163652066756E6374696F6E202250525545424122200D0A28705F757365726E616D6520696E2056415243484152322C200D0A705F70617373776F726420696E20564152434841523229200D0A72657475726E20424F';
wwv_flow_api.g_varchar2_table(2) := '4F4C45414E200D0A6973200D0A202020202D2D205661726961626C65732064656C205365727669646F72206465204C44415020646520444D534153200D0A202020206C5F6C6461705F686F7374202020202056415243484152322832353629203A3D2027';
wwv_flow_api.g_varchar2_table(3) := '73636C64617061642E646D7361732E7364612E7361732E6A756E74612D616E64616C756369612E6573273B200D0A202020206C5F6C6461705F706F7274202020202056415243484152322832353629203A3D2027333839273B200D0A202020206C5F7265';
wwv_flow_api.g_varchar2_table(4) := '7476616C2020202020202020504C535F494E54454745523B200D0A202020206C5F73657373696F6E2020202020202044424D535F4C4441502E73657373696F6E3B200D0A202020206C5F617474727320202020202020202044424D535F4C4441502E7374';
wwv_flow_api.g_varchar2_table(5) := '72696E675F636F6C6C656374696F6E3B200D0A202020206C5F6D6573736167652020202020202044424D535F4C4441502E6D6573736167653B200D0A202020206C5F656E74727920202020202020202044424D535F4C4441502E6D6573736167653B200D';
wwv_flow_api.g_varchar2_table(6) := '0A202020206C5F617474725F6E616D652020202020564152434841523228323536293B200D0A202020206C5F6265725F656C656D656E7420202044424D535F4C4441502E6265725F656C656D656E743B200D0A202020206C5F76616C7320202020202020';
wwv_flow_api.g_varchar2_table(7) := '20202044424D535F4C4441502E737472696E675F636F6C6C656374696F6E3B200D0A202020206C5F6F6B202020202020202020202020424F4F4C45414E3B200D0A202020206C5F636F6E5F7065726D69736F202020424F4F4C45414E3B0D0A2020202072';
wwv_flow_api.g_varchar2_table(8) := '6F6C20202020202020202020202020564152434841523228323536293B20202020202020202020202020202020202020202020202020200D0A200D0A200D0A626567696E200D0A2020202020202020200D0A202020206C5F636F6E5F7065726D69736F20';
wwv_flow_api.g_varchar2_table(9) := '3A3D2066616C7365203B0D0A0D0A20202020617065785F64656275672E696E666F2028275072756562613A202573272C20705F757365726E616D65293B0D0A202020200D0A202020200D0A20202020415045585F44454255472E454E41424C4528617065';
wwv_flow_api.g_varchar2_table(10) := '785F64656275672E635F6C6F675F6C6576656C5F696E666F293B0D0A0D0A202020202D2D205574696C697A616D6F7320457863657063696F6E65730D0A2020202044424D535F4C4441502E7573655F657863657074696F6E203A3D20545255453B200D0A';
wwv_flow_api.g_varchar2_table(11) := '20200D0A202020202D2D20436F6E656374616D6F7320616C207365727669646F72204C4441500D0A202020206C5F73657373696F6E203A3D2044424D535F4C4441502E696E697428686F73746E616D65203D3E206C5F6C6461705F686F73742C200D0A20';
wwv_flow_api.g_varchar2_table(12) := '20202020202020202020202020202020202020202020202020202020202020706F72746E756D20203D3E206C5F6C6461705F706F7274293B200D0A20200D0A202020206C5F72657476616C203A3D2044424D535F4C4441502E73696D706C655F62696E64';
wwv_flow_api.g_varchar2_table(13) := '5F73286C6420202020203D3E206C5F73657373696F6E2C200D0A20202020202020202020202020202020202020202020202020202020202020202020202020202020646E20202020203D3E20705F757365726E616D657C7C2740646D736173272C200D0A';
wwv_flow_api.g_varchar2_table(14) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020706173737764203D3E20705F70617373776F7264293B200D0A2020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(15) := '202020202020200D0A200D0A202020202D2D2052656375706572616D6F73206C6F7320617472696275746F7320226D656D6265724F66220D0A202020206C5F6174747273283129203A3D20276D656D6265724F66273B200D0A202020206C5F6174747273';
wwv_flow_api.g_varchar2_table(16) := '283229203A3D2027646973706C61796E616D65273B200D0A200D0A202020202D2D2042757363616D6F7320696E666F726D616369C3B36E202020200D0A202020206C5F72657476616C203A3D2044424D535F4C4441502E7365617263685F73286C642020';
wwv_flow_api.g_varchar2_table(17) := '20202020203D3E206C5F73657373696F6E2C200D0A20202020202020202020202020202020202020202020202020202020202020202020206261736520202020203D3E202764633D646D7361732C64633D7364612C64633D7361732C64633D6A756E7461';
wwv_flow_api.g_varchar2_table(18) := '2D616E64616C756369612C64633D6573272C200D0A202020202020202020202020202020202020202020202020202020202020202020202073636F7065202020203D3E2044424D535F4C4441502E73636F70655F737562747265652C200D0A2020202020';
wwv_flow_api.g_varchar2_table(19) := '20202020202020202020202020202020202020202020202020202020202066696C7465722020203D3E20272826286F626A656374436C6173733D2A292873414D4163636F756E744E616D653D27207C7C20705F757365726E616D65207C7C272929272C20';
wwv_flow_api.g_varchar2_table(20) := '0D0A20202020202020202020202020202020202020202020202020202020202020202020206174747273202020203D3E206C5F61747472732C200D0A2020202020202020202020202020202020202020202020202020202020202020202020617474726F';
wwv_flow_api.g_varchar2_table(21) := '6E6C79203D3E20302C200D0A20202020202020202020202020202020202020202020202020202020202020202020207265732020202020203D3E206C5F6D657373616765293B200D0A200D0A202020200D0A202020206C5F656E747279203A3D2044424D';
wwv_flow_api.g_varchar2_table(22) := '535F4C4441502E66697273745F656E747279286C6420203D3E206C5F73657373696F6E2C200D0A2020202020202020202020202020202020202020202020202020202020202020202020206D7367203D3E206C5F6D657373616765293B200D0A20200D0A';
wwv_flow_api.g_varchar2_table(23) := '202020200D0A202020206C5F617474725F6E616D65203A3D2044424D535F4C4441502E66697273745F617474726962757465286C6420202020202020203D3E206C5F73657373696F6E2C200D0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(24) := '20202020202020202020202020202020202020206C646170656E747279203D3E206C5F656E7472792C20202020202020200D0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020206265725F656C';
wwv_flow_api.g_varchar2_table(25) := '656D20203D3E206C5F6265725F656C656D656E74293B200D0A0D0A202020202D2D2052656375706572616D6F7320746F646F73206C6F7320617472696275746F7320646520226D656D6265724F6622202020200D0A202020205748494C45206C5F617474';
wwv_flow_api.g_varchar2_table(26) := '725F6E616D65204953204E4F54204E554C4C204C4F4F50200D0A2020202020202020200D0A20202020202020202D2D2072656375706572616D6F732076616C6F7265730D0A20202020202020206C5F76616C73203A3D2044424D535F4C4441502E676574';
wwv_flow_api.g_varchar2_table(27) := '5F76616C756573286C6420202020202020203D3E206C5F73657373696F6E2C200D0A2020202020202020202020202020202020202020202020202020202020202020202020202020206C646170656E747279203D3E206C5F656E7472792C200D0A202020';
wwv_flow_api.g_varchar2_table(28) := '20202020202020202020202020202020202020202020202020202020202020202020202020617474722020202020203D3E206C5F617474725F6E616D65293B200D0A200D0A202020202020202064626D735F6F75747075742E7075745F6C696E65286C5F';
wwv_flow_api.g_varchar2_table(29) := '617474725F6E616D65293B200D0A0D0A2020202020202020617065785F64656275672E696E666F202827417472696275746F20313A202573272C206C5F617474725F6E616D65293B0D0A20200D0A200D0A202020202020202069662028206C5F61747472';
wwv_flow_api.g_varchar2_table(30) := '5F6E616D65203D2027646973706C61794E616D652729207468656E200D0A20202020202020202020202064626D735F6F75747075742E7075745F6C696E652827456E20646973706C61796E616D652720207C7C206C5F76616C73283029293B200D0A2020';
wwv_flow_api.g_varchar2_table(31) := '20202020202020202020617065785F7574696C2E7365745F73657373696F6E5F737461746528705F6E616D6520203D3E202753455353494F4E5F55534552444953504C41594E414D45272C200D0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(32) := '20202020202020202020705F76616C7565203D3E206C5F76616C73283029293B200D0A2020202020202020656C7365200D0A20202020202020202D2D20436865636B2074686520636F6E74656E7473206F66207468652076616C75652020202020202020';
wwv_flow_api.g_varchar2_table(33) := '200D0A202020202020202020202020464F52206920494E206C5F76616C732E4649525354202E2E206C5F76616C732E4C415354204C4F4F50200D0A20202020200D0A202020202020202020202020202020202D2D20436865636B20746865207573657220';
wwv_flow_api.g_varchar2_table(34) := '69732061206D656D626572206F66207468652072657175697265642067726F75702E200D0A2020202020200D0A202020202020202020202020202020206C5F6F6B203A3D2066616C73653B200D0A2020202020202020202020202020202064626D735F6F';
wwv_flow_api.g_varchar2_table(35) := '75747075742E7075745F6C696E65286C5F76616C73286929293B200D0A20202020202020202020202020202020617065785F64656275672E696E666F202827417472696275746F20323A202573272C206C5F76616C73286929293B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(36) := '20202020202020202020202D2D2053692070657274656E65636520616C20677275706F20535449432C2061636365736F2061204361726F6E74652E200D0A202020202020202020202020202020202D2D20726F6C203A3D205245504C41434520286C5F76';
wwv_flow_api.g_varchar2_table(37) := '616C732869292C2027414C34315F47535F272C20293B200D0A20202020202020202020202020202020200D0A200D0A202020202020202020202020202020204946202820494E53545228206C5F76616C73286929202C2027475234305F47535F5475726E';
wwv_flow_api.g_varchar2_table(38) := '6F5341535F4445525F41444D494E2729203E203029205448454E202020202020202020202020202020202020202020202020200D0A2020202020202020202020202020202020202020202020206C5F6F6B203A3D20747275653B200D0A20202020202020';
wwv_flow_api.g_varchar2_table(39) := '20202020202020202020202020202020206C5F636F6E5F7065726D69736F203A3D2074727565203B0D0A202020202020202020202020202020202020202020202020617065785F64656275672E696E666F202827454E545241212120454E545241212121';
wwv_flow_api.g_varchar2_table(40) := '3A202573272C206C5F76616C73286929293B20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(41) := '202020202020202020202020202020202020202020202020202020202020200D0A20202020202020202020202020202020454E442049463B200D0A200D0A0D0A200D0A202020202020202020202020454E44204C4F4F503B200D0A200D0A202020202020';
wwv_flow_api.g_varchar2_table(42) := '2020454E442049463B200D0A200D0A20202020202020206C5F617474725F6E616D65203A3D2044424D535F4C4441502E6E6578745F617474726962757465286C6420202020202020203D3E206C5F73657373696F6E2C200D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(43) := '202020202020202020202020202020202020202020202020202020202020202020202020206C646170656E747279203D3E206C5F656E7472792C20202020202020200D0A2020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(44) := '202020202020202020202020202020206265725F656C656D20203D3E206C5F6265725F656C656D656E7420293B200D0A200D0A20202020454E44204C4F4F503B200D0A20200D0A202020206C5F72657476616C203A3D2064626D735F6C6461702E756E62';
wwv_flow_api.g_varchar2_table(45) := '696E645F73286C64203D3E206C5F73657373696F6E293B200D0A20200D0A202020202D2D20496E646963616D6F7320617574656E7469666963616369C3B36E20636F7272656374612E200D0A20202020617065785F7574696C2E7365745F73657373696F';
wwv_flow_api.g_varchar2_table(46) := '6E5F737461746528705F6E616D6520203D3E202753455353494F4E5F555345524E414D45272C200D0A2020202020202020202020202020202020202020202020202020202020202020705F76616C7565203D3E20705F757365726E616D65293B200D0A0D';
wwv_flow_api.g_varchar2_table(47) := '0A20202020415045585F5554494C2E5345545F41555448454E5449434154494F4E5F524553554C542830293B200D0A0D0A0D0A20202020494620286C5F636F6E5F7065726D69736F203D2066616C736529205448454E0D0A202020202020202041504558';
wwv_flow_api.g_varchar2_table(48) := '5F5554494C2E7365745F637573746F6D5F617574685F7374617475732028705F737461747573203D3E202753752076616C69646163696F6E20636F6E74726120444D534153206861207369646F20636F727265637461207065726F206361726563652064';
wwv_flow_api.g_varchar2_table(49) := '65207065726D69736F732064652061636365736F27293B200D0A202020202020202072657475726E202066616C73653B200D0A20202020454E442049463B0D0A0D0A20202020494620286C5F636F6E5F7065726D69736F203D207472756529205448454E';
wwv_flow_api.g_varchar2_table(50) := '0D0A202020202020202072657475726E2020747275653B200D0A20202020454E442049463B0D0A0D0A202020202D2D2072657475726E20747275653B200D0A200D0A20202020455843455054494F4E200D0A20202020202020205748454E204F54484552';
wwv_flow_api.g_varchar2_table(51) := '53205448454E200D0A20202020200D0A20202020202020202D2D2045786365637063696F6E206572726F7220646520636F6E6578696F6E0D0A20202020202020206C5F72657476616C203A3D2044424D535F4C4441502E756E62696E645F73286C64203D';
wwv_flow_api.g_varchar2_table(52) := '3E206C5F73657373696F6E293B200D0A2020202020202020415045585F5554494C2E7365745F637573746F6D5F617574685F7374617475732028705F737461747573203D3E20275573756172696F6F6F6F6F20792F6F20636F6E7472617365C3B1612069';
wwv_flow_api.g_varchar2_table(53) := '6E636F7272656374612E27293B200D0A2020202020202020415045585F5554494C2E5345545F41555448454E5449434154494F4E5F524553554C54282D31293B200D0A202020202020202052455455524E2046414C53453B20202020200D0A200D0A656E';
wwv_flow_api.g_varchar2_table(54) := '643B0D0A2F';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 34164160733741647,
    p_flow_id => 4500,
    p_name => '34164160733741647/PRUEBA',
    p_pathid => null,
    p_filename => 'PRUEBA',
    p_title => 'PRUEBA',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'ADM_MARTINEZNOELIA',
    p_created_on => to_date('202312121209','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34178551768741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 2
    ,p_src_line_number => 144
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34168173453741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 40
    ,p_offset => 1301
    ,p_length => 64
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                        passwd => p_password);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34168257042741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 41
    ,p_offset => 1366
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34164210702741613
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'create or replace function "PRUEBA"  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34164379109741610
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 39
    ,p_length => 26
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(p_username in VARCHAR2,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34164468763741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 66
    ,p_length => 25
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'p_password in VARCHAR2)  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34164553847741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 92
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'return BOOLEAN  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34164650517741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 109
    ,p_length => 4
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'is  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34168352282741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 42
    ,p_offset => 1410
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34168422235741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 43
    ,p_offset => 1413
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Recuperamos los atributos "memberOf" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34168583309741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 44
    ,p_offset => 1458
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attrs(1) := ''memberOf'';  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34168623836741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 45
    ,p_offset => 1490
    ,p_length => 34
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attrs(2) := ''displayname'';  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34168795394741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 46
    ,p_offset => 1525
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34168896044741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 47
    ,p_offset => 1528
    ,p_length => 32
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Buscamos información     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34168906698741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 48
    ,p_offset => 1561
    ,p_length => 59
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval := DBMS_LDAP.search_s(ld       => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34169072961741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 49
    ,p_offset => 1621
    ,p_length => 99
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   base     => ''dc=dmsas,dc=sda,dc=sas,dc=junta-andalucia,dc=es'',  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34164720362741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 114
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Variables del Servidor de LDAP de DMSAS  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34164808403741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 163
    ,p_length => 83
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ldap_host     VARCHAR2(256) := ''scldapad.dmsas.sda.sas.junta-andalucia.es'';  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34164932284741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 247
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ldap_port     VARCHAR2(256) := ''389'';  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34165095792741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 293
    ,p_length => 34
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval        PLS_INTEGER;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34165183075741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 328
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_session       DBMS_LDAP.session;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34165268348741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 11
    ,p_offset => 369
    ,p_length => 50
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attrs         DBMS_LDAP.string_collection;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34165399827741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 12
    ,p_offset => 420
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_message       DBMS_LDAP.message;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34165431499741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 13
    ,p_offset => 461
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_entry         DBMS_LDAP.message;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34169140402741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 50
    ,p_offset => 1721
    ,p_length => 73
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   scope    => DBMS_LDAP.scope_subtree,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34169292886741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 51
    ,p_offset => 1795
    ,p_length => 106
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   filter   => ''(&(objectClass=*)(sAMAccountName='' || p_username ||''))'',  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34169325272741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 52
    ,p_offset => 1902
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   attrs    => l_attrs,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34169491575741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 53
    ,p_offset => 1960
    ,p_length => 51
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   attronly => 0,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34169516911741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 54
    ,p_offset => 2012
    ,p_length => 60
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   res      => l_message);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34165576074741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 14
    ,p_offset => 502
    ,p_length => 36
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attr_name     VARCHAR2(256);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34165678436741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 15
    ,p_offset => 539
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ber_element   DBMS_LDAP.ber_element;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34165702436741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 16
    ,p_offset => 584
    ,p_length => 50
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_vals          DBMS_LDAP.string_collection;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34165821437741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 17
    ,p_offset => 635
    ,p_length => 30
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ok            BOOLEAN;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34165987273741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 18
    ,p_offset => 666
    ,p_length => 29
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_con_permiso   BOOLEAN; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34166076844741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 19
    ,p_offset => 696
    ,p_length => 61
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    rol             VARCHAR2(256);                           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34166111053741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 20
    ,p_offset => 758
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34166259202741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 21
    ,p_offset => 761
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34166359770741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 22
    ,p_offset => 764
    ,p_length => 7
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34166416021741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 23
    ,p_offset => 772
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '          '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34166525897741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 24
    ,p_offset => 783
    ,p_length => 29
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_con_permiso := false ; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34166667308741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 25
    ,p_offset => 813
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34166738765741609
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 26
    ,p_offset => 815
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    apex_debug.info (''Prueba: %s'', p_username); '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34166849712741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 27
    ,p_offset => 864
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34166952159741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 28
    ,p_offset => 870
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34167006194741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 29
    ,p_offset => 876
    ,p_length => 52
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    APEX_DEBUG.ENABLE(apex_debug.c_log_level_info); '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34167135689741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 30
    ,p_offset => 929
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34167271285741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 31
    ,p_offset => 931
    ,p_length => 30
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Utilizamos Excepciones '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34167317157741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 32
    ,p_offset => 962
    ,p_length => 38
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    DBMS_LDAP.use_exception := TRUE;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34167468159741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 33
    ,p_offset => 1001
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34167525413741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 34
    ,p_offset => 1005
    ,p_length => 35
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Conectamos al servidor LDAP '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34167697748741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 35
    ,p_offset => 1041
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_session := DBMS_LDAP.init(hostname => l_ldap_host,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34167767603741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 36
    ,p_offset => 1100
    ,p_length => 59
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                portnum  => l_ldap_port);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34167825845741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 37
    ,p_offset => 1160
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34167939182741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 38
    ,p_offset => 1164
    ,p_length => 62
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval := DBMS_LDAP.simple_bind_s(ld     => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34168005725741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 39
    ,p_offset => 1227
    ,p_length => 73
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                        dn     => p_username||''@dmsas'',  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34169679711741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 55
    ,p_offset => 2073
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34169718921741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 56
    ,p_offset => 2076
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34169806325741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 57
    ,p_offset => 2082
    ,p_length => 56
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_entry := DBMS_LDAP.first_entry(ld  => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34169989373741608
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 58
    ,p_offset => 2139
    ,p_length => 56
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                    msg => l_message);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34170037984741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 59
    ,p_offset => 2196
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34170131639741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 60
    ,p_offset => 2200
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34170261293741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 61
    ,p_offset => 2206
    ,p_length => 70
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attr_name := DBMS_LDAP.first_attribute(ld        => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34170305385741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 62
    ,p_offset => 2277
    ,p_length => 73
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                           ldapentry => l_entry,         '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34170459368741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 63
    ,p_offset => 2351
    ,p_length => 73
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                           ber_elem  => l_ber_element);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34170522284741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 64
    ,p_offset => 2425
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34170671773741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 65
    ,p_offset => 2427
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Recuperamos todos los atributos de "memberOf"     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34170767565741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 66
    ,p_offset => 2485
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    WHILE l_attr_name IS NOT NULL LOOP  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34170847272741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 67
    ,p_offset => 2526
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '          '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34170976352741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 68
    ,p_offset => 2537
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- recuperamos valores '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34171076810741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 69
    ,p_offset => 2569
    ,p_length => 64
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        l_vals := DBMS_LDAP.get_values(ld        => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34171179665741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 70
    ,p_offset => 2634
    ,p_length => 62
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                       ldapentry => l_entry,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34171287316741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 71
    ,p_offset => 2697
    ,p_length => 68
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                        attr      => l_attr_name);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34171324561741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 72
    ,p_offset => 2766
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34171459970741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 73
    ,p_offset => 2769
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        dbms_output.put_line(l_attr_name);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34171507215741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 74
    ,p_offset => 2814
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34171649220741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 75
    ,p_offset => 2816
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        apex_debug.info (''Atributo 1: %s'', l_attr_name); '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34171787959741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 76
    ,p_offset => 2874
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34171897823741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 77
    ,p_offset => 2878
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34171964952741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 78
    ,p_offset => 2881
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        if ( l_attr_name = ''displayName'') then  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34172057626741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 79
    ,p_offset => 2930
    ,p_length => 67
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            dbms_output.put_line(''En displayname''  || l_vals(0));  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34172167075741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 80
    ,p_offset => 2998
    ,p_length => 79
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            apex_util.set_session_state(p_name  => ''SESSION_USERDISPLAYNAME'',  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34172288291741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 81
    ,p_offset => 3078
    ,p_length => 56
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                p_value => l_vals(0));  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34172367818741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 82
    ,p_offset => 3135
    ,p_length => 14
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        else  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34172485386741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 83
    ,p_offset => 3150
    ,p_length => 52
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- Check the contents of the value          '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34172516513741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 84
    ,p_offset => 3203
    ,p_length => 55
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            FOR i IN l_vals.FIRST .. l_vals.LAST LOOP  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34172698826741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 85
    ,p_offset => 3259
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34172795422741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 86
    ,p_offset => 3266
    ,p_length => 70
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                -- Check the user is a member of the required group.  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34172858146741607
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 87
    ,p_offset => 3337
    ,p_length => 7
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '       '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34172944119741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 88
    ,p_offset => 3345
    ,p_length => 32
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                l_ok := false;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34173060680741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 89
    ,p_offset => 3378
    ,p_length => 50
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                dbms_output.put_line(l_vals(i));  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34173178463741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 90
    ,p_offset => 3429
    ,p_length => 63
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                apex_debug.info (''Atributo 2: %s'', l_vals(i)); '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34173227083741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 91
    ,p_offset => 3493
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34173312170741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 92
    ,p_offset => 3495
    ,p_length => 66
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                -- Si pertenece al grupo STIC, acceso a Caronte.  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34173434156741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 93
    ,p_offset => 3562
    ,p_length => 62
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                -- rol := REPLACE (l_vals(i), ''AL41_GS_'', );  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34173522128741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 94
    ,p_offset => 3625
    ,p_length => 18
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34173630669741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 95
    ,p_offset => 3644
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34173723434741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 96
    ,p_offset => 3647
    ,p_length => 105
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                IF ( INSTR( l_vals(i) , ''GR40_GS_TurnoSAS_DER_ADMIN'') > 0) THEN                          '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34173843590741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 97
    ,p_offset => 3753
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                        l_ok := true;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34173911914741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 98
    ,p_offset => 3793
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                        l_con_permiso := true ; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34174091318741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 99
    ,p_offset => 3842
    ,p_length => 190
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                        apex_debug.info (''ENTRA!! ENTRA!!!: %s'', l_vals(i));                                                                                                                  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34174156881741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 100
    ,p_offset => 4033
    ,p_length => 25
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                END IF;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34174275892741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 101
    ,p_offset => 4059
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34174349769741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 102
    ,p_offset => 4062
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34174412963741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 103
    ,p_offset => 4064
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34174533681741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 104
    ,p_offset => 4067
    ,p_length => 23
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            END LOOP;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34174636734741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 105
    ,p_offset => 4091
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34174782672741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 106
    ,p_offset => 4094
    ,p_length => 17
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        END IF;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34174802089741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 107
    ,p_offset => 4112
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34174955176741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 108
    ,p_offset => 4115
    ,p_length => 73
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        l_attr_name := DBMS_LDAP.next_attribute(ld        => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34175036248741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 109
    ,p_offset => 4189
    ,p_length => 78
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                                ldapentry => l_entry,         '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34175158578741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 110
    ,p_offset => 4268
    ,p_length => 79
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                                ber_elem  => l_ber_element );  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34175214434741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 111
    ,p_offset => 4348
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34175326256741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 112
    ,p_offset => 4351
    ,p_length => 15
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END LOOP;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34175402703741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 113
    ,p_offset => 4367
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34175549371741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 114
    ,p_offset => 4371
    ,p_length => 54
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval := dbms_ldap.unbind_s(ld => l_session);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34175647496741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 115
    ,p_offset => 4426
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34175766814741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 116
    ,p_offset => 4430
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Indicamos autentificación correcta.  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34175870081741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 117
    ,p_offset => 4475
    ,p_length => 64
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    apex_util.set_session_state(p_name  => ''SESSION_USERNAME'',  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34175950508741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 118
    ,p_offset => 4540
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                p_value => p_username);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34176013321741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 119
    ,p_offset => 4598
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34176178659741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 120
    ,p_offset => 4600
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    APEX_UTIL.SET_AUTHENTICATION_RESULT(0);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34176242131741606
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 121
    ,p_offset => 4646
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34176321978741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 122
    ,p_offset => 4648
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34176402978741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 123
    ,p_offset => 4650
    ,p_length => 36
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    IF (l_con_permiso = false) THEN '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34176547337741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 124
    ,p_offset => 4687
    ,p_length => 137
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        APEX_UTIL.set_custom_auth_status (p_status => ''Su validacion contra DMSAS ha sido correcta pero carece de permisos de acceso'');  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34176680802741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 125
    ,p_offset => 4825
    ,p_length => 24
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        return  false;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34176708238741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 126
    ,p_offset => 4850
    ,p_length => 12
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END IF; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34176859525741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 127
    ,p_offset => 4863
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34176994859741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 128
    ,p_offset => 4865
    ,p_length => 35
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    IF (l_con_permiso = true) THEN '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34177012629741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 129
    ,p_offset => 4901
    ,p_length => 23
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        return  true;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34177157012741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 130
    ,p_offset => 4925
    ,p_length => 12
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END IF; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34177237310741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 131
    ,p_offset => 4938
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34177309037741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 132
    ,p_offset => 4940
    ,p_length => 21
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- return true;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34177427334741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 133
    ,p_offset => 4962
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34177586936741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 134
    ,p_offset => 4965
    ,p_length => 15
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    EXCEPTION  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34177618292741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 135
    ,p_offset => 4981
    ,p_length => 26
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        WHEN OTHERS THEN  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34177734444741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 136
    ,p_offset => 5008
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34177857271741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 137
    ,p_offset => 5015
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- Excecpcion error de conexion '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34177998272741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 138
    ,p_offset => 5056
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        l_retval := DBMS_LDAP.unbind_s(ld => l_session);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34178084649741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 139
    ,p_offset => 5115
    ,p_length => 98
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        APEX_UTIL.set_custom_auth_status (p_status => ''Usuariooooo y/o contraseña incorrecta.'');  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34178141431741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 140
    ,p_offset => 5214
    ,p_length => 50
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        APEX_UTIL.SET_AUTHENTICATION_RESULT(-1);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34178216238741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 141
    ,p_offset => 5265
    ,p_length => 27
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        RETURN FALSE;      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34178341196741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 142
    ,p_offset => 5293
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 34178433724741605
    ,p_file_id => 34164160733741647
    ,p_stmt_number => 1
    ,p_src_line_number => 143
    ,p_offset => 5296
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 34178748285741316,
    p_file_id => 34164160733741647,
    p_job_id => null,
    p_run_by => 'ADM_MARTINEZNOELIA',
    p_run_as => 'AGSN',
    p_started => to_date('202312121209','YYYYMMDDHH24MI'),
    p_start_time => -2108741296,
    p_ended => to_date('202312121209','YYYYMMDDHH24MI'),
    p_end_time => -2108741189,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 34178831104741293
    ,p_result_id => 34178748285741316
    ,p_file_id => 34164160733741647
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'create or replace function "PRUEBA"  (p_username in VARCHAR2,  p_password in VARCHAR2)  return BOOLEAN  is      -- Variables del Servidor de LDAP de DMSAS      l_ldap_host     VARCHAR2(256) := ''scldapad.dmsas.sda.sas.junta-andalucia.es'';      l_ldap_port     VARCHAR2(256) := ''389'';      l_retval        PLS_INTEGER;      l_session       DBMS_LDAP.session;      l_attrs         DBMS_LDAP.string_colle'||
'ction;      l_message       DBMS_LDAP.message;      l_entry         DBMS_LDAP.message;      l_attr_name     VARCHAR2(256);      l_ber_element   DBMS_LDAP.ber_element;      l_vals          DBMS_LDAP.string_collection;      l_ok            BOOLEAN;      l_con_permiso   BOOLEAN;     rol             VARCHAR2(256);                               begin                l_con_permiso := false ;      apex_de'||
'bug.info (''Prueba: %s'', p_username);               APEX_DEBUG.ENABLE(apex_debug.c_log_level_info);      -- Utilizamos Excepciones     DBMS_LDAP.use_exception := TRUE;         -- Conectamos al servidor LDAP     l_session := DBMS_LDAP.init(hostname => l_ldap_host,                                  portnum  => l_ldap_port);         l_retval := DBMS_LDAP.simple_bind_s(ld     => l_session,              '||
'                            dn     => p_username||''@dmsas'',                                          passwd => p_password);                                                   -- Recuperamos los atributos "memberOf"     l_attrs(1) := ''memberOf'';      l_attrs(2) := ''displayname'';        -- Buscamos información         l_retval := DBMS_LDAP.search_s(ld       => l_session,                              '||
'       base     => ''dc=dmsas,dc=sda,dc=sas,dc=junta-andalucia,dc=es'',                                     scope    => DBMS_LDAP.scope_subtree,                                     filter   => ''(&(objectClass=*)(sAMAccountName='' || p_username ||''))'',                                     attrs    => l_attrs,                                     attronly => 0,                                     res    '||
'  => l_message);             l_entry := DBMS_LDAP.first_entry(ld  => l_session,                                      msg => l_message);              l_attr_name := DBMS_LDAP.first_attribute(ld        => l_session,                                             ldapentry => l_entry,                                                    ber_elem  => l_ber_element);       -- Recuperamos todos los atributos'||
' de "memberOf"         WHILE l_attr_name IS NOT NULL LOOP                    -- recuperamos valores         l_vals := DBMS_LDAP.get_values(ld        => l_session,                                         ldapentry => l_entry,                                          attr      => l_attr_name);            dbms_output.put_line(l_attr_name);           apex_debug.info (''Atributo 1: %s'', l_attr_name);   '||
'           if ( l_attr_name = ''displayName'') then              dbms_output.put_line(''En displayname''  || l_vals(0));              apex_util.set_session_state(p_name  => ''SESSION_USERDISPLAYNAME'',                                  p_value => l_vals(0));          else          -- Check the contents of the value                      FOR i IN l_vals.FIRST .. l_vals.LAST LOOP                        -- C'||
'heck the user is a member of the required group.                         l_ok := false;                  dbms_output.put_line(l_vals(i));                  apex_debug.info (''Atributo 2: %s'', l_vals(i));                  -- Si pertenece al grupo STIC, acceso a Caronte.                  -- rol := REPLACE (l_vals(i), ''AL41_GS_'', );                                      IF ( INSTR( l_vals(i) , ''GR40_GS_'||
'TurnoSAS_DER_ADMIN'') > 0) THEN                                                  l_ok := true;                          l_con_permiso := true ;                         apex_debug.info (''ENTRA!! ENTRA!!!: %s'', l_vals(i));                                                                                                                                  END IF;                   END LOOP;            END '||
'IF;            l_attr_name := DBMS_LDAP.next_attribute(ld        => l_session,                                                  ldapentry => l_entry,                                                         ber_elem  => l_ber_element );        END LOOP;         l_retval := dbms_ldap.unbind_s(ld => l_session);         -- Indicamos autentificación correcta.      apex_util.set_session_state(p_name  =>'||
' ''SESSION_USERNAME'',                                  p_value => p_username);       APEX_UTIL.SET_AUTHENTICATION_RESULT(0);        IF (l_con_permiso = false) THEN         APEX_UTIL.set_custom_auth_status (p_status => ''Su validacion contra DMSAS ha sido correcta pero carece de permisos de acceso'');          return  false;      END IF;      IF (l_con_permiso = true) THEN         return  true;      E'||
'ND IF;      -- return true;        EXCEPTION          WHEN OTHERS THEN                -- Excecpcion error de conexion         l_retval := DBMS_LDAP.unbind_s(ld => l_session);          APEX_UTIL.set_custom_auth_status (p_status => ''Usuariooooo y/o contraseña incorrecta.'');          APEX_UTIL.SET_AUTHENTICATION_RESULT(-1);          RETURN FALSE;        end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Function created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202312121209','YYYYMMDDHH24MI')
    ,p_start_time => -2108741293
    ,p_ended => to_date('202312121209','YYYYMMDDHH24MI')
    ,p_end_time => -2108741190
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202312121209','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '637265617465206F72207265706C6163652066756E6374696F6E202241434345534F22200D0A28705F757365726E616D6520696E2056415243484152322C200D0A705F70617373776F726420696E20564152434841523229200D0A72657475726E20424F';
wwv_flow_api.g_varchar2_table(2) := '4F4C45414E200D0A6973200D0A202020202D2D205661726961626C65732064656C205365727669646F72206465204C44415020646520444D534153200D0A202020206C5F6C6461705F686F7374202020202056415243484152322832353629203A3D2027';
wwv_flow_api.g_varchar2_table(3) := '73636C64617061642E646D7361732E7364612E7361732E6A756E74612D616E64616C756369612E6573273B200D0A202020206C5F6C6461705F706F7274202020202056415243484152322832353629203A3D2027333839273B200D0A202020206C5F7265';
wwv_flow_api.g_varchar2_table(4) := '7476616C2020202020202020504C535F494E54454745523B200D0A202020206C5F73657373696F6E2020202020202044424D535F4C4441502E73657373696F6E3B200D0A202020206C5F617474727320202020202020202044424D535F4C4441502E7374';
wwv_flow_api.g_varchar2_table(5) := '72696E675F636F6C6C656374696F6E3B200D0A202020206C5F6D6573736167652020202020202044424D535F4C4441502E6D6573736167653B200D0A202020206C5F656E74727920202020202020202044424D535F4C4441502E6D6573736167653B200D';
wwv_flow_api.g_varchar2_table(6) := '0A202020206C5F617474725F6E616D652020202020564152434841523228323536293B200D0A202020206C5F6265725F656C656D656E7420202044424D535F4C4441502E6265725F656C656D656E743B200D0A202020206C5F76616C7320202020202020';
wwv_flow_api.g_varchar2_table(7) := '20202044424D535F4C4441502E737472696E675F636F6C6C656374696F6E3B200D0A202020206C5F6F6B202020202020202020202020424F4F4C45414E3B200D0A202020206C5F636F6E5F7065726D69736F202020424F4F4C45414E3B0D0A2020202072';
wwv_flow_api.g_varchar2_table(8) := '6F6C20202020202020202020202020564152434841523228323536293B20202020202020202020202020202020202020202020202020200D0A200D0A200D0A626567696E200D0A2020202020202020200D0A202020206C5F636F6E5F7065726D69736F20';
wwv_flow_api.g_varchar2_table(9) := '3A3D2066616C7365203B0D0A0D0A20202020617065785F64656275672E696E666F2028275072756562613A202573272C20705F757365726E616D65293B0D0A202020200D0A202020200D0A20202020415045585F44454255472E454E41424C4528617065';
wwv_flow_api.g_varchar2_table(10) := '785F64656275672E635F6C6F675F6C6576656C5F696E666F293B0D0A0D0A202020202D2D205574696C697A616D6F7320457863657063696F6E65730D0A2020202044424D535F4C4441502E7573655F657863657074696F6E203A3D20545255453B200D0A';
wwv_flow_api.g_varchar2_table(11) := '20200D0A202020202D2D20436F6E656374616D6F7320616C207365727669646F72204C4441500D0A202020206C5F73657373696F6E203A3D2044424D535F4C4441502E696E697428686F73746E616D65203D3E206C5F6C6461705F686F73742C200D0A20';
wwv_flow_api.g_varchar2_table(12) := '20202020202020202020202020202020202020202020202020202020202020706F72746E756D20203D3E206C5F6C6461705F706F7274293B200D0A20200D0A202020206C5F72657476616C203A3D2044424D535F4C4441502E73696D706C655F62696E64';
wwv_flow_api.g_varchar2_table(13) := '5F73286C6420202020203D3E206C5F73657373696F6E2C200D0A20202020202020202020202020202020202020202020202020202020202020202020202020202020646E20202020203D3E20705F757365726E616D657C7C2740646D736173272C200D0A';
wwv_flow_api.g_varchar2_table(14) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020706173737764203D3E20705F70617373776F7264293B200D0A2020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(15) := '202020202020200D0A200D0A202020202D2D2052656375706572616D6F73206C6F7320617472696275746F7320226D656D6265724F66220D0A202020206C5F6174747273283129203A3D20276D656D6265724F66273B200D0A202020206C5F6174747273';
wwv_flow_api.g_varchar2_table(16) := '283229203A3D2027646973706C61796E616D65273B200D0A200D0A202020202D2D2042757363616D6F7320696E666F726D616369C3B36E202020200D0A202020206C5F72657476616C203A3D2044424D535F4C4441502E7365617263685F73286C642020';
wwv_flow_api.g_varchar2_table(17) := '20202020203D3E206C5F73657373696F6E2C200D0A20202020202020202020202020202020202020202020202020202020202020202020206261736520202020203D3E202764633D646D7361732C64633D7364612C64633D7361732C64633D6A756E7461';
wwv_flow_api.g_varchar2_table(18) := '2D616E64616C756369612C64633D6573272C200D0A202020202020202020202020202020202020202020202020202020202020202020202073636F7065202020203D3E2044424D535F4C4441502E73636F70655F737562747265652C200D0A2020202020';
wwv_flow_api.g_varchar2_table(19) := '20202020202020202020202020202020202020202020202020202020202066696C7465722020203D3E20272826286F626A656374436C6173733D2A292873414D4163636F756E744E616D653D27207C7C20705F757365726E616D65207C7C272929272C20';
wwv_flow_api.g_varchar2_table(20) := '0D0A20202020202020202020202020202020202020202020202020202020202020202020206174747273202020203D3E206C5F61747472732C200D0A2020202020202020202020202020202020202020202020202020202020202020202020617474726F';
wwv_flow_api.g_varchar2_table(21) := '6E6C79203D3E20302C200D0A20202020202020202020202020202020202020202020202020202020202020202020207265732020202020203D3E206C5F6D657373616765293B200D0A200D0A202020200D0A202020206C5F656E747279203A3D2044424D';
wwv_flow_api.g_varchar2_table(22) := '535F4C4441502E66697273745F656E747279286C6420203D3E206C5F73657373696F6E2C200D0A2020202020202020202020202020202020202020202020202020202020202020202020206D7367203D3E206C5F6D657373616765293B200D0A20200D0A';
wwv_flow_api.g_varchar2_table(23) := '202020200D0A202020206C5F617474725F6E616D65203A3D2044424D535F4C4441502E66697273745F617474726962757465286C6420202020202020203D3E206C5F73657373696F6E2C200D0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(24) := '20202020202020202020202020202020202020206C646170656E747279203D3E206C5F656E7472792C20202020202020200D0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020206265725F656C';
wwv_flow_api.g_varchar2_table(25) := '656D20203D3E206C5F6265725F656C656D656E74293B200D0A0D0A202020202D2D2052656375706572616D6F7320746F646F73206C6F7320617472696275746F7320646520226D656D6265724F6622202020200D0A202020205748494C45206C5F617474';
wwv_flow_api.g_varchar2_table(26) := '725F6E616D65204953204E4F54204E554C4C204C4F4F50200D0A2020202020202020200D0A20202020202020202D2D2072656375706572616D6F732076616C6F7265730D0A20202020202020206C5F76616C73203A3D2044424D535F4C4441502E676574';
wwv_flow_api.g_varchar2_table(27) := '5F76616C756573286C6420202020202020203D3E206C5F73657373696F6E2C200D0A2020202020202020202020202020202020202020202020202020202020202020202020202020206C646170656E747279203D3E206C5F656E7472792C200D0A202020';
wwv_flow_api.g_varchar2_table(28) := '20202020202020202020202020202020202020202020202020202020202020202020202020617474722020202020203D3E206C5F617474725F6E616D65293B200D0A200D0A202020202020202064626D735F6F75747075742E7075745F6C696E65286C5F';
wwv_flow_api.g_varchar2_table(29) := '617474725F6E616D65293B200D0A0D0A2020202020202020617065785F64656275672E696E666F202827417472696275746F20313A202573272C206C5F617474725F6E616D65293B0D0A20200D0A200D0A202020202020202069662028206C5F61747472';
wwv_flow_api.g_varchar2_table(30) := '5F6E616D65203D2027646973706C61794E616D652729207468656E200D0A20202020202020202020202064626D735F6F75747075742E7075745F6C696E652827456E20646973706C61796E616D652720207C7C206C5F76616C73283029293B200D0A2020';
wwv_flow_api.g_varchar2_table(31) := '20202020202020202020617065785F7574696C2E7365745F73657373696F6E5F737461746528705F6E616D6520203D3E202753455353494F4E5F55534552444953504C41594E414D45272C200D0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(32) := '20202020202020202020705F76616C7565203D3E206C5F76616C73283029293B200D0A2020202020202020656C7365200D0A20202020202020202D2D20436865636B2074686520636F6E74656E7473206F66207468652076616C75652020202020202020';
wwv_flow_api.g_varchar2_table(33) := '200D0A202020202020202020202020464F52206920494E206C5F76616C732E4649525354202E2E206C5F76616C732E4C415354204C4F4F50200D0A20202020200D0A202020202020202020202020202020202D2D20436865636B20746865207573657220';
wwv_flow_api.g_varchar2_table(34) := '69732061206D656D626572206F66207468652072657175697265642067726F75702E200D0A2020202020200D0A202020202020202020202020202020206C5F6F6B203A3D2066616C73653B200D0A2020202020202020202020202020202064626D735F6F';
wwv_flow_api.g_varchar2_table(35) := '75747075742E7075745F6C696E65286C5F76616C73286929293B200D0A20202020202020202020202020202020617065785F64656275672E696E666F202827417472696275746F20323A202573272C206C5F76616C73286929293B0D0A0D0A2020202020';
wwv_flow_api.g_varchar2_table(36) := '20202020202020202020202D2D2053692070657274656E65636520616C20677275706F20535449432C2061636365736F2061204361726F6E74652E200D0A202020202020202020202020202020202D2D20726F6C203A3D205245504C41434520286C5F76';
wwv_flow_api.g_varchar2_table(37) := '616C732869292C2027414C34315F47535F272C20293B200D0A20202020202020202020202020202020200D0A200D0A202020202020202020202020202020204946202820494E53545228206C5F76616C73286929202C2027475234305F47535F5475726E';
wwv_flow_api.g_varchar2_table(38) := '6F5341535F4445525F41444D494E2729203E203029205448454E202020202020202020202020202020202020202020202020200D0A2020202020202020202020202020202020202020202020206C5F6F6B203A3D20747275653B200D0A20202020202020';
wwv_flow_api.g_varchar2_table(39) := '20202020202020202020202020202020206C5F636F6E5F7065726D69736F203A3D2074727565203B0D0A202020202020202020202020202020202020202020202020617065785F64656275672E696E666F202827454E545241212120454E545241212121';
wwv_flow_api.g_varchar2_table(40) := '3A202573272C206C5F76616C73286929293B20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(41) := '202020202020202020202020202020202020202020202020202020202020200D0A20202020202020202020202020202020454E442049463B200D0A200D0A0D0A200D0A202020202020202020202020454E44204C4F4F503B200D0A200D0A202020202020';
wwv_flow_api.g_varchar2_table(42) := '2020454E442049463B200D0A200D0A20202020202020206C5F617474725F6E616D65203A3D2044424D535F4C4441502E6E6578745F617474726962757465286C6420202020202020203D3E206C5F73657373696F6E2C200D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(43) := '202020202020202020202020202020202020202020202020202020202020202020202020206C646170656E747279203D3E206C5F656E7472792C20202020202020200D0A2020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(44) := '202020202020202020202020202020206265725F656C656D20203D3E206C5F6265725F656C656D656E7420293B200D0A200D0A20202020454E44204C4F4F503B200D0A20200D0A202020206C5F72657476616C203A3D2064626D735F6C6461702E756E62';
wwv_flow_api.g_varchar2_table(45) := '696E645F73286C64203D3E206C5F73657373696F6E293B200D0A20200D0A202020202D2D20496E646963616D6F7320617574656E7469666963616369C3B36E20636F7272656374612E200D0A20202020617065785F7574696C2E7365745F73657373696F';
wwv_flow_api.g_varchar2_table(46) := '6E5F737461746528705F6E616D6520203D3E202753455353494F4E5F555345524E414D45272C200D0A2020202020202020202020202020202020202020202020202020202020202020705F76616C7565203D3E20705F757365726E616D65293B200D0A0D';
wwv_flow_api.g_varchar2_table(47) := '0A20202020415045585F5554494C2E5345545F41555448454E5449434154494F4E5F524553554C542830293B200D0A0D0A0D0A20202020494620286C5F636F6E5F7065726D69736F203D2066616C736529205448454E0D0A202020202020202041504558';
wwv_flow_api.g_varchar2_table(48) := '5F5554494C2E7365745F637573746F6D5F617574685F7374617475732028705F737461747573203D3E202753752076616C69646163696F6E20636F6E74726120444D534153206861207369646F20636F727265637461207065726F206361726563652064';
wwv_flow_api.g_varchar2_table(49) := '65207065726D69736F732064652061636365736F27293B200D0A202020202020202072657475726E202066616C73653B200D0A20202020454E442049463B0D0A0D0A20202020494620286C5F636F6E5F7065726D69736F203D207472756529205448454E';
wwv_flow_api.g_varchar2_table(50) := '0D0A202020202020202072657475726E2020747275653B200D0A20202020454E442049463B0D0A0D0A202020202D2D2072657475726E20747275653B200D0A200D0A20202020455843455054494F4E200D0A20202020202020205748454E204F54484552';
wwv_flow_api.g_varchar2_table(51) := '53205448454E200D0A20202020200D0A20202020202020202D2D2045786365637063696F6E206572726F7220646520636F6E6578696F6E0D0A20202020202020206C5F72657476616C203A3D2044424D535F4C4441502E756E62696E645F73286C64203D';
wwv_flow_api.g_varchar2_table(52) := '3E206C5F73657373696F6E293B200D0A2020202020202020415045585F5554494C2E7365745F637573746F6D5F617574685F7374617475732028705F737461747573203D3E20275573756172696F6F6F6F6F20792F6F20636F6E7472617365C3B1612069';
wwv_flow_api.g_varchar2_table(53) := '6E636F7272656374612E27293B200D0A2020202020202020415045585F5554494C2E5345545F41555448454E5449434154494F4E5F524553554C54282D31293B200D0A202020202020202052455455524E2046414C53453B20202020200D0A200D0A656E';
wwv_flow_api.g_varchar2_table(54) := '643B0D0A2F';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 39129642487386557,
    p_flow_id => 4500,
    p_name => '39129642487386557/crea funcion ldap',
    p_pathid => null,
    p_filename => 'crea funcion ldap',
    p_title => 'crea funcion ldap',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'AGSN',
    p_created_on => to_date('202404240917','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39144027607386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 2
    ,p_src_line_number => 144
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39137122953386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 75
    ,p_offset => 2816
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        apex_debug.info (''Atributo 1: %s'', l_attr_name); '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39137268764386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 76
    ,p_offset => 2874
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39137325863386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 77
    ,p_offset => 2878
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39137453400386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 78
    ,p_offset => 2881
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        if ( l_attr_name = ''displayName'') then  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39137507284386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 79
    ,p_offset => 2930
    ,p_length => 67
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            dbms_output.put_line(''En displayname''  || l_vals(0));  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39137653645386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 80
    ,p_offset => 2998
    ,p_length => 79
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            apex_util.set_session_state(p_name  => ''SESSION_USERDISPLAYNAME'',  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39137769335386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 81
    ,p_offset => 3078
    ,p_length => 56
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                p_value => l_vals(0));  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39137811435386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 82
    ,p_offset => 3135
    ,p_length => 14
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        else  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39137914547386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 83
    ,p_offset => 3150
    ,p_length => 52
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- Check the contents of the value          '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39138052720386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 84
    ,p_offset => 3203
    ,p_length => 55
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            FOR i IN l_vals.FIRST .. l_vals.LAST LOOP  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39138129520386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 85
    ,p_offset => 3259
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39138293506386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 86
    ,p_offset => 3266
    ,p_length => 70
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                -- Check the user is a member of the required group.  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39138381241386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 87
    ,p_offset => 3337
    ,p_length => 7
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '       '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39138450197386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 88
    ,p_offset => 3345
    ,p_length => 32
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                l_ok := false;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39138559200386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 89
    ,p_offset => 3378
    ,p_length => 50
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                dbms_output.put_line(l_vals(i));  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39138668501386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 90
    ,p_offset => 3429
    ,p_length => 63
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                apex_debug.info (''Atributo 2: %s'', l_vals(i)); '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39138711764386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 91
    ,p_offset => 3493
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39138857363386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 92
    ,p_offset => 3495
    ,p_length => 66
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                -- Si pertenece al grupo STIC, acceso a Caronte.  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39138925000386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 93
    ,p_offset => 3562
    ,p_length => 62
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                -- rol := REPLACE (l_vals(i), ''AL41_GS_'', );  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39139067264386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 94
    ,p_offset => 3625
    ,p_length => 18
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39139154481386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 95
    ,p_offset => 3644
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39139203314386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 96
    ,p_offset => 3647
    ,p_length => 105
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                IF ( INSTR( l_vals(i) , ''GR40_GS_TurnoSAS_DER_ADMIN'') > 0) THEN                          '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39139328938386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 97
    ,p_offset => 3753
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                        l_ok := true;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39139436442386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 98
    ,p_offset => 3793
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                        l_con_permiso := true ; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39139504260386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 99
    ,p_offset => 3842
    ,p_length => 190
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                        apex_debug.info (''ENTRA!! ENTRA!!!: %s'', l_vals(i));                                                                                                                  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39139630698386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 100
    ,p_offset => 4033
    ,p_length => 25
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                END IF;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39139795478386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 101
    ,p_offset => 4059
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39143182338386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 135
    ,p_offset => 4981
    ,p_length => 26
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        WHEN OTHERS THEN  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39143256258386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 136
    ,p_offset => 5008
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39143399549386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 137
    ,p_offset => 5015
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- Excecpcion error de conexion '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39143495983386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 138
    ,p_offset => 5056
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        l_retval := DBMS_LDAP.unbind_s(ld => l_session);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39143588179386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 139
    ,p_offset => 5115
    ,p_length => 98
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        APEX_UTIL.set_custom_auth_status (p_status => ''Usuariooooo y/o contraseña incorrecta.'');  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39143654916386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 140
    ,p_offset => 5214
    ,p_length => 50
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        APEX_UTIL.SET_AUTHENTICATION_RESULT(-1);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39143793830386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 141
    ,p_offset => 5265
    ,p_length => 27
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        RETURN FALSE;      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39143861328386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 142
    ,p_offset => 5293
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39143985998386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 143
    ,p_offset => 5296
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39139881399386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 102
    ,p_offset => 4062
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39139987961386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 103
    ,p_offset => 4064
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39140012635386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 104
    ,p_offset => 4067
    ,p_length => 23
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            END LOOP;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39140155400386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 105
    ,p_offset => 4091
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39140280729386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 106
    ,p_offset => 4094
    ,p_length => 17
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        END IF;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39140319715386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 107
    ,p_offset => 4112
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39140479603386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 108
    ,p_offset => 4115
    ,p_length => 73
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        l_attr_name := DBMS_LDAP.next_attribute(ld        => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39140551513386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 109
    ,p_offset => 4189
    ,p_length => 78
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                                ldapentry => l_entry,         '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39140675943386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 110
    ,p_offset => 4268
    ,p_length => 79
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                                ber_elem  => l_ber_element );  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39140765558386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 111
    ,p_offset => 4348
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39140877220386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 112
    ,p_offset => 4351
    ,p_length => 15
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END LOOP;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39140926758386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 113
    ,p_offset => 4367
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39141072974386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 114
    ,p_offset => 4371
    ,p_length => 54
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval := dbms_ldap.unbind_s(ld => l_session);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39141140898386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 115
    ,p_offset => 4426
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39141202209386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 116
    ,p_offset => 4430
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Indicamos autentificación correcta.  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39141331686386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 117
    ,p_offset => 4475
    ,p_length => 64
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    apex_util.set_session_state(p_name  => ''SESSION_USERNAME'',  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39141435701386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 118
    ,p_offset => 4540
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                p_value => p_username);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39141561556386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 119
    ,p_offset => 4598
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39141687005386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 120
    ,p_offset => 4600
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    APEX_UTIL.SET_AUTHENTICATION_RESULT(0);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39141737794386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 121
    ,p_offset => 4646
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39141829820386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 122
    ,p_offset => 4648
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39141904416386542
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 123
    ,p_offset => 4650
    ,p_length => 36
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    IF (l_con_permiso = false) THEN '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39142052416386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 124
    ,p_offset => 4687
    ,p_length => 137
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        APEX_UTIL.set_custom_auth_status (p_status => ''Su validacion contra DMSAS ha sido correcta pero carece de permisos de acceso'');  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39142102584386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 125
    ,p_offset => 4825
    ,p_length => 24
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        return  false;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39142259550386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 126
    ,p_offset => 4850
    ,p_length => 12
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END IF; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39142309904386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 127
    ,p_offset => 4863
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39142439501386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 128
    ,p_offset => 4865
    ,p_length => 35
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    IF (l_con_permiso = true) THEN '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39142513622386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 129
    ,p_offset => 4901
    ,p_length => 23
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        return  true;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39142628639386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 130
    ,p_offset => 4925
    ,p_length => 12
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END IF; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39142730842386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 131
    ,p_offset => 4938
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39142889362386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 132
    ,p_offset => 4940
    ,p_length => 21
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- return true;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39142972543386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 133
    ,p_offset => 4962
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39143011560386541
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 134
    ,p_offset => 4965
    ,p_length => 15
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    EXCEPTION  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39136461215386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 68
    ,p_offset => 2537
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- recuperamos valores '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39136532251386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 69
    ,p_offset => 2569
    ,p_length => 64
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        l_vals := DBMS_LDAP.get_values(ld        => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39136627771386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 70
    ,p_offset => 2634
    ,p_length => 62
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                       ldapentry => l_entry,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39136725905386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 71
    ,p_offset => 2697
    ,p_length => 68
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                        attr      => l_attr_name);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39136893373386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 72
    ,p_offset => 2766
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39136967994386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 73
    ,p_offset => 2769
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        dbms_output.put_line(l_attr_name);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39137006629386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 74
    ,p_offset => 2814
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39129719766386545
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'create or replace function "ACCESO"  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39129818938386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 39
    ,p_length => 26
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(p_username in VARCHAR2,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39129903667386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 66
    ,p_length => 25
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'p_password in VARCHAR2)  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39130066714386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 92
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'return BOOLEAN  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39130139342386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 109
    ,p_length => 4
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'is  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39130295803386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 114
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Variables del Servidor de LDAP de DMSAS  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39130359386386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 163
    ,p_length => 83
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ldap_host     VARCHAR2(256) := ''scldapad.dmsas.sda.sas.junta-andalucia.es'';  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39130441737386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 247
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ldap_port     VARCHAR2(256) := ''389'';  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39130541580386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 293
    ,p_length => 34
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval        PLS_INTEGER;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39130685445386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 328
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_session       DBMS_LDAP.session;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39130706233386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 11
    ,p_offset => 369
    ,p_length => 50
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attrs         DBMS_LDAP.string_collection;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39130805920386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 12
    ,p_offset => 420
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_message       DBMS_LDAP.message;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39130972116386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 13
    ,p_offset => 461
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_entry         DBMS_LDAP.message;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39131055645386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 14
    ,p_offset => 502
    ,p_length => 36
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attr_name     VARCHAR2(256);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39131167725386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 15
    ,p_offset => 539
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ber_element   DBMS_LDAP.ber_element;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39131242979386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 16
    ,p_offset => 584
    ,p_length => 50
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_vals          DBMS_LDAP.string_collection;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39131397333386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 17
    ,p_offset => 635
    ,p_length => 30
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ok            BOOLEAN;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39131405090386544
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 18
    ,p_offset => 666
    ,p_length => 29
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_con_permiso   BOOLEAN; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39131542690386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 19
    ,p_offset => 696
    ,p_length => 61
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    rol             VARCHAR2(256);                           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39131639312386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 20
    ,p_offset => 758
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39131715940386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 21
    ,p_offset => 761
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39131887024386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 22
    ,p_offset => 764
    ,p_length => 7
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39131987539386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 23
    ,p_offset => 772
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '          '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39132092718386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 24
    ,p_offset => 783
    ,p_length => 29
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_con_permiso := false ; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39132132450386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 25
    ,p_offset => 813
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39132233858386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 26
    ,p_offset => 815
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    apex_debug.info (''Prueba: %s'', p_username); '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39132358181386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 27
    ,p_offset => 864
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39132491937386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 28
    ,p_offset => 870
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39132555303386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 29
    ,p_offset => 876
    ,p_length => 52
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    APEX_DEBUG.ENABLE(apex_debug.c_log_level_info); '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39132668325386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 30
    ,p_offset => 929
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39132743113386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 31
    ,p_offset => 931
    ,p_length => 30
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Utilizamos Excepciones '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39132819008386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 32
    ,p_offset => 962
    ,p_length => 38
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    DBMS_LDAP.use_exception := TRUE;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39132938690386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 33
    ,p_offset => 1001
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39133045988386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 34
    ,p_offset => 1005
    ,p_length => 35
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Conectamos al servidor LDAP '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39133115636386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 35
    ,p_offset => 1041
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_session := DBMS_LDAP.init(hostname => l_ldap_host,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39133249318386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 36
    ,p_offset => 1100
    ,p_length => 59
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                portnum  => l_ldap_port);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39133377590386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 37
    ,p_offset => 1160
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39133486050386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 38
    ,p_offset => 1164
    ,p_length => 62
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval := DBMS_LDAP.simple_bind_s(ld     => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39133515498386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 39
    ,p_offset => 1227
    ,p_length => 73
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                        dn     => p_username||''@dmsas'',  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39133680132386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 40
    ,p_offset => 1301
    ,p_length => 64
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                        passwd => p_password);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39133788635386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 41
    ,p_offset => 1366
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39133827865386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 42
    ,p_offset => 1410
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39133934556386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 43
    ,p_offset => 1413
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Recuperamos los atributos "memberOf" '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39134019011386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 44
    ,p_offset => 1458
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attrs(1) := ''memberOf'';  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39134185973386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 45
    ,p_offset => 1490
    ,p_length => 34
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attrs(2) := ''displayname'';  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39134286743386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 46
    ,p_offset => 1525
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39134322744386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 47
    ,p_offset => 1528
    ,p_length => 32
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Buscamos información     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39134479244386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 48
    ,p_offset => 1561
    ,p_length => 59
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval := DBMS_LDAP.search_s(ld       => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39134570631386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 49
    ,p_offset => 1621
    ,p_length => 99
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   base     => ''dc=dmsas,dc=sda,dc=sas,dc=junta-andalucia,dc=es'',  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39134662300386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 50
    ,p_offset => 1721
    ,p_length => 73
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   scope    => DBMS_LDAP.scope_subtree,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39134774435386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 51
    ,p_offset => 1795
    ,p_length => 106
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   filter   => ''(&(objectClass=*)(sAMAccountName='' || p_username ||''))'',  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39134879307386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 52
    ,p_offset => 1902
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   attrs    => l_attrs,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39134907049386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 53
    ,p_offset => 1960
    ,p_length => 51
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   attronly => 0,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39135077998386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 54
    ,p_offset => 2012
    ,p_length => 60
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   res      => l_message);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39135195385386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 55
    ,p_offset => 2073
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39135236269386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 56
    ,p_offset => 2076
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39135303629386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 57
    ,p_offset => 2082
    ,p_length => 56
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_entry := DBMS_LDAP.first_entry(ld  => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39135459378386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 58
    ,p_offset => 2139
    ,p_length => 56
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                    msg => l_message);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39135523179386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 59
    ,p_offset => 2196
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39135605090386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 60
    ,p_offset => 2200
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39135785290386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 61
    ,p_offset => 2206
    ,p_length => 70
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attr_name := DBMS_LDAP.first_attribute(ld        => l_session,  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39135877972386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 62
    ,p_offset => 2277
    ,p_length => 73
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                           ldapentry => l_entry,         '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39135903233386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 63
    ,p_offset => 2351
    ,p_length => 73
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                           ber_elem  => l_ber_element);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39136093759386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 64
    ,p_offset => 2425
    ,p_length => 1
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ' '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39136122441386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 65
    ,p_offset => 2427
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Recuperamos todos los atributos de "memberOf"     '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39136215451386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 66
    ,p_offset => 2485
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    WHILE l_attr_name IS NOT NULL LOOP  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39136393252386543
    ,p_file_id => 39129642487386557
    ,p_stmt_number => 1
    ,p_src_line_number => 67
    ,p_offset => 2526
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '          '
);
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 39144266751386111,
    p_file_id => 39129642487386557,
    p_job_id => null,
    p_run_by => 'AGSN',
    p_run_as => 'AGSN',
    p_started => to_date('202404240917','YYYYMMDDHH24MI'),
    p_start_time => -952386091,
    p_ended => to_date('202404240917','YYYYMMDDHH24MI'),
    p_end_time => -952385954,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 39144300857386088
    ,p_result_id => 39144266751386111
    ,p_file_id => 39129642487386557
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'create or replace function "ACCESO"  (p_username in VARCHAR2,  p_password in VARCHAR2)  return BOOLEAN  is      -- Variables del Servidor de LDAP de DMSAS      l_ldap_host     VARCHAR2(256) := ''scldapad.dmsas.sda.sas.junta-andalucia.es'';      l_ldap_port     VARCHAR2(256) := ''389'';      l_retval        PLS_INTEGER;      l_session       DBMS_LDAP.session;      l_attrs         DBMS_LDAP.string_colle'||
'ction;      l_message       DBMS_LDAP.message;      l_entry         DBMS_LDAP.message;      l_attr_name     VARCHAR2(256);      l_ber_element   DBMS_LDAP.ber_element;      l_vals          DBMS_LDAP.string_collection;      l_ok            BOOLEAN;      l_con_permiso   BOOLEAN;     rol             VARCHAR2(256);                               begin                l_con_permiso := false ;      apex_de'||
'bug.info (''Prueba: %s'', p_username);               APEX_DEBUG.ENABLE(apex_debug.c_log_level_info);      -- Utilizamos Excepciones     DBMS_LDAP.use_exception := TRUE;         -- Conectamos al servidor LDAP     l_session := DBMS_LDAP.init(hostname => l_ldap_host,                                  portnum  => l_ldap_port);         l_retval := DBMS_LDAP.simple_bind_s(ld     => l_session,              '||
'                            dn     => p_username||''@dmsas'',                                          passwd => p_password);                                                   -- Recuperamos los atributos "memberOf"     l_attrs(1) := ''memberOf'';      l_attrs(2) := ''displayname'';        -- Buscamos información         l_retval := DBMS_LDAP.search_s(ld       => l_session,                              '||
'       base     => ''dc=dmsas,dc=sda,dc=sas,dc=junta-andalucia,dc=es'',                                     scope    => DBMS_LDAP.scope_subtree,                                     filter   => ''(&(objectClass=*)(sAMAccountName='' || p_username ||''))'',                                     attrs    => l_attrs,                                     attronly => 0,                                     res    '||
'  => l_message);             l_entry := DBMS_LDAP.first_entry(ld  => l_session,                                      msg => l_message);              l_attr_name := DBMS_LDAP.first_attribute(ld        => l_session,                                             ldapentry => l_entry,                                                    ber_elem  => l_ber_element);       -- Recuperamos todos los atributos'||
' de "memberOf"         WHILE l_attr_name IS NOT NULL LOOP                    -- recuperamos valores         l_vals := DBMS_LDAP.get_values(ld        => l_session,                                         ldapentry => l_entry,                                          attr      => l_attr_name);            dbms_output.put_line(l_attr_name);           apex_debug.info (''Atributo 1: %s'', l_attr_name);   '||
'           if ( l_attr_name = ''displayName'') then              dbms_output.put_line(''En displayname''  || l_vals(0));              apex_util.set_session_state(p_name  => ''SESSION_USERDISPLAYNAME'',                                  p_value => l_vals(0));          else          -- Check the contents of the value                      FOR i IN l_vals.FIRST .. l_vals.LAST LOOP                        -- C'||
'heck the user is a member of the required group.                         l_ok := false;                  dbms_output.put_line(l_vals(i));                  apex_debug.info (''Atributo 2: %s'', l_vals(i));                  -- Si pertenece al grupo STIC, acceso a Caronte.                  -- rol := REPLACE (l_vals(i), ''AL41_GS_'', );                                      IF ( INSTR( l_vals(i) , ''GR40_GS_'||
'TurnoSAS_DER_ADMIN'') > 0) THEN                                                  l_ok := true;                          l_con_permiso := true ;                         apex_debug.info (''ENTRA!! ENTRA!!!: %s'', l_vals(i));                                                                                                                                  END IF;                   END LOOP;            END '||
'IF;            l_attr_name := DBMS_LDAP.next_attribute(ld        => l_session,                                                  ldapentry => l_entry,                                                         ber_elem  => l_ber_element );        END LOOP;         l_retval := dbms_ldap.unbind_s(ld => l_session);         -- Indicamos autentificación correcta.      apex_util.set_session_state(p_name  =>'||
' ''SESSION_USERNAME'',                                  p_value => p_username);       APEX_UTIL.SET_AUTHENTICATION_RESULT(0);        IF (l_con_permiso = false) THEN         APEX_UTIL.set_custom_auth_status (p_status => ''Su validacion contra DMSAS ha sido correcta pero carece de permisos de acceso'');          return  false;      END IF;      IF (l_con_permiso = true) THEN         return  true;      E'||
'ND IF;      -- return true;        EXCEPTION          WHEN OTHERS THEN                -- Excecpcion error de conexion         l_retval := DBMS_LDAP.unbind_s(ld => l_session);          APEX_UTIL.set_custom_auth_status (p_status => ''Usuariooooo y/o contraseña incorrecta.'');          APEX_UTIL.SET_AUTHENTICATION_RESULT(-1);          RETURN FALSE;        end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Function created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202404240917','YYYYMMDDHH24MI')
    ,p_start_time => -952386088
    ,p_ended => to_date('202404240917','YYYYMMDDHH24MI')
    ,p_end_time => -952385956
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202404240917','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '637265617465206F72207265706C6163652066756E6374696F6E2022465F56414C49444143494F4E5F4C4441502220200D0A28705F757365726E616D6520696E2056415243484152322C20200D0A705F70617373776F726420696E205641524348415232';
wwv_flow_api.g_varchar2_table(2) := '2920200D0A72657475726E20424F4F4C45414E20200D0A697320200D0A202020202D2D205661726961626C65732064656C205365727669646F72206465204C44415020646520444D53415320200D0A202020206C5F6C6461705F686F7374202020202056';
wwv_flow_api.g_varchar2_table(3) := '415243484152322832353629203A3D202773636C64617061642E646D7361732E7364612E7361732E6A756E74612D616E64616C756369612E6573273B20200D0A202020206C5F6C6461705F706F7274202020202056415243484152322832353629203A3D';
wwv_flow_api.g_varchar2_table(4) := '2027333839273B20200D0A202020206C5F72657476616C2020202020202020504C535F494E54454745523B20200D0A202020206C5F73657373696F6E2020202020202044424D535F4C4441502E73657373696F6E3B20200D0A202020206C5F6174747273';
wwv_flow_api.g_varchar2_table(5) := '20202020202020202044424D535F4C4441502E737472696E675F636F6C6C656374696F6E3B20200D0A202020206C5F6D6573736167652020202020202044424D535F4C4441502E6D6573736167653B20200D0A202020206C5F656E747279202020202020';
wwv_flow_api.g_varchar2_table(6) := '20202044424D535F4C4441502E6D6573736167653B20200D0A202020206C5F617474725F6E616D652020202020564152434841523228323536293B20200D0A202020206C5F6265725F656C656D656E7420202044424D535F4C4441502E6265725F656C65';
wwv_flow_api.g_varchar2_table(7) := '6D656E743B20200D0A202020206C5F76616C732020202020202020202044424D535F4C4441502E737472696E675F636F6C6C656374696F6E3B20200D0A202020206C5F6F6B202020202020202020202020424F4F4C45414E3B20200D0A202020206C5F63';
wwv_flow_api.g_varchar2_table(8) := '6F6E5F7065726D69736F202020424F4F4C45414E3B200D0A20202020726F6C20202020202020202020202020564152434841523228323536293B2020202020202020202020202020202020202020202020202020200D0A20200D0A20200D0A626567696E';
wwv_flow_api.g_varchar2_table(9) := '20200D0A202020202020202020200D0A202020206C5F636F6E5F7065726D69736F203A3D2066616C7365203B200D0A200D0A20202020617065785F64656275672E696E666F2028275072756562613A202573272C20705F757365726E616D65293B200D0A';
wwv_flow_api.g_varchar2_table(10) := '20202020200D0A20202020200D0A20202020415045585F44454255472E454E41424C4528617065785F64656275672E635F6C6F675F6C6576656C5F696E666F293B200D0A200D0A202020202D2D205574696C697A616D6F7320457863657063696F6E6573';
wwv_flow_api.g_varchar2_table(11) := '200D0A2020202044424D535F4C4441502E7573655F657863657074696F6E203A3D20545255453B20200D0A2020200D0A202020202D2D20436F6E656374616D6F7320616C207365727669646F72204C444150200D0A202020206C5F73657373696F6E203A';
wwv_flow_api.g_varchar2_table(12) := '3D2044424D535F4C4441502E696E697428686F73746E616D65203D3E206C5F6C6461705F686F73742C20200D0A2020202020202020202020202020202020202020202020202020202020202020706F72746E756D20203D3E206C5F6C6461705F706F7274';
wwv_flow_api.g_varchar2_table(13) := '293B20200D0A2020200D0A202020206C5F72657476616C203A3D2044424D535F4C4441502E73696D706C655F62696E645F73286C6420202020203D3E206C5F73657373696F6E2C20200D0A20202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(14) := '202020202020202020202020202020646E20202020203D3E20705F757365726E616D657C7C2740646D736173272C20200D0A20202020202020202020202020202020202020202020202020202020202020202020202020202020706173737764203D3E20';
wwv_flow_api.g_varchar2_table(15) := '705F70617373776F7264293B20200D0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020200D0A20200D0A202020202D2D2052656375706572616D6F73206C6F7320617472696275746F7320226D';
wwv_flow_api.g_varchar2_table(16) := '656D6265724F6622200D0A202020206C5F6174747273283129203A3D20276D656D6265724F66273B20200D0A202020206C5F6174747273283229203A3D2027646973706C61796E616D65273B20200D0A20200D0A202020202D2D2042757363616D6F7320';
wwv_flow_api.g_varchar2_table(17) := '696E666F726D616369C3B36E20202020200D0A202020206C5F72657476616C203A3D2044424D535F4C4441502E7365617263685F73286C64202020202020203D3E206C5F73657373696F6E2C20200D0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(18) := '2020202020202020202020202020206261736520202020203D3E202764633D646D7361732C64633D7364612C64633D7361732C64633D6A756E74612D616E64616C756369612C64633D6573272C20200D0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(19) := '2020202020202020202020202020202073636F7065202020203D3E2044424D535F4C4441502E73636F70655F737562747265652C20200D0A202020202020202020202020202020202020202020202020202020202020202020202066696C746572202020';
wwv_flow_api.g_varchar2_table(20) := '3D3E20272826286F626A656374436C6173733D2A292873414D4163636F756E744E616D653D27207C7C20705F757365726E616D65207C7C272929272C20200D0A202020202020202020202020202020202020202020202020202020202020202020202061';
wwv_flow_api.g_varchar2_table(21) := '74747273202020203D3E206C5F61747472732C20200D0A2020202020202020202020202020202020202020202020202020202020202020202020617474726F6E6C79203D3E20302C20200D0A202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(22) := '20202020202020202020207265732020202020203D3E206C5F6D657373616765293B20200D0A20200D0A20202020200D0A202020206C5F656E747279203A3D2044424D535F4C4441502E66697273745F656E747279286C6420203D3E206C5F7365737369';
wwv_flow_api.g_varchar2_table(23) := '6F6E2C20200D0A2020202020202020202020202020202020202020202020202020202020202020202020206D7367203D3E206C5F6D657373616765293B20200D0A2020200D0A20202020200D0A202020206C5F617474725F6E616D65203A3D2044424D53';
wwv_flow_api.g_varchar2_table(24) := '5F4C4441502E66697273745F617474726962757465286C6420202020202020203D3E206C5F73657373696F6E2C20200D0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020206C646170656E7472';
wwv_flow_api.g_varchar2_table(25) := '79203D3E206C5F656E7472792C2020202020202020200D0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020206265725F656C656D20203D3E206C5F6265725F656C656D656E74293B20200D0A20';
wwv_flow_api.g_varchar2_table(26) := '0D0A202020202D2D2052656375706572616D6F7320746F646F73206C6F7320617472696275746F7320646520226D656D6265724F662220202020200D0A202020205748494C45206C5F617474725F6E616D65204953204E4F54204E554C4C204C4F4F5020';
wwv_flow_api.g_varchar2_table(27) := '200D0A202020202020202020200D0A20202020202020202D2D2072656375706572616D6F732076616C6F726573200D0A20202020202020206C5F76616C73203A3D2044424D535F4C4441502E6765745F76616C756573286C6420202020202020203D3E20';
wwv_flow_api.g_varchar2_table(28) := '6C5F73657373696F6E2C20200D0A2020202020202020202020202020202020202020202020202020202020202020202020202020206C646170656E747279203D3E206C5F656E7472792C20200D0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(29) := '202020202020202020202020202020202020617474722020202020203D3E206C5F617474725F6E616D65293B20200D0A20200D0A202020202020202064626D735F6F75747075742E7075745F6C696E65286C5F617474725F6E616D65293B20200D0A200D';
wwv_flow_api.g_varchar2_table(30) := '0A2020202020202020617065785F64656275672E696E666F202827417472696275746F20313A202573272C206C5F617474725F6E616D65293B200D0A2020200D0A20200D0A202020202020202069662028206C5F617474725F6E616D65203D2027646973';
wwv_flow_api.g_varchar2_table(31) := '706C61794E616D652729207468656E20200D0A20202020202020202020202064626D735F6F75747075742E7075745F6C696E652827456E20646973706C61796E616D652720207C7C206C5F76616C73283029293B20200D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(32) := '617065785F7574696C2E7365745F73657373696F6E5F737461746528705F6E616D6520203D3E202753455353494F4E5F55534552444953504C41594E414D45272C20200D0A20202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(33) := '20705F76616C7565203D3E206C5F76616C73283029293B20200D0A2020202020202020656C736520200D0A20202020202020202D2D20436865636B2074686520636F6E74656E7473206F66207468652076616C7565202020202020202020200D0A202020';
wwv_flow_api.g_varchar2_table(34) := '202020202020202020464F52206920494E206C5F76616C732E4649525354202E2E206C5F76616C732E4C415354204C4F4F5020200D0A2020202020200D0A202020202020202020202020202020202D2D20436865636B2074686520757365722069732061';
wwv_flow_api.g_varchar2_table(35) := '206D656D626572206F66207468652072657175697265642067726F75702E20200D0A202020202020200D0A202020202020202020202020202020206C5F6F6B203A3D2066616C73653B20200D0A2020202020202020202020202020202064626D735F6F75';
wwv_flow_api.g_varchar2_table(36) := '747075742E7075745F6C696E65286C5F76616C73286929293B20200D0A20202020202020202020202020202020617065785F64656275672E696E666F202827417472696275746F20323A202573272C206C5F76616C73286929293B200D0A200D0A202020';
wwv_flow_api.g_varchar2_table(37) := '202020202020202020202020202D2D2053692070657274656E65636520616C20677275706F20535449432C2061636365736F2061204361726F6E74652E20200D0A202020202020202020202020202020202D2D20726F6C203A3D205245504C4143452028';
wwv_flow_api.g_varchar2_table(38) := '6C5F76616C732869292C2027414C34315F47535F272C20293B20200D0A2020202020202020202020202020202020200D0A20200D0A202020202020202020202020202020204946202820494E53545228206C5F76616C73286929202C2027475234305F47';
wwv_flow_api.g_varchar2_table(39) := '535F5475726E6F5341535F4445525F41444D494E2729203E203029205448454E20202020202020202020202020202020202020202020202020200D0A2020202020202020202020202020202020202020202020206C5F6F6B203A3D20747275653B20200D';
wwv_flow_api.g_varchar2_table(40) := '0A2020202020202020202020202020202020202020202020206C5F636F6E5F7065726D69736F203A3D2074727565203B200D0A202020202020202020202020202020202020202020202020617065785F64656275672E696E666F202827454E5452412121';
wwv_flow_api.g_varchar2_table(41) := '20454E5452412121213A202573272C206C5F76616C73286929293B20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(42) := '20202020202020202020202020202020202020202020202020202020202020202020202020202020200D0A20202020202020202020202020202020454E442049463B20200D0A20200D0A200D0A20200D0A202020202020202020202020454E44204C4F4F';
wwv_flow_api.g_varchar2_table(43) := '503B20200D0A20200D0A2020202020202020454E442049463B20200D0A20200D0A20202020202020206C5F617474725F6E616D65203A3D2044424D535F4C4441502E6E6578745F617474726962757465286C6420202020202020203D3E206C5F73657373';
wwv_flow_api.g_varchar2_table(44) := '696F6E2C20200D0A2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020206C646170656E747279203D3E206C5F656E7472792C2020202020202020200D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(45) := '2020202020202020202020202020202020202020202020202020202020202020202020206265725F656C656D20203D3E206C5F6265725F656C656D656E7420293B20200D0A20200D0A20202020454E44204C4F4F503B20200D0A2020200D0A202020206C';
wwv_flow_api.g_varchar2_table(46) := '5F72657476616C203A3D2064626D735F6C6461702E756E62696E645F73286C64203D3E206C5F73657373696F6E293B20200D0A2020200D0A202020202D2D20496E646963616D6F7320617574656E7469666963616369C3B36E20636F7272656374612E20';
wwv_flow_api.g_varchar2_table(47) := '200D0A20202020617065785F7574696C2E7365745F73657373696F6E5F737461746528705F6E616D6520203D3E202753455353494F4E5F555345524E414D45272C20200D0A20202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(48) := '20705F76616C7565203D3E20705F757365726E616D65293B20200D0A200D0A20202020415045585F5554494C2E5345545F41555448454E5449434154494F4E5F524553554C542830293B20200D0A200D0A200D0A20202020494620286C5F636F6E5F7065';
wwv_flow_api.g_varchar2_table(49) := '726D69736F203D2066616C736529205448454E200D0A2020202020202020415045585F5554494C2E7365745F637573746F6D5F617574685F7374617475732028705F737461747573203D3E202753752076616C69646163696F6E20636F6E74726120444D';
wwv_flow_api.g_varchar2_table(50) := '534153206861207369646F20636F727265637461207065726F20636172656365206465207065726D69736F732064652061636365736F27293B20200D0A202020202020202072657475726E202066616C73653B20200D0A20202020454E442049463B200D';
wwv_flow_api.g_varchar2_table(51) := '0A200D0A20202020494620286C5F636F6E5F7065726D69736F203D207472756529205448454E200D0A202020202020202072657475726E2020747275653B20200D0A20202020454E442049463B200D0A200D0A202020202D2D2072657475726E20747275';
wwv_flow_api.g_varchar2_table(52) := '653B20200D0A20200D0A20202020455843455054494F4E20200D0A20202020202020205748454E204F5448455253205448454E20200D0A2020202020200D0A20202020202020202D2D2045786365637063696F6E206572726F7220646520636F6E657869';
wwv_flow_api.g_varchar2_table(53) := '6F6E200D0A20202020202020206C5F72657476616C203A3D2044424D535F4C4441502E756E62696E645F73286C64203D3E206C5F73657373696F6E293B20200D0A2020202020202020415045585F5554494C2E7365745F637573746F6D5F617574685F73';
wwv_flow_api.g_varchar2_table(54) := '74617475732028705F737461747573203D3E20275573756172696F6F6F6F6F20792F6F20636F6E7472617365C3B16120696E636F7272656374612E27293B20200D0A2020202020202020415045585F5554494C2E5345545F41555448454E544943415449';
wwv_flow_api.g_varchar2_table(55) := '4F4E5F524553554C54282D31293B20200D0A202020202020202052455455524E2046414C53453B2020202020200D0A20200D0A656E643B200D0A';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 39804024242329688,
    p_flow_id => 4500,
    p_name => '39804024242329688/F_VALIDACION_LDAP_SCRIPT',
    p_pathid => null,
    p_filename => 'F_VALIDACION_LDAP_SCRIPT',
    p_title => 'F_VALIDACION_LDAP_SCRIPT',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'AGSN',
    p_created_on => to_date('202405111233','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39804192833329671
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 49
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'create or replace function "F_VALIDACION_LDAP"   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39804290564329670
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 51
    ,p_length => 27
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '(p_username in VARCHAR2,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39804306393329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 79
    ,p_length => 26
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'p_password in VARCHAR2)   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39804469826329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 106
    ,p_length => 17
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'return BOOLEAN   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39804525289329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 124
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'is   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39804692537329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 130
    ,p_length => 49
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Variables del Servidor de LDAP de DMSAS   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39804707052329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 180
    ,p_length => 84
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ldap_host     VARCHAR2(256) := ''scldapad.dmsas.sda.sas.junta-andalucia.es'';   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39804885149329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 265
    ,p_length => 46
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ldap_port     VARCHAR2(256) := ''389'';   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39804982367329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 312
    ,p_length => 35
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval        PLS_INTEGER;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39805016940329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 348
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_session       DBMS_LDAP.session;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39805112228329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 11
    ,p_offset => 390
    ,p_length => 51
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attrs         DBMS_LDAP.string_collection;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39805256145329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 12
    ,p_offset => 442
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_message       DBMS_LDAP.message;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39805314267329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 13
    ,p_offset => 484
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_entry         DBMS_LDAP.message;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39805401129329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 14
    ,p_offset => 526
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attr_name     VARCHAR2(256);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39805515643329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 15
    ,p_offset => 564
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ber_element   DBMS_LDAP.ber_element;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39805613365329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 16
    ,p_offset => 610
    ,p_length => 51
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_vals          DBMS_LDAP.string_collection;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39805703202329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 17
    ,p_offset => 662
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_ok            BOOLEAN;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39805877423329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 18
    ,p_offset => 694
    ,p_length => 30
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_con_permiso   BOOLEAN;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39805984920329669
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 19
    ,p_offset => 725
    ,p_length => 62
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    rol             VARCHAR2(256);                            '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39806069208329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 20
    ,p_offset => 788
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39806112423329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 21
    ,p_offset => 792
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39806259799329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 22
    ,p_offset => 796
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39806359366329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 23
    ,p_offset => 805
    ,p_length => 11
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39806405137329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 24
    ,p_offset => 817
    ,p_length => 30
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_con_permiso := false ;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39806523250329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 25
    ,p_offset => 848
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39806630724329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 26
    ,p_offset => 851
    ,p_length => 49
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    apex_debug.info (''Prueba: %s'', p_username);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39806797709329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 27
    ,p_offset => 901
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39806814219329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 28
    ,p_offset => 908
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39806991728329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 29
    ,p_offset => 915
    ,p_length => 53
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    APEX_DEBUG.ENABLE(apex_debug.c_log_level_info);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39807001620329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 30
    ,p_offset => 969
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39807113596329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 31
    ,p_offset => 972
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Utilizamos Excepciones  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39807286246329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 32
    ,p_offset => 1004
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    DBMS_LDAP.use_exception := TRUE;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39807396629329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 33
    ,p_offset => 1044
    ,p_length => 4
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39807477205329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 34
    ,p_offset => 1049
    ,p_length => 36
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Conectamos al servidor LDAP  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39807542636329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 35
    ,p_offset => 1086
    ,p_length => 59
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_session := DBMS_LDAP.init(hostname => l_ldap_host,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39807625944329668
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 36
    ,p_offset => 1146
    ,p_length => 60
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                portnum  => l_ldap_port);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39807739944329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 37
    ,p_offset => 1207
    ,p_length => 4
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39807891957329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 38
    ,p_offset => 1212
    ,p_length => 63
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval := DBMS_LDAP.simple_bind_s(ld     => l_session,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39807957323329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 39
    ,p_offset => 1276
    ,p_length => 74
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                        dn     => p_username||''@dmsas'',   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39808000672329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 40
    ,p_offset => 1351
    ,p_length => 65
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                        passwd => p_password);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39808117371329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 41
    ,p_offset => 1417
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                            '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39808244900329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 42
    ,p_offset => 1462
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39808311430329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 43
    ,p_offset => 1466
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Recuperamos los atributos "memberOf"  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39808415217329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 44
    ,p_offset => 1512
    ,p_length => 32
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attrs(1) := ''memberOf'';   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39808557369329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 45
    ,p_offset => 1545
    ,p_length => 35
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attrs(2) := ''displayname'';   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39808689145329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 46
    ,p_offset => 1581
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39808732385329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 47
    ,p_offset => 1585
    ,p_length => 33
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Buscamos información      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39808835576329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 48
    ,p_offset => 1619
    ,p_length => 60
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval := DBMS_LDAP.search_s(ld       => l_session,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39808918937329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 49
    ,p_offset => 1680
    ,p_length => 100
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   base     => ''dc=dmsas,dc=sda,dc=sas,dc=junta-andalucia,dc=es'',   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39809057985329667
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 50
    ,p_offset => 1781
    ,p_length => 74
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   scope    => DBMS_LDAP.scope_subtree,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39809197042329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 51
    ,p_offset => 1856
    ,p_length => 107
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   filter   => ''(&(objectClass=*)(sAMAccountName='' || p_username ||''))'',   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39809241096329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 52
    ,p_offset => 1964
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   attrs    => l_attrs,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39809383027329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 53
    ,p_offset => 2023
    ,p_length => 52
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   attronly => 0,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39809487430329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 54
    ,p_offset => 2076
    ,p_length => 61
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                   res      => l_message);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39809577777329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 55
    ,p_offset => 2138
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39809675043329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 56
    ,p_offset => 2142
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39809735290329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 57
    ,p_offset => 2149
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_entry := DBMS_LDAP.first_entry(ld  => l_session,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39809841540329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 58
    ,p_offset => 2207
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                    msg => l_message);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39809969780329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 59
    ,p_offset => 2265
    ,p_length => 4
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39810051538329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 60
    ,p_offset => 2270
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39810169044329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 61
    ,p_offset => 2277
    ,p_length => 71
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_attr_name := DBMS_LDAP.first_attribute(ld        => l_session,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39810222137329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 62
    ,p_offset => 2349
    ,p_length => 74
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                           ldapentry => l_entry,          '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39810334324329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 63
    ,p_offset => 2424
    ,p_length => 74
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                           ber_elem  => l_ber_element);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39810472418329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 64
    ,p_offset => 2499
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39810582247329666
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 65
    ,p_offset => 2502
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Recuperamos todos los atributos de "memberOf"      '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39810639416329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 66
    ,p_offset => 2561
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    WHILE l_attr_name IS NOT NULL LOOP   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39810716804329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 67
    ,p_offset => 2603
    ,p_length => 11
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39810850228329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 68
    ,p_offset => 2615
    ,p_length => 32
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- recuperamos valores  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39810938707329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 69
    ,p_offset => 2648
    ,p_length => 65
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        l_vals := DBMS_LDAP.get_values(ld        => l_session,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39811090511329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 70
    ,p_offset => 2714
    ,p_length => 63
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                       ldapentry => l_entry,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39811100933329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 71
    ,p_offset => 2778
    ,p_length => 69
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                        attr      => l_attr_name);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39811206905329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 72
    ,p_offset => 2848
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39811362209329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 73
    ,p_offset => 2852
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        dbms_output.put_line(l_attr_name);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39811458974329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 74
    ,p_offset => 2898
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39811508189329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 75
    ,p_offset => 2901
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        apex_debug.info (''Atributo 1: %s'', l_attr_name);  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39811609147329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 76
    ,p_offset => 2960
    ,p_length => 4
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39811705846329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 77
    ,p_offset => 2965
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39812167436329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 81
    ,p_offset => 3169
    ,p_length => 57
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                p_value => l_vals(0));   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39811851170329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 78
    ,p_offset => 2969
    ,p_length => 49
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        if ( l_attr_name = ''displayName'') then   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39811976599329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 79
    ,p_offset => 3019
    ,p_length => 68
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            dbms_output.put_line(''En displayname''  || l_vals(0));   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39812087013329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 80
    ,p_offset => 3088
    ,p_length => 80
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            apex_util.set_session_state(p_name  => ''SESSION_USERDISPLAYNAME'',   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39812256312329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 82
    ,p_offset => 3227
    ,p_length => 15
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        else   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39812398633329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 83
    ,p_offset => 3243
    ,p_length => 53
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- Check the contents of the value           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39812418523329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 84
    ,p_offset => 3297
    ,p_length => 56
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            FOR i IN l_vals.FIRST .. l_vals.LAST LOOP   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39812517494329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 85
    ,p_offset => 3354
    ,p_length => 7
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '       '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39812689637329665
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 86
    ,p_offset => 3362
    ,p_length => 71
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                -- Check the user is a member of the required group.   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39812781017329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 87
    ,p_offset => 3434
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39812874049329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 88
    ,p_offset => 3443
    ,p_length => 33
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                l_ok := false;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39812920388329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 89
    ,p_offset => 3477
    ,p_length => 51
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                dbms_output.put_line(l_vals(i));   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39813093214329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 90
    ,p_offset => 3529
    ,p_length => 64
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                apex_debug.info (''Atributo 2: %s'', l_vals(i));  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39813114916329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 91
    ,p_offset => 3594
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39813248029329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 92
    ,p_offset => 3597
    ,p_length => 67
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                -- Si pertenece al grupo STIC, acceso a Caronte.   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39813321577329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 93
    ,p_offset => 3665
    ,p_length => 63
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                -- rol := REPLACE (l_vals(i), ''AL41_GS_'', );   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39813478341329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 94
    ,p_offset => 3729
    ,p_length => 19
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39813576027329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 95
    ,p_offset => 3749
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39813628060329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 96
    ,p_offset => 3753
    ,p_length => 106
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                IF ( INSTR( l_vals(i) , ''GR40_GS_TurnoSAS_DER_ADMIN'') > 0) THEN                           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39813771619329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 97
    ,p_offset => 3860
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                        l_ok := true;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39813823159329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 98
    ,p_offset => 3901
    ,p_length => 49
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                        l_con_permiso := true ;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39813993946329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 99
    ,p_offset => 3951
    ,p_length => 191
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                        apex_debug.info (''ENTRA!! ENTRA!!!: %s'', l_vals(i));                                                                                                                   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39814023150329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 100
    ,p_offset => 4143
    ,p_length => 26
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                END IF;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39814103703329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 101
    ,p_offset => 4170
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39814221198329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 102
    ,p_offset => 4174
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39814350223329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 103
    ,p_offset => 4177
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39814478542329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 104
    ,p_offset => 4181
    ,p_length => 24
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            END LOOP;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39814564460329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 105
    ,p_offset => 4206
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39814692745329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 106
    ,p_offset => 4210
    ,p_length => 18
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        END IF;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39814765893329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 107
    ,p_offset => 4229
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39814831736329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 108
    ,p_offset => 4233
    ,p_length => 74
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        l_attr_name := DBMS_LDAP.next_attribute(ld        => l_session,   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39814941796329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 109
    ,p_offset => 4308
    ,p_length => 79
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                                ldapentry => l_entry,          '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39815045775329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 110
    ,p_offset => 4388
    ,p_length => 80
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                                ber_elem  => l_ber_element );   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39815142138329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 111
    ,p_offset => 4469
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39815281931329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 112
    ,p_offset => 4473
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END LOOP;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39815319760329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 113
    ,p_offset => 4490
    ,p_length => 4
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39815467905329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 114
    ,p_offset => 4495
    ,p_length => 55
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_retval := dbms_ldap.unbind_s(ld => l_session);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39815556358329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 115
    ,p_offset => 4551
    ,p_length => 4
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39815684037329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 116
    ,p_offset => 4556
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Indicamos autentificación correcta.   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39815742640329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 117
    ,p_offset => 4602
    ,p_length => 65
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    apex_util.set_session_state(p_name  => ''SESSION_USERNAME'',   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39815887896329664
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 118
    ,p_offset => 4668
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '                                p_value => p_username);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39815955324329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 119
    ,p_offset => 4727
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39816087961329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 120
    ,p_offset => 4730
    ,p_length => 46
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    APEX_UTIL.SET_AUTHENTICATION_RESULT(0);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39816178091329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 121
    ,p_offset => 4777
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39816225355329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 122
    ,p_offset => 4780
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39816392391329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 123
    ,p_offset => 4783
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    IF (l_con_permiso = false) THEN  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39816490724329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 124
    ,p_offset => 4821
    ,p_length => 138
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        APEX_UTIL.set_custom_auth_status (p_status => ''Su validacion contra DMSAS ha sido correcta pero carece de permisos de acceso'');   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39816536793329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 125
    ,p_offset => 4960
    ,p_length => 25
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        return  false;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39816644978329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 126
    ,p_offset => 4986
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END IF;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39816758775329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 127
    ,p_offset => 5000
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39816834632329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 128
    ,p_offset => 5003
    ,p_length => 36
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    IF (l_con_permiso = true) THEN  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39816922115329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 129
    ,p_offset => 5040
    ,p_length => 24
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        return  true;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39817013402329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 130
    ,p_offset => 5065
    ,p_length => 13
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END IF;  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39817145503329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 131
    ,p_offset => 5079
    ,p_length => 2
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39817295951329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 132
    ,p_offset => 5082
    ,p_length => 22
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- return true;   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39817321936329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 133
    ,p_offset => 5105
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39817458747329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 134
    ,p_offset => 5109
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    EXCEPTION   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39817532434329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 135
    ,p_offset => 5126
    ,p_length => 27
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        WHEN OTHERS THEN   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39817677373329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 136
    ,p_offset => 5154
    ,p_length => 7
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '       '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39817706973329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 137
    ,p_offset => 5162
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        -- Excecpcion error de conexion  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39817842759329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 138
    ,p_offset => 5204
    ,p_length => 59
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        l_retval := DBMS_LDAP.unbind_s(ld => l_session);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39817990977329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 139
    ,p_offset => 5264
    ,p_length => 99
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        APEX_UTIL.set_custom_auth_status (p_status => ''Usuariooooo y/o contraseña incorrecta.'');   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39818089241329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 140
    ,p_offset => 5364
    ,p_length => 51
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        APEX_UTIL.SET_AUTHENTICATION_RESULT(-1);   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39818191226329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 141
    ,p_offset => 5416
    ,p_length => 28
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        RETURN FALSE;       '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39818232561329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 142
    ,p_offset => 5445
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 39818380938329663
    ,p_file_id => 39804024242329688
    ,p_stmt_number => 1
    ,p_src_line_number => 143
    ,p_offset => 5449
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end;  '
);
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 39818405467329003,
    p_file_id => 39804024242329688,
    p_job_id => null,
    p_run_by => 'AGSN',
    p_run_as => 'AGSN',
    p_started => to_date('202405111233','YYYYMMDDHH24MI'),
    p_start_time => -804328988,
    p_ended => to_date('202405111233','YYYYMMDDHH24MI'),
    p_end_time => -804328905,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 39818587710328985
    ,p_result_id => 39818405467329003
    ,p_file_id => 39804024242329688
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'create or replace function "F_VALIDACION_LDAP"   (p_username in VARCHAR2,   p_password in VARCHAR2)   return BOOLEAN   is       -- Variables del Servidor de LDAP de DMSAS       l_ldap_host     VARCHAR2(256) := ''scldapad.dmsas.sda.sas.junta-andalucia.es'';       l_ldap_port     VARCHAR2(256) := ''389'';       l_retval        PLS_INTEGER;       l_session       DBMS_LDAP.session;       l_attrs         D'||
'BMS_LDAP.string_collection;       l_message       DBMS_LDAP.message;       l_entry         DBMS_LDAP.message;       l_attr_name     VARCHAR2(256);       l_ber_element   DBMS_LDAP.ber_element;       l_vals          DBMS_LDAP.string_collection;       l_ok            BOOLEAN;       l_con_permiso   BOOLEAN;      rol             VARCHAR2(256);                                  begin                  l_c'||
'on_permiso := false ;        apex_debug.info (''Prueba: %s'', p_username);                  APEX_DEBUG.ENABLE(apex_debug.c_log_level_info);        -- Utilizamos Excepciones      DBMS_LDAP.use_exception := TRUE;           -- Conectamos al servidor LDAP      l_session := DBMS_LDAP.init(hostname => l_ldap_host,                                   portnum  => l_ldap_port);           l_retval := DBMS_LDAP.'||
'simple_bind_s(ld     => l_session,                                           dn     => p_username||''@dmsas'',                                           passwd => p_password);                                                      -- Recuperamos los atributos "memberOf"      l_attrs(1) := ''memberOf'';       l_attrs(2) := ''displayname'';          -- Buscamos información          l_retval := DBMS_LDAP.sea'||
'rch_s(ld       => l_session,                                      base     => ''dc=dmsas,dc=sda,dc=sas,dc=junta-andalucia,dc=es'',                                      scope    => DBMS_LDAP.scope_subtree,                                      filter   => ''(&(objectClass=*)(sAMAccountName='' || p_username ||''))'',                                      attrs    => l_attrs,                                 '||
'     attronly => 0,                                      res      => l_message);                l_entry := DBMS_LDAP.first_entry(ld  => l_session,                                       msg => l_message);                 l_attr_name := DBMS_LDAP.first_attribute(ld        => l_session,                                              ldapentry => l_entry,                                                 '||
'    ber_elem  => l_ber_element);         -- Recuperamos todos los atributos de "memberOf"          WHILE l_attr_name IS NOT NULL LOOP                      -- recuperamos valores          l_vals := DBMS_LDAP.get_values(ld        => l_session,                                          ldapentry => l_entry,                                           attr      => l_attr_name);              dbms_output.p'||
'ut_line(l_attr_name);             apex_debug.info (''Atributo 1: %s'', l_attr_name);                 if ( l_attr_name = ''displayName'') then               dbms_output.put_line(''En displayname''  || l_vals(0));               apex_util.set_session_state(p_name  => ''SESSION_USERDISPLAYNAME'',                                   p_value => l_vals(0));           else           -- Check the contents of the val'||
'ue                       FOR i IN l_vals.FIRST .. l_vals.LAST LOOP                          -- Check the user is a member of the required group.                           l_ok := false;                   dbms_output.put_line(l_vals(i));                   apex_debug.info (''Atributo 2: %s'', l_vals(i));                    -- Si pertenece al grupo STIC, acceso a Caronte.                   -- rol := RE'||
'PLACE (l_vals(i), ''AL41_GS_'', );                                         IF ( INSTR( l_vals(i) , ''GR40_GS_TurnoSAS_DER_ADMIN'') > 0) THEN                                                   l_ok := true;                           l_con_permiso := true ;                          apex_debug.info (''ENTRA!! ENTRA!!!: %s'', l_vals(i));                                                                        '||
'                                                           END IF;                       END LOOP;              END IF;              l_attr_name := DBMS_LDAP.next_attribute(ld        => l_session,                                                   ldapentry => l_entry,                                                          ber_elem  => l_ber_element );          END LOOP;           l_retval := dbm'||
's_ldap.unbind_s(ld => l_session);           -- Indicamos autentificación correcta.       apex_util.set_session_state(p_name  => ''SESSION_USERNAME'',                                   p_value => p_username);         APEX_UTIL.SET_AUTHENTICATION_RESULT(0);           IF (l_con_permiso = false) THEN          APEX_UTIL.set_custom_auth_status (p_status => ''Su validacion contra DMSAS ha sido correcta pero'||
' carece de permisos de acceso'');           return  false;       END IF;        IF (l_con_permiso = true) THEN          return  true;       END IF;        -- return true;          EXCEPTION           WHEN OTHERS THEN                  -- Excecpcion error de conexion          l_retval := DBMS_LDAP.unbind_s(ld => l_session);           APEX_UTIL.set_custom_auth_status (p_status => ''Usuariooooo y/o cont'||
'raseña incorrecta.'');           APEX_UTIL.SET_AUTHENTICATION_RESULT(-1);           RETURN FALSE;          end;  '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Function created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202405111233','YYYYMMDDHH24MI')
    ,p_start_time => -804328985
    ,p_ended => to_date('202405111233','YYYYMMDDHH24MI')
    ,p_end_time => -804328906
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202405111233','YYYYMMDDHH24MI'));
end;
/
----------------
--sql commands
--
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 34181972567632518
 ,p_command => 
'drop FUNCTION "PRUEBA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'ADM_MARTINEZNOELIA'
    ,p_created_on => to_date('202312121227','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 34181592473699252
 ,p_command => 
'SELECT * FROM dba_network_acl_privileges;'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT HOST'||wwv_flow.LF||
'      ,lower_port'||wwv_flow.LF||
'      ,upper_port'||wwv_flow.LF||
'      ,acl'||wwv_flow.LF||
'  FROM dba_network_acls;'
    ,p_created_by => 'ADM_MARTINEZNOELIA'
    ,p_created_on => to_date('202312121216','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 34181755680698423
 ,p_command => 
'SELECT * FROM dba_network_acl_privileges;'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'ADM_MARTINEZNOELIA'
    ,p_created_on => to_date('202312121216','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 34181830382697558
 ,p_command => 
''||wwv_flow.LF||
'SELECT HOST'||wwv_flow.LF||
'      ,lower_port'||wwv_flow.LF||
'      ,upper_port'||wwv_flow.LF||
'      ,acl'||wwv_flow.LF||
'  FROM dba_network_acls;'||wwv_flow.LF||
''
    ,p_created_by => 'ADM_MARTINEZNOELIA'
    ,p_created_on => to_date('202312121217','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39689327384918032
 ,p_command => 
'alter table "REA_DESPERTAR" add constraint'||wwv_flow.LF||
'"REA_DESPERTAR_CPERSONAL" foreign key ("CPERSONAL") references "600_PROF_GR" ("CPERSONAL")'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071802','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39740369812722469
 ,p_command => 
'create  materialized view "BDU"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'SELECT * FROM BDU.BDU@DBLINK_DPETL_LEC_STIC_PGUTIERREZ'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071834','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39740456494709865
 ,p_command => 
'create  materialized view "BDU"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'SELECT * FROM BDU.BDU@DBLINK_DPETL_LEC_STIC_PGUTIERREZ'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071836','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39741046555656561
 ,p_command => 
'create  materialized view "BDU"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'SELECT NOMBRE, APELLIDO1, APELLIDO2, NUSS_PROVISIONAL FROM BDU.BDU@DBLINK_DPETL_LEC_STIC_PGUTIERREZ'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071845','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40260663290100209
 ,p_command => 
'select * from sm_bdu'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405120838','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40360668658094894
 ,p_command => 
'CREATE OR REPLACE TRIGGER REA_LREA_INSERT'||wwv_flow.LF||
'AFTER INSERT ON REA_LREA'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        FECHA_CREACION,'||wwv_flow.LF||
'        FECHA_MODIFICACION,'||wwv_flow.LF||
'        QUIEN_CREO,'||wwv_flow.LF||
'        QUIEN_MODIFICO,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL, '||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'        U'||
'SER, -- El usuario que realizó la inserción'||wwv_flow.LF||
'        USER, -- El usuario que realizó la inserción'||wwv_flow.LF||
'        :NEW.LREA_PK, -- El ID de la fila insertada en REA_LREA'||wwv_flow.LF||
'        ''REA_LREA'' -- El nombre de la tabla insertada'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121659','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40361286243993397
 ,p_command => 
'alter table "REA_LREA" add'||wwv_flow.LF||
'("H_ENTRADA" TIMESTAMP)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40361379580989467
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("H_ENTRADA" TIMESTAMP)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40361865396980005
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("COD_INTERVENCION" VARCHAR2(10))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121718','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40362033250975063
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("COD_TINTERVENCION" VARCHAR2(32))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121719','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40362120217972695
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("COD_UF" VARCHAR2(6))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121719','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40362435167928479
 ,p_command => 
'alter table "REA_LOG" modify'||wwv_flow.LF||
'("F_ENTRADA" DATE)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121727','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40362569312926767
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("F_SALIDA" DATE)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121727','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40362718035890132
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LREA_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LREA'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ENTRADA,'||wwv_flow.LF||
'        H_ENTRADA,'||wwv_flow.LF||
'        F_SALIDA,'||wwv_flow.LF||
'        H_SALIDA,'||wwv_flow.LF||
'        NUHSA,'||wwv_flow.LF||
'        COD_INTERVENCION,'||wwv_flow.LF||
'        COD_CAMA,'||wwv_flow.LF||
'        COD_TINTERVENCION,'||wwv_flow.LF||
'        COD_UF,'||wwv_flow.LF||
'        CPERSONAL,'||wwv_flow.LF||
'        COD_TANESTESIA'||wwv_flow.LF||
'    ) VALUE'||
'S ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.LREA_PK,'||wwv_flow.LF||
'        ''REA_LREA'','||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.NUHSA,'||wwv_flow.LF||
'        :NEW.COD_INTERVENCION,'||wwv_flow.LF||
'        :NEW.COD_CAMA,'||wwv_flow.LF||
'        :NEW.COD_TINTERVENCION,'||wwv_flow.LF||
'        :NEW.COD_UF,'||wwv_flow.LF||
'        :NEW.CPERSONAL,'||wwv_flow.LF||
'        :NEW.COD_TANESTESIA'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'/'||wwv_flow.LF||
'ALTER TRIGGER  "REA_LREA_INSERT" ENAB'||
'LE'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121733','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39740638743698248
 ,p_command => 
'create  materialized view "BDU"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'SELECT * FROM BDU.BDU@DBLINK_DPETL_LEC_STIC_PGUTIERREZ'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071838','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40356356587456597
 ,p_command => 
'alter table "REA_LDESPERTAR" rename column'||wwv_flow.LF||
'"COID_TANESTESIA" to "COD_TANESTESIA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121312','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40356467481426145
 ,p_command => 
'alter table "REA_LADMTRATAMIENTO" add'||wwv_flow.LF||
'("OBSERVACIONES" VARCHAR2(4000))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121317','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40358898928209215
 ,p_command => 
'create or replace trigger "REA_LREA_T1"'||wwv_flow.LF||
'BEFORE'||wwv_flow.LF||
'update or delete on "REA_LOG"'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'insert into rea_log '||wwv_flow.LF||
'(ID,'||wwv_flow.LF||
'FECHA_CREACION,'||wwv_flow.LF||
'FECHA_MODIFICACION,'||wwv_flow.LF||
'QUIEN_CREO,'||wwv_flow.LF||
'QUIEN_MODIFICO,'||wwv_flow.LF||
'ID_REA,'||wwv_flow.LF||
'TABLA)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'('||wwv_flow.LF||
':OLD.ID,'||wwv_flow.LF||
':OLD.FECHA_CREACION,'||wwv_flow.LF||
':OLD.FECHA_MODIFICACION,'||wwv_flow.LF||
':OLD.QUIEN_CREO,'||wwv_flow.LF||
':OLD.QUIEN_MODIFICO,'||wwv_flow.LF||
':OLD.ID_REA,'||wwv_flow.LF||
':OLD.TABLA) ;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121640','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40359679129162227
 ,p_command => 
'create or replace trigger "REA_LREA_T1"'||wwv_flow.LF||
'BEFORE'||wwv_flow.LF||
'update or delete on "REA_LREA"'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'insert into rea_log '||wwv_flow.LF||
'(ID,'||wwv_flow.LF||
'FECHA_CREACION,'||wwv_flow.LF||
'FECHA_MODIFICACION,'||wwv_flow.LF||
'QUIEN_CREO,'||wwv_flow.LF||
'QUIEN_MODIFICO,'||wwv_flow.LF||
'ID_REA,'||wwv_flow.LF||
'TABLA)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'('||wwv_flow.LF||
':OLD.ID,'||wwv_flow.LF||
':OLD.FECHA_CREACION,'||wwv_flow.LF||
':OLD.FECHA_MODIFICACION,'||wwv_flow.LF||
':OLD.QUIEN_CREO,'||wwv_flow.LF||
':OLD.QUIEN_MODIFICO,'||wwv_flow.LF||
':OLD.ID_REA,'||wwv_flow.LF||
':OLD.TABLA) ;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
''||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121648','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40359949698152593
 ,p_command => 
'drop TRIGGER "REA_LREA_DELETE_UPDATE"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121649','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40360397449117056
 ,p_command => 
'CREATE OR REPLACE TRIGGER REA_LOG_INSERT_LREA'||wwv_flow.LF||
'AFTER INSERT ON REA_LREA'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        FECHA_CREACION,'||wwv_flow.LF||
'        FECHA_MODIFICACION,'||wwv_flow.LF||
'        QUIEN_CREO,'||wwv_flow.LF||
'        QUIEN_MODIFICO,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL, '||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'     '||
'   USER, -- El usuario que realizó la inserción'||wwv_flow.LF||
'        USER, -- El usuario que realizó la inserción'||wwv_flow.LF||
'        :NEW.LREA_PK, -- El ID de la fila insertada en REA_LREA'||wwv_flow.LF||
'        ''REA_LREA'' -- El nombre de la tabla insertada'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121655','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40360749527093363
 ,p_command => 
'drop TRIGGER "REA_LOG_INSERT_LREA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121659','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39741296249300225
 ,p_command => 
'create  materialized view "UNIDAD_FUNCIONAL"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'SELECT  UF_CODIGO, UF_UF_CODIGO, UF_es_codigo, UF_NOMBRE '||wwv_flow.LF||
'FROM REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'WHERE UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_E'||
'ST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'''||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071945','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40360975438029774
 ,p_command => 
'create or replace TRIGGER REA_LREA_INSERT'||wwv_flow.LF||
'AFTER INSERT ON REA_LREA'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        FECHA_CREACION,'||wwv_flow.LF||
'        FECHA_MODIFICACION,'||wwv_flow.LF||
'        QUIEN_CREO,'||wwv_flow.LF||
'        QUIEN_MODIFICO,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        NUHSA,'||wwv_flow.LF||
'        F_ENTRADA,'||wwv_flow.LF||
'        H_ENTRADA,'||wwv_flow.LF||
'        F_SALIDA,'||wwv_flow.LF||
'        H_SALIDA,'||wwv_flow.LF||
'        COD_INTERVENCION,'||wwv_flow.LF||
'        COD_CAMA,'||wwv_flow.LF||
'        COD_TINT'||
'ERVENCION,'||wwv_flow.LF||
'        COD_UF,'||wwv_flow.LF||
'        CPERSONAL,'||wwv_flow.LF||
'        COD_TANESTESIA'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL, '||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'        nvl(v(''APP_USER''),user), -- El usuario que realizó la inserción'||wwv_flow.LF||
'        nvl(v(''APP_USER''),user), -- El usuario que realizó la inserción'||wwv_flow.LF||
'        :NEW.LREA_PK, -- El ID de la fila inse'||
'rtada en REA_LREA'||wwv_flow.LF||
'        ''REA_LREA'', -- El nombre de la tabla insertada'||wwv_flow.LF||
'        :NEW.NUHSA,'||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.COD_INTERVENCION,'||wwv_flow.LF||
'        :NEW.COD_CAMA,'||wwv_flow.LF||
'        :NEW.COD_TINTERVENCION,'||wwv_flow.LF||
'        :NEW.COD_UF,'||wwv_flow.LF||
'        :NEW.CPERSONAL,'||wwv_flow.LF||
'        :NEW.COD_TANESTESIA'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121710','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40361031122023004
 ,p_command => 
'create or replace TRIGGER REA_LREA_INSERT'||wwv_flow.LF||
'AFTER INSERT ON REA_LREA'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        FECHA_CREACION,'||wwv_flow.LF||
'        FECHA_MODIFICACION,'||wwv_flow.LF||
'        QUIEN_CREO,'||wwv_flow.LF||
'        QUIEN_MODIFICO,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        NUHSA,'||wwv_flow.LF||
'        F_ENTRADA,'||wwv_flow.LF||
'        H_ENTRADA,'||wwv_flow.LF||
'        F_SALIDA,'||wwv_flow.LF||
'        H_SALIDA'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL, '||wwv_flow.LF||
'        SYSTIMES'||
'TAMP, -- La fecha y hora actual'||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'        nvl(v(''APP_USER''),user), -- El usuario que realizó la inserción'||wwv_flow.LF||
'        nvl(v(''APP_USER''),user), -- El usuario que realizó la inserción'||wwv_flow.LF||
'        :NEW.LREA_PK, -- El ID de la fila insertada en REA_LREA'||wwv_flow.LF||
'        ''REA_LREA'', -- El nombre de la tabla insertada'||wwv_flow.LF||
'        :NEW.NUHSA,'||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.'||
'H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121711','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40361156558996185
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("F_ENTRADA" TIMESTAMP)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40361424534986207
 ,p_command => 
'alter table "REA_LREA" add'||wwv_flow.LF||
'("NUHSA" VARCHAR2(12))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121717','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40361586578984995
 ,p_command => 
'alter table "REA_LREA" add'||wwv_flow.LF||
'("NUHSA" VARCHAR2(12))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121717','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40361666408982516
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("NUHSA" VARCHAR2(15))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121718','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40361951795977515
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("COD_CAMA	" VARCHAR2(10))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121718','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40362289340970310
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("CPERSONAL" NUMBER(38,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121720','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40362395412967714
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("COD_TANESTESIA" VARCHAR2(32))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121720','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40362695848925373
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("H_SALIDA" TIMESTAMP)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121727','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39740559086704171
 ,p_command => 
'create  materialized view "BDU"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'SELECT * FROM BDU.BDU@DBLINK_DPETL_LEC_STIC_PGUTIERREZ'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071837','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39741365238292324
 ,p_command => 
'alter table "REA_DESPERTAR" add'||wwv_flow.LF||
'("UF" VARCHAR2(10))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071946','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39741495822286623
 ,p_command => 
'alter table "REA_DESPERTAR" add constraint'||wwv_flow.LF||
'"REA_DESPERTAR_UF" foreign key ("UF") references "UNIDAD_FUNCIONAL" ("UF_CODIGO")'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071947','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40355185381691685
 ,p_command => 
'alter table "REA_LDESPERTAR" add'||wwv_flow.LF||
'("COID_TANESTESIA" VARCHAR2(321))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121233','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40355273803689233
 ,p_command => 
'alter table "REA_LREA" add'||wwv_flow.LF||
'("COD_TANESTESIA" VARCHAR2(32))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121233','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40355330937681503
 ,p_command => 
'alter table "REA_LVIACENTRAL" add'||wwv_flow.LF||
'("CPERSONAL" NUMBER(38,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121234','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40355471209649519
 ,p_command => 
'alter table "REA_LVIACENTRAL" add'||wwv_flow.LF||
'("OBSERVACIONES" VARCHAR2(3500))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121240','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40356077095487077
 ,p_command => 
'alter table "REA_LADMTRATAMIENTO" modify'||wwv_flow.LF||
'("COD_TTRATAMIENTO" NUMBER)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121307','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40356133713483312
 ,p_command => 
'alter table "REA_LADMTRATAMIENTO" modify'||wwv_flow.LF||
'("COD_TTRATAMIENTO" NUMBER(12,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121307','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40356288888480810
 ,p_command => 
'alter table "REA_LADMTRATAMIENTO" modify'||wwv_flow.LF||
'("COD_TRATAMIENTO" NUMBER(12,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121308','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40356532830418397
 ,p_command => 
'alter table "REA_MTRATAMIENTO" add'||wwv_flow.LF||
'("COD_TTRATAMIENTO" NUMBER(12,0) NOT NULL)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121318','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40358560083266273
 ,p_command => 
'create or replace trigger "REA_LOG_T1"'||wwv_flow.LF||
'BEFORE'||wwv_flow.LF||
'insert or update on "REA_LOG"'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'if inserting then'||wwv_flow.LF||
'        :new.FECHA_CREACION := current_timestamp;'||wwv_flow.LF||
'        :new.QUIEN_CREO := nvl(v(''APP_USER''),user);'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    :new.FECHA_MODIFICACION := current_timestamp;'||wwv_flow.LF||
'    :new.QUIEN_MODIFICO := nvl(v(''APP_USER''),user);'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121630','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40358633074262825
 ,p_command => 
'create or replace trigger "REA_LOG_T1"'||wwv_flow.LF||
'BEFORE'||wwv_flow.LF||
'insert or update on "REA_LOG"'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'if inserting then'||wwv_flow.LF||
'        :new.FECHA_CREACION := current_timestamp;'||wwv_flow.LF||
'        :new.QUIEN_CREO := nvl(v(''APP_USER''),user);'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    :new.FECHA_MODIFICACION := current_timestamp;'||wwv_flow.LF||
'    :new.QUIEN_MODIFICO := nvl(v(''APP_USER''),user);'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121631','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40358747587252473
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("TABLA" VARCHAR2(50))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121633','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40358956199180745
 ,p_command => 
'drop TRIGGER "REA_LREA_T1"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121645','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40359026617175400
 ,p_command => 
'create or replace trigger "REA_LREA_DELETE_UPDATE"'||wwv_flow.LF||
'BEFORE'||wwv_flow.LF||
'update or delete on "REA_LREA"'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'insert into rea_log '||wwv_flow.LF||
'(ID,'||wwv_flow.LF||
'FECHA_CREACION,'||wwv_flow.LF||
'FECHA_MODIFICACION,'||wwv_flow.LF||
'QUIEN_CREO,'||wwv_flow.LF||
'QUIEN_MODIFICO,'||wwv_flow.LF||
'ID_REA,'||wwv_flow.LF||
'TABLA)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'('||wwv_flow.LF||
':OLD.ID,'||wwv_flow.LF||
':OLD.FECHA_CREACION,'||wwv_flow.LF||
':OLD.FECHA_MODIFICACION,'||wwv_flow.LF||
':OLD.QUIEN_CREO,'||wwv_flow.LF||
':OLD.QUIEN_MODIFICO,'||wwv_flow.LF||
':OLD.ID_REA,'||wwv_flow.LF||
':OLD.TABLA) '||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121645','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40359155845173000
 ,p_command => 
'create or replace trigger "REA_LREA_T1"'||wwv_flow.LF||
'BEFORE'||wwv_flow.LF||
'update or delete on "REA_LREA"'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'insert into rea_log '||wwv_flow.LF||
'(ID,'||wwv_flow.LF||
'FECHA_CREACION,'||wwv_flow.LF||
'FECHA_MODIFICACION,'||wwv_flow.LF||
'QUIEN_CREO,'||wwv_flow.LF||
'QUIEN_MODIFICO,'||wwv_flow.LF||
'ID_REA,'||wwv_flow.LF||
'TABLA)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'('||wwv_flow.LF||
':OLD.ID,'||wwv_flow.LF||
':OLD.FECHA_CREACION,'||wwv_flow.LF||
':OLD.FECHA_MODIFICACION,'||wwv_flow.LF||
':OLD.QUIEN_CREO,'||wwv_flow.LF||
':OLD.QUIEN_MODIFICO,'||wwv_flow.LF||
':OLD.ID_REA,'||wwv_flow.LF||
':OLD.TABLA) ;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121646','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40359209221168637
 ,p_command => 
'create or replace trigger "REA_LREA_T1"'||wwv_flow.LF||
'BEFORE'||wwv_flow.LF||
'update or delete on "REA_LREA"'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'insert into rea_log '||wwv_flow.LF||
'(ID,'||wwv_flow.LF||
'FECHA_CREACION,'||wwv_flow.LF||
'FECHA_MODIFICACION,'||wwv_flow.LF||
'QUIEN_CREO,'||wwv_flow.LF||
'QUIEN_MODIFICO,'||wwv_flow.LF||
'ID_REA,'||wwv_flow.LF||
'TABLA)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'('||wwv_flow.LF||
':OLD.ID,'||wwv_flow.LF||
':OLD.FECHA_CREACION,'||wwv_flow.LF||
':OLD.FECHA_MODIFICACION,'||wwv_flow.LF||
':OLD.QUIEN_CREO,'||wwv_flow.LF||
':OLD.QUIEN_MODIFICO,'||wwv_flow.LF||
':OLD.ID_REA,'||wwv_flow.LF||
':OLD.TABLA) ;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121647','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39688817659964943
 ,p_command => 
'create  materialized view "600_PROF_GR"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'SELECT "600_PROF_GR"."CPERSONAL" "CPERSONAL","600_PROF_GR"."NOMBRE" "NOMBRE","600_PROF_GR"."APELLIDO1" "APELLIDO1","600_PROF_GR"."APELLIDO2" "APELLIDO2","600_PROF_GR"."CSEXO" "CSEXO","600_PROF_GR"."FNACIMIENTO" "FNACIMIENTO","600_PROF_GR"."FK_FNACIMIENTO" "FK_FNACIMIENTO","600_PROF_GR"."DNI" "DNI","600_PROF_GR"."NUHSA" "NUHSA","600_PROF_GR"."COD_MACO" "CO'||
'D_MACO","600_PROF_GR"."LOGIN_DMSAS" "LOGIN_DMSAS","600_PROF_GR"."MAIL" "MAIL","600_PROF_GR"."CNP" "CNP","600_PROF_GR"."ACTIVO" "ACTIVO","600_PROF_GR"."FINI_NOMBRAMIENTO" "FINI_NOMBRAMIENTO","600_PROF_GR"."FK_FINI_NOMBRAMIENTO" "FK_FINI_NOMBRAMIENTO","600_PROF_GR"."FFIN_NOMBRAMIENTO" "FFIN_NOMBRAMIENTO","600_PROF_GR"."FK_FFIN_NOMBRAMIENTO" "FK_FFIN_NOMBRAMIENTO","600_PROF_GR"."C_UPO" "C_UPO","600_P'||
'ROF_GR"."D_UPO" "D_UPO","600_PROF_GR"."C_CENTRO" "C_CENTRO","600_PROF_GR"."D_CENTRO" "D_CENTRO","600_PROF_GR"."C_SERVICIO" "C_SERVICIO","600_PROF_GR"."D_SERVICIO" "D_SERVICIO","600_PROF_GR"."C_CATEGORIA" "C_CATEGORIA","600_PROF_GR"."D_CATEGORIA" "D_CATEGORIA","600_PROF_GR"."C_REGIMEN_PERSONAL" "C_REGIMEN_PERSONAL","600_PROF_GR"."D_REGIMEN_PERSONAL" "D_REGIMEN_PERSONAL","600_PROF_GR"."PAGER" "PAGER'||
'" FROM "SSII_GR"."600_PROF_GR"@"DBLINK_SSII_GR.DMSAS.SDA.SAS.JUNTA-ANDALUCIA.ES" "600_PROF_GR"'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071754','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39688996971957565
 ,p_command => 
'drop MATERIALIZED VIEW "EMPLEADOS"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071755','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39689167391932037
 ,p_command => 
'alter table "REA_DESPERTAR" add'||wwv_flow.LF||
'("CPERSONAL" NUMBER NOT NULL)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071759','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39740282512837911
 ,p_command => 
'create  materialized view "BDU"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'select * from bdu.bdu'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071815','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39740748465692603
 ,p_command => 
'create  materialized view "BDU"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'SELECT * FROM BDU.BDU@DBLINK_DPETL_LEC_STIC_PGUTIERREZ'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071839','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39740859572688968
 ,p_command => 
'create  materialized view "BDU"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'"SELECT * FROM BDU.BDU@DBLINK_DPETL_LEC_STIC_PGUTIERREZ"'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071840','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39740967925674491
 ,p_command => 
'create  materialized view "BDU"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'SELECT * FROM BDU.BDU@DBLINK_DPETL_LEC_STIC_PGUTIERREZ'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071842','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39741106171618960
 ,p_command => 
'create  materialized view "BDU"'||wwv_flow.LF||
'as'||wwv_flow.LF||
'SELECT NOMBRE, APELLIDO1, APELLIDO2, NUSS_PROVISIONAL FROM BDU.BDU@DBLINK_DPETL_LEC_STIC_PGUTIERREZ'||wwv_flow.LF||
'/'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071852','YYYYMMDDHH24MI')
    ,p_parsed_schema => '');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40354856409625963
 ,p_command => 
'drop VIEW "VM_CAMAS"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405120957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40354321486740821
 ,p_command => 
'alter table "REA_LREA" rename column'||wwv_flow.LF||
'"CAMA" to "COD_CAMA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405120938','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40354917083621891
 ,p_command => 
'create or replace view "VM_CAMAS" as'||wwv_flow.LF||
'SELECT CAMAS.CAMA ID_CAMA, CAMAS.COD_CONTROLENFERMERIA COD_CONTROL_ENF, CONTROL_ENF.DESCRIPCION DES_CONTROL_ENF, '||wwv_flow.LF||
'       CAMAS.DESCRIPCION COD_CAMA, CAMAS.DESCRIPCION_HABITACION DES_CAMA, '||wwv_flow.LF||
'       ESTADO.DESCRIPCION ESTADO_CAMA, SECCION.CODIGO COD_SECCION, SECCION.DESCRIPCION DES_SECCION'||wwv_flow.LF||
'FROM "REP_SIDCA_OWN"."HCE_MA_CAMAS"@DBLINK_OPGRE40_OPERACIONALES CAMAS,'||wwv_flow.LF||
' "R'||
'EP_SIDCA_OWN"."HCE_MA_CONTROL_ENFERMERIA"@DBLINK_OPGRE40_OPERACIONALES CONTROL_ENF,'||wwv_flow.LF||
' "REP_SIDCA_OWN"."HCE_MA_CAMAS_ESTADOS"@DBLINK_OPGRE40_OPERACIONALES ESTADO,'||wwv_flow.LF||
' "REP_SIDCA_OWN"."HCE_MA_SECCION"@DBLINK_OPGRE40_OPERACIONALES SECCION'||wwv_flow.LF||
'WHERE CAMAS.COD_CONTROLENFERMERIA = CONTROL_ENF.CODIGO'||wwv_flow.LF||
'AND CAMAS.ESTADO = ESTADO.CODIGO'||wwv_flow.LF||
'AND ESTADO.CODIGO <> ''0'''||wwv_flow.LF||
'AND CAMAS.COD_SECCION = SECCION.CODIGO'||wwv_flow.LF||
'ORDER BY CAMAS.C'||
'OD_CONTROLENFERMERIA'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405120958','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40359574610164739
 ,p_command => 
'create or replace trigger "REA_LREA_T1"'||wwv_flow.LF||
'BEFORE'||wwv_flow.LF||
'update or delete on "REA_LREA"'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'insert into rea_log '||wwv_flow.LF||
'(ID,'||wwv_flow.LF||
'FECHA_CREACION,'||wwv_flow.LF||
'FECHA_MODIFICACION,'||wwv_flow.LF||
'QUIEN_CREO,'||wwv_flow.LF||
'QUIEN_MODIFICO,'||wwv_flow.LF||
'ID_REA,'||wwv_flow.LF||
'TABLA)'||wwv_flow.LF||
'VALUES '||wwv_flow.LF||
'('||wwv_flow.LF||
':OLD.ID,'||wwv_flow.LF||
':OLD.FECHA_CREACION,'||wwv_flow.LF||
':OLD.FECHA_MODIFICACION,'||wwv_flow.LF||
':OLD.QUIEN_CREO,'||wwv_flow.LF||
':OLD.QUIEN_MODIFICO,'||wwv_flow.LF||
':OLD.ID_REA,'||wwv_flow.LF||
':OLD.TABLA) ;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121647','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40360023086146926
 ,p_command => 
'drop TRIGGER "REA_LREA_T1"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121650','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40360166054131600
 ,p_command => 
'create or replace trigger "REA_LREA_T1"'||wwv_flow.LF||
'AFTER'||wwv_flow.LF||
'insert on "REA_LOG"'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        FECHA_CREACION,'||wwv_flow.LF||
'        FECHA_MODIFICACION,'||wwv_flow.LF||
'        QUIEN_CREO,'||wwv_flow.LF||
'        QUIEN_MODIFICO,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL, '||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'        U'||
'SER, -- El usuario que realizó la inserción'||wwv_flow.LF||
'        USER, -- El usuario que realizó la inserción'||wwv_flow.LF||
'        :NEW.LREA_PK, -- El ID de la fila insertada en REA_LREA'||wwv_flow.LF||
'        ''REA_LREA'' -- El nombre de la tabla insertada'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121653','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40360208370125362
 ,p_command => 
'create or replace trigger "REA_LOG_INSERT_LREA"'||wwv_flow.LF||
'AFTER'||wwv_flow.LF||
'insert on "REA_LOG"'||wwv_flow.LF||
'for each row'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        FECHA_CREACION,'||wwv_flow.LF||
'        FECHA_MODIFICACION,'||wwv_flow.LF||
'        QUIEN_CREO,'||wwv_flow.LF||
'        QUIEN_MODIFICO,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL, '||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'        SYSTIMESTAMP, -- La fecha y hora actual'||wwv_flow.LF||
'  '||
'      USER, -- El usuario que realizó la inserción'||wwv_flow.LF||
'        USER, -- El usuario que realizó la inserción'||wwv_flow.LF||
'        :NEW.LREA_PK, -- El ID de la fila insertada en REA_LREA'||wwv_flow.LF||
'        ''REA_LREA'' -- El nombre de la tabla insertada'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121654','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40360466840114185
 ,p_command => 
'drop TRIGGER "REA_LOG_INSERT_LREA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121656','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40360563367113610
 ,p_command => 
'drop TRIGGER "REA_LREA_T1"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121656','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39689054460945652
 ,p_command => 
'alter table "REA_DESPERTAR" drop column'||wwv_flow.LF||
'"MÉDICO"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071757','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 39689252919928822
 ,p_command => 
'alter table "REA_DESPERTAR" add'||wwv_flow.LF||
'("CPERSONAL" NUMBER)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405071800','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40364138232583585
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LVIACENTRAL_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LVIACENTRAL'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA, '||wwv_flow.LF||
'        F_ENTRADA, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        F_SALIDA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_CAMA, '||wwv_flow.LF||
'        COD_TVIACENTRAL, '||wwv_flow.LF||
'        COD_TANESTESIA, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSER'||
'VACIONES,'||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.LVIACENTRAL_PK,'||wwv_flow.LF||
'        ''REA_LVIACENTRAL'','||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.NUHSA, '||wwv_flow.LF||
'        :NEW.COD_CAMA, '||wwv_flow.LF||
'        :NEW.COD_TVIACENTRAL, '||wwv_flow.LF||
'        :NEW.COD_TANESTESIA, '||wwv_flow.LF||
'        :NEW.COD_UF, '||wwv_flow.LF||
'        :NEW.CPERSONAL, '||wwv_flow.LF||
'        :NEW.OBSERVACIONE'||
'S,'||wwv_flow.LF||
'        ''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121824','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40364260699554124
 ,p_command => 
'create or replace TRIGGER  "REA_LVIACENTRAL_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LVIACENTRAL'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA, '||wwv_flow.LF||
'        F_ENTRADA, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        F_SALIDA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_CAMA, '||wwv_flow.LF||
'        COD_TVIACENTRAL, '||wwv_flow.LF||
'        COD_TANESTESIA, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES,'||wwv_flow.LF||
'  '||
'      OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.LVIACENTRAL_PK,'||wwv_flow.LF||
'        ''REA_LVIACENTRAL'','||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.NUHSA, '||wwv_flow.LF||
'        :NEW.COD_CAMA, '||wwv_flow.LF||
'        :NEW.COD_TVIACENTRAL, '||wwv_flow.LF||
'        :NEW.COD_TANESTESIA, '||wwv_flow.LF||
'        :NEW.COD_UF, '||wwv_flow.LF||
'        :NEW.CPERSONAL, '||wwv_flow.LF||
'        :NEW.OBSERVACIONES,'||wwv_flow.LF||
'        '''||
'INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121829','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40364315596545913
 ,p_command => 
'create or replace TRIGGER  "REA_LVIACENTRAL_UPDATEDELETE" '||wwv_flow.LF||
'BEFORE DELETE OR UPDATE ON REA_LVIACENTRAL'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    ls_operacion VARCHAR2(10);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'    IF INSERTING THEN'||wwv_flow.LF||
'       ls_operacion := ''INSERCION'';'||wwv_flow.LF||
'    ELSIF UPDATING THEN'||wwv_flow.LF||
'       ls_operacion := ''ACTUALIZACION'';'||wwv_flow.LF||
'    ELSIF DELETING THEN'||wwv_flow.LF||
'       ls_operacion := ''BORRADO'';'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'       '||
' ID_REA,'||wwv_flow.LF||
'        TABLA, '||wwv_flow.LF||
'        F_ENTRADA, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        F_SALIDA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_CAMA, '||wwv_flow.LF||
'        COD_TVIACENTRAL, '||wwv_flow.LF||
'        COD_TANESTESIA, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES,'||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.LVIACENTRAL_PK,'||wwv_flow.LF||
'        ''REA_LVIACENTRAL'','||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :'||
'NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.NUHSA, '||wwv_flow.LF||
'        :NEW.COD_CAMA, '||wwv_flow.LF||
'        :NEW.COD_TVIACENTRAL, '||wwv_flow.LF||
'        :NEW.COD_TANESTESIA, '||wwv_flow.LF||
'        :NEW.COD_UF, '||wwv_flow.LF||
'        :NEW.CPERSONAL, '||wwv_flow.LF||
'        :NEW.OBSERVACIONES,'||wwv_flow.LF||
'        ls_operacion'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40364425527536030
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("F_ADMDOSIS" DATE)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121832','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40364575990529425
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("COD_TTRATAMIENTO" NUMBER(12,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121833','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40364616079527955
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("COD_TRATAMIENTO" NUMBER(12,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121833','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40364748000503294
 ,p_command => 
'create or replace TRIGGER  "REA_LADMTRATAMIENTO_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LADMTRATAMIENTO'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,F_ADMDOSIS, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_TTRATAMIENTO, '||wwv_flow.LF||
'        COD_TRATAMIENTO, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        COD_TINTERVENCION, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES'||wwv_flow.LF||
'    ) VALUES'||
' ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.L_ADMTRATAMIENTO_PK,'||wwv_flow.LF||
'        ''REA_LADMTRATAMIENTO'',F_ADMDOSIS, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_TTRATAMIENTO, '||wwv_flow.LF||
'        COD_TRATAMIENTO, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        COD_TINTERVENCION, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES'||wwv_flow.LF||
'        ''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'	 '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121838','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40364854112500777
 ,p_command => 
'create or replace TRIGGER  "REA_LADMTRATAMIENTO_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LADMTRATAMIENTO'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ADMDOSIS, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_TTRATAMIENTO, '||wwv_flow.LF||
'        COD_TRATAMIENTO, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        COD_TINTERVENCION, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES'||wwv_flow.LF||
'   '||
' ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.L_ADMTRATAMIENTO_PK,'||wwv_flow.LF||
'        ''REA_LADMTRATAMIENTO'','||wwv_flow.LF||
'        F_ADMDOSIS, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_TTRATAMIENTO, '||wwv_flow.LF||
'        COD_TRATAMIENTO, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        COD_TINTERVENCION, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES,'||wwv_flow.LF||
'        ''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'	 '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121838','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40364957425497444
 ,p_command => 
'create or replace TRIGGER  "REA_LADMTRATAMIENTO_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LADMTRATAMIENTO'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ADMDOSIS, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_TTRATAMIENTO, '||wwv_flow.LF||
'        COD_TRATAMIENTO, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        COD_TINTERVENCION, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES'||wwv_flow.LF||
'   '||
' ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.L_ADMTRATAMIENTO_PK,'||wwv_flow.LF||
'        ''REA_LADMTRATAMIENTO'','||wwv_flow.LF||
'        :NEW.F_ADMDOSIS, '||wwv_flow.LF||
'        :NEW.H_ENTRADA, '||wwv_flow.LF||
'        :NEW.H_SALIDA, '||wwv_flow.LF||
'        :NEW.NUHSA, '||wwv_flow.LF||
'        :NEW.COD_TTRATAMIENTO, '||wwv_flow.LF||
'        :NEW.COD_TRATAMIENTO, '||wwv_flow.LF||
'        :NEW.COD_UF, '||wwv_flow.LF||
'        :NEW.COD_TINTERVENCION, '||wwv_flow.LF||
'        :NEW.CPERSONAL, '||wwv_flow.LF||
'        :NEW.OBSERVACIONES,'||wwv_flow.LF||
'        ''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'	 '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121838','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40365006190494568
 ,p_command => 
'create or replace TRIGGER  "REA_LADMTRATAMIENTO_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LADMTRATAMIENTO'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ADMDOSIS, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_TTRATAMIENTO, '||wwv_flow.LF||
'        COD_TRATAMIENTO, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        COD_TINTERVENCION, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES'||wwv_flow.LF||
'   '||
' ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.L_ADMTRATAMIENTO_PK,'||wwv_flow.LF||
'        ''REA_LADMTRATAMIENTO'','||wwv_flow.LF||
'        :NEW.F_ADMDOSIS, '||wwv_flow.LF||
'        :NEW.H_ENTRADA, '||wwv_flow.LF||
'        :NEW.H_SALIDA, '||wwv_flow.LF||
'        :NEW.NUHSA, '||wwv_flow.LF||
'        :NEW.COD_TTRATAMIENTO, '||wwv_flow.LF||
'        :NEW.COD_TRATAMIENTO, '||wwv_flow.LF||
'        :NEW.COD_UF, '||wwv_flow.LF||
'        :NEW.COD_TINTERVENCION, '||wwv_flow.LF||
'        :NEW.CPERSONAL, '||wwv_flow.LF||
'        :NEW.OBSERVACIONES,'||wwv_flow.LF||
'        ''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'	 '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40365136638492182
 ,p_command => 
'create or replace TRIGGER  "REA_LADMTRATAMIENTO_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LADMTRATAMIENTO'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.L_ADMTRATAMIENTO_PK,'||wwv_flow.LF||
'        ''REA_LADMTRATAMIENTO'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'	 '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40365232054487550
 ,p_command => 
'create or replace TRIGGER  "REA_LADMTRATAMIENTO_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LADMTRATAMIENTO'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ADMDOSIS, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_TTRATAMIENTO, '||wwv_flow.LF||
'        COD_TRATAMIENTO, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        COD_TINTERVENCION, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES'||wwv_flow.LF||
'   '||
' ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.L_ADMTRATAMIENTO_PK,'||wwv_flow.LF||
'        ''REA_LADMTRATAMIENTO'','||wwv_flow.LF||
'        :NEW.F_ADMDOSIS, '||wwv_flow.LF||
'        :NEW.H_ENTRADA, '||wwv_flow.LF||
'        :NEW.H_SALIDA, '||wwv_flow.LF||
'        :NEW.NUHSA, '||wwv_flow.LF||
'        :NEW.COD_TTRATAMIENTO, '||wwv_flow.LF||
'        :NEW.COD_TRATAMIENTO, '||wwv_flow.LF||
'        :NEW.COD_UF, '||wwv_flow.LF||
'        :NEW.COD_TINTERVENCION, '||wwv_flow.LF||
'        :NEW.CPERSONAL, '||wwv_flow.LF||
'        :NEW.OBSERVACIONES,'||wwv_flow.LF||
'        ''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'	 '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121840','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40365341291484153
 ,p_command => 
'create or replace TRIGGER  "REA_LADMTRATAMIENTO_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LADMTRATAMIENTO'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ADMDOSIS, '||wwv_flow.LF||
'        H_ENTRADA'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.L_ADMTRATAMIENTO_PK,'||wwv_flow.LF||
'        ''REA_LADMTRATAMIENTO'','||wwv_flow.LF||
'        :NEW.F_ADMDOSIS, '||wwv_flow.LF||
'        :NEW.H_ENTRADA'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'	 '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121841','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40365401005482174
 ,p_command => 
'create or replace TRIGGER  "REA_LADMTRATAMIENTO_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LADMTRATAMIENTO'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ADMDOSIS, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_TTRATAMIENTO, '||wwv_flow.LF||
'        COD_TRATAMIENTO, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        COD_TINTERVENCION, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES,'||wwv_flow.LF||
'  '||
'      OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.L_ADMTRATAMIENTO_PK,'||wwv_flow.LF||
'        ''REA_LADMTRATAMIENTO'','||wwv_flow.LF||
'        :NEW.F_ADMDOSIS, '||wwv_flow.LF||
'        :NEW.H_ENTRADA, '||wwv_flow.LF||
'        :NEW.H_SALIDA, '||wwv_flow.LF||
'        :NEW.NUHSA, '||wwv_flow.LF||
'        :NEW.COD_TTRATAMIENTO, '||wwv_flow.LF||
'        :NEW.COD_TRATAMIENTO, '||wwv_flow.LF||
'        :NEW.COD_UF, '||wwv_flow.LF||
'        :NEW.COD_TINTERVENCION, '||wwv_flow.LF||
'        :NEW.CPERSONAL, '||wwv_flow.LF||
'        :NEW.OBSERVACIONES,'||wwv_flow.LF||
'        '||
'''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'	 '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121841','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40365528117467028
 ,p_command => 
'create or replace TRIGGER  "REA_LADMTRATAMIENTO_UPDATEDELETE" '||wwv_flow.LF||
'BEFORE DELETE OR UPDATE ON REA_LADMTRATAMIENTO'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    ls_operacion VARCHAR2(10);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'    IF INSERTING THEN'||wwv_flow.LF||
'       ls_operacion := ''INSERCION'';'||wwv_flow.LF||
'    ELSIF UPDATING THEN'||wwv_flow.LF||
'       ls_operacion := ''ACTUALIZACION'';'||wwv_flow.LF||
'    ELSIF DELETING THEN'||wwv_flow.LF||
'       ls_operacion := ''BORRADO'';'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'   INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
''||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ADMDOSIS, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_TTRATAMIENTO, '||wwv_flow.LF||
'        COD_TRATAMIENTO, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        COD_TINTERVENCION, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSERVACIONES,'||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :OLD.L_ADMTRATAMIENTO_PK,'||wwv_flow.LF||
'        ''REA_LADMTRATAMIENTO'','||wwv_flow.LF||
'        :OLD.F_ADMDOSIS, '||
''||wwv_flow.LF||
'        :OLD.H_ENTRADA, '||wwv_flow.LF||
'        :OLD.H_SALIDA, '||wwv_flow.LF||
'        :OLD.NUHSA, '||wwv_flow.LF||
'        :OLD.COD_TTRATAMIENTO, '||wwv_flow.LF||
'        :OLD.COD_TRATAMIENTO, '||wwv_flow.LF||
'        :OLD.COD_UF, '||wwv_flow.LF||
'        :OLD.COD_TINTERVENCION, '||wwv_flow.LF||
'        :OLD.CPERSONAL, '||wwv_flow.LF||
'        :OLD.OBSERVACIONES,'||wwv_flow.LF||
'        ls_operacion);'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'	 '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121844','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40426466926209069
 ,p_command => 
'delete from REA_LREA ;'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405130920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40634649688826282
 ,p_command => 
'select * from SM_PROCEDIMIENTOCIE9'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405140837','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40633746276968027
 ,p_command => 
'select * from SM_PROCEDIMIENTOCIE9'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405140813','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40633879201967056
 ,p_command => 
'select codigo, titulo from SM_PROCEDIMIENTOCIE9'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405140814','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40654922057397764
 ,p_command => 
'select i.*'||wwv_flow.LF||
' from (select "APEX_ROW_PK","F_ENTRADA","H_ENTRADA","F_SALIDA","H_SALIDA","NUHSA","LDRET","COD_INTERVENCION","COD_CAMA","COD_TINTERVENCION","COD_UF","CPERSONAL","COD_TANESTESIA","LDESPERTAR_PK"'||wwv_flow.LF||
'from ((select /*+ qb_name(apex$inner) */d."APEX_ROW_PK",d."F_ENTRADA",d."H_ENTRADA",d."F_SALIDA",d."H_SALIDA",d."NUHSA",d."LDRET",d."COD_INTERVENCION",d."COD_CAMA",d."COD_TINTERVENCION",d."COD_UF'||
'",d."CPERSONAL",d."COD_TANESTESIA",d."LDESPERTAR_PK" from (select (null)"APEX_ROW_PK","F_ENTRADA","H_ENTRADA","F_SALIDA","H_SALIDA","NUHSA","LDRET","COD_INTERVENCION","COD_CAMA","COD_TINTERVENCION","COD_UF","CPERSONAL","COD_TANESTESIA","LDESPERTAR_PK" from (select x.* from "REA_LDESPERTAR" x '||wwv_flow.LF||
'where((NUHSA LIKE ''''|| :P4_FILTRO_NUHSA || '''') AND'||wwv_flow.LF||
'( (:P4_FILTRO_DESDE IS NULL) OR to_char (F_ENTRADA, ''DD'||
'-MM-YYYY'') >= to_char (:P4_FILTRO_DESDE, ''DD-MM-YYYY''))'||wwv_flow.LF||
')'||wwv_flow.LF||
') d'||wwv_flow.LF||
') d'||wwv_flow.LF||
' )) i '||wwv_flow.LF||
') i where 1=1'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405140948','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40686272104919035
 ,p_command => 
'ALTER TABLE REA_LDESPERTAR ADD BORRADO NUMBER(1) DEFAULT 0'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405141108','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40686381700918204
 ,p_command => 
'SELECT * FROM REA_LDESPERTAR'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405141108','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41209077062233691
 ,p_command => 
'select * from SM_UNIDADFUNCIONAL'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230809','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41210480083226479
 ,p_command => 
'select LREA_PK,'||wwv_flow.LF||
'       F_ENTRADA,'||wwv_flow.LF||
'       H_ENTRADA,'||wwv_flow.LF||
'       F_SALIDA,'||wwv_flow.LF||
'       H_SALIDA,'||wwv_flow.LF||
'       NUHSA,'||wwv_flow.LF||
'       COD_INTERVENCION,'||wwv_flow.LF||
'       COD_CAMA,'||wwv_flow.LF||
'       COD_TINTERVENCION,'||wwv_flow.LF||
'       CPERSONAL,'||wwv_flow.LF||
'       COD_TANESTESIA,'||wwv_flow.LF||
'       COD_UF_ID,'||wwv_flow.LF||
'       SM_UNIDADFUNCIONAL.UF_NOMBRE'||wwv_flow.LF||
'  from REA_LREA,'||wwv_flow.LF||
'        SM_UNIDADFUNCIONAL'||wwv_flow.LF||
'where SM_UNIDADFUNCIONAL.UF_CODIGO = REA_LREA.COD_UF_ID    '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230810','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41210523961218979
 ,p_command => 
'select * from SM_UNIDADFUNCIONAL;'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230812','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41210697047199555
 ,p_command => 
'delete from real_lrea;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230815','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41210713890198679
 ,p_command => 
'delete from REAL_LREA;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230815','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41210828837197488
 ,p_command => 
'delete from REA_LREA;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230815','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41210945063190980
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LREA_UPDATEDELETE" '||wwv_flow.LF||
'BEFORE DELETE OR UPDATE ON REA_LREA'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    ls_operacion VARCHAR2(10);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'    IF INSERTING THEN'||wwv_flow.LF||
'       ls_operacion := ''INSERCION'';'||wwv_flow.LF||
'    ELSIF UPDATING THEN'||wwv_flow.LF||
'       ls_operacion := ''ACTUALIZA'';'||wwv_flow.LF||
'    ELSIF DELETING THEN'||wwv_flow.LF||
'       ls_operacion := ''BORRADO'';'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_RE'||
'A,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ENTRADA,'||wwv_flow.LF||
'        H_ENTRADA,'||wwv_flow.LF||
'        F_SALIDA,'||wwv_flow.LF||
'        H_SALIDA,'||wwv_flow.LF||
'        NUHSA,'||wwv_flow.LF||
'        COD_INTERVENCION,'||wwv_flow.LF||
'        COD_CAMA,'||wwv_flow.LF||
'        COD_TINTERVENCION,'||wwv_flow.LF||
'        COD_UF,'||wwv_flow.LF||
'        CPERSONAL,'||wwv_flow.LF||
'        COD_TANESTESIA,'||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :OLD.LREA_PK,'||wwv_flow.LF||
'        ''REA_LREA'','||wwv_flow.LF||
'        :OLD.F_ENTRADA,'||wwv_flow.LF||
'        :OLD.H_ENTRADA,'||wwv_flow.LF||
'        :OL'||
'D.F_SALIDA,'||wwv_flow.LF||
'        :OLD.H_SALIDA,'||wwv_flow.LF||
'        :OLD.NUHSA,'||wwv_flow.LF||
'        :OLD.COD_INTERVENCION,'||wwv_flow.LF||
'        :OLD.COD_CAMA,'||wwv_flow.LF||
'        :OLD.COD_TINTERVENCION,'||wwv_flow.LF||
'        :OLD.COD_UF,'||wwv_flow.LF||
'        :OLD.CPERSONAL,'||wwv_flow.LF||
'        :OLD.COD_TANESTESIA,'||wwv_flow.LF||
'        ls_operacion'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'/'||wwv_flow.LF||
'ALTER TRIGGER  "REA_LREA_UPDATEDELETE" ENABLE'||wwv_flow.LF||
'/'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230816','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41395786834607014
 ,p_command => 
'alter table "REA_LDESPERTAR" drop column'||wwv_flow.LF||
'"H_ENTRADA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41395982409604323
 ,p_command => 
'alter table "REA_LOG" drop column'||wwv_flow.LF||
'"H_SALIDA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41396101665602433
 ,p_command => 
'alter table "REA_LADMTRATAMIENTO" drop column'||wwv_flow.LF||
'"H_ENTRADA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41396323184599270
 ,p_command => 
'alter table "REA_LREA" drop column'||wwv_flow.LF||
'"H_SALIDA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230955','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41396616149596487
 ,p_command => 
'alter table "REA_LVIACENTRAL" drop column'||wwv_flow.LF||
'"H_SALIDA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230955','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41211011362190237
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LREA_UPDATEDELETE" '||wwv_flow.LF||
'BEFORE DELETE OR UPDATE ON REA_LREA'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    ls_operacion VARCHAR2(10);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'    IF INSERTING THEN'||wwv_flow.LF||
'       ls_operacion := ''INSERCION'';'||wwv_flow.LF||
'    ELSIF UPDATING THEN'||wwv_flow.LF||
'       ls_operacion := ''ACTUALIZA'';'||wwv_flow.LF||
'    ELSIF DELETING THEN'||wwv_flow.LF||
'       ls_operacion := ''BORRADO'';'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_RE'||
'A,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ENTRADA,'||wwv_flow.LF||
'        H_ENTRADA,'||wwv_flow.LF||
'        F_SALIDA,'||wwv_flow.LF||
'        H_SALIDA,'||wwv_flow.LF||
'        NUHSA,'||wwv_flow.LF||
'        COD_INTERVENCION,'||wwv_flow.LF||
'        COD_CAMA,'||wwv_flow.LF||
'        COD_TINTERVENCION,'||wwv_flow.LF||
'        COD_UF,'||wwv_flow.LF||
'        CPERSONAL,'||wwv_flow.LF||
'        COD_TANESTESIA,'||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :OLD.LREA_PK,'||wwv_flow.LF||
'        ''REA_LREA'','||wwv_flow.LF||
'        :OLD.F_ENTRADA,'||wwv_flow.LF||
'        :OLD.H_ENTRADA,'||wwv_flow.LF||
'        :OL'||
'D.F_SALIDA,'||wwv_flow.LF||
'        :OLD.H_SALIDA,'||wwv_flow.LF||
'        :OLD.NUHSA,'||wwv_flow.LF||
'        :OLD.COD_INTERVENCION,'||wwv_flow.LF||
'        :OLD.COD_CAMA,'||wwv_flow.LF||
'        :OLD.COD_TINTERVENCION,'||wwv_flow.LF||
'        :OLD.COD_UF,'||wwv_flow.LF||
'        :OLD.CPERSONAL,'||wwv_flow.LF||
'        :OLD.COD_TANESTESIA,'||wwv_flow.LF||
'        ls_operacion'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'ALTER TRIGGER  "REA_LREA_UPDATEDELETE" ENABLE'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230816','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41395685635634958
 ,p_command => 
'create or replace TRIGGER  "REA_LREA_UPDATEDELETE" '||wwv_flow.LF||
'BEFORE DELETE OR UPDATE ON REA_LREA'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    ls_operacion VARCHAR2(10);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'    IF INSERTING THEN'||wwv_flow.LF||
'       ls_operacion := ''INSERCION'';'||wwv_flow.LF||
'    ELSIF UPDATING THEN'||wwv_flow.LF||
'       ls_operacion := ''ACTUALIZA'';'||wwv_flow.LF||
'    ELSIF DELETING THEN'||wwv_flow.LF||
'       ls_operacion := ''BORRADO'';'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        T'||
'ABLA,'||wwv_flow.LF||
'        F_ENTRADA,'||wwv_flow.LF||
'        H_ENTRADA,'||wwv_flow.LF||
'        F_SALIDA,'||wwv_flow.LF||
'        H_SALIDA,'||wwv_flow.LF||
'        NUHSA,'||wwv_flow.LF||
'        COD_INTERVENCION,'||wwv_flow.LF||
'        COD_CAMA,'||wwv_flow.LF||
'        COD_TINTERVENCION,'||wwv_flow.LF||
'        COD_UF,'||wwv_flow.LF||
'        CPERSONAL,'||wwv_flow.LF||
'        COD_TANESTESIA,'||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :OLD.LREA_PK,'||wwv_flow.LF||
'        ''REA_LREA'','||wwv_flow.LF||
'        :OLD.F_ENTRADA,'||wwv_flow.LF||
'        :OLD.H_ENTRADA,'||wwv_flow.LF||
'        :OLD.F_SALIDA,'||wwv_flow.LF||
''||
'        :OLD.H_SALIDA,'||wwv_flow.LF||
'        :OLD.NUHSA,'||wwv_flow.LF||
'        :OLD.COD_INTERVENCION,'||wwv_flow.LF||
'        :OLD.COD_CAMA,'||wwv_flow.LF||
'        :OLD.COD_TINTERVENCION,'||wwv_flow.LF||
'        :OLD.COD_UF_ID,'||wwv_flow.LF||
'        :OLD.CPERSONAL,'||wwv_flow.LF||
'        :OLD.COD_TANESTESIA,'||wwv_flow.LF||
'        ls_operacion'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230949','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41395810349605918
 ,p_command => 
'alter table "REA_LDESPERTAR" drop column'||wwv_flow.LF||
'"H_SALIDA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41396073972603474
 ,p_command => 
'alter table "REA_LOG" drop column'||wwv_flow.LF||
'"H_ENTRADA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41396241769601708
 ,p_command => 
'alter table "REA_LADMTRATAMIENTO" drop column'||wwv_flow.LF||
'"H_SALIDA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230955','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41396411978598459
 ,p_command => 
'alter table "REA_LREA" drop column'||wwv_flow.LF||
'"H_ENTRADA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230955','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41396588824597339
 ,p_command => 
'alter table "REA_LVIACENTRAL" drop column'||wwv_flow.LF||
'"H_ENTRADA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405230955','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41482270942313134
 ,p_command => 
'SELECT A.*,'||wwv_flow.LF||
'        SM_PACIENTES.NOMBRE || '' '' || SM_PACIENTES.APELLIDO1 || '' '' || SM_PACIENTES.APELLIDO2 AS PACIENTE,'||wwv_flow.LF||
'        SM_CAMAS.COD_CAMA || '' - '' || SM_CAMAS.DES_CAMA AS CAMA,'||wwv_flow.LF||
'        B.ANESTESIA_DES,'||wwv_flow.LF||
'        SM_PROCEDIMIENTOCIE9.TITULO,'||wwv_flow.LF||
'        SM_TIPOINTERVENCION.DES_MOTIVO_ING    '||wwv_flow.LF||
'FROM REA_LDESPERTAR A,'||wwv_flow.LF||
'    SM_TIPOANESTESIA B,'||wwv_flow.LF||
'    SM_PROCEDIMIENTOCIE9,'||wwv_flow.LF||
'    SM_TIPOINTERVENCION,'||wwv_flow.LF||
'    SM_CA'||
'MAS,    '||wwv_flow.LF||
'    SM_PACIENTES'||wwv_flow.LF||
'WHERE A.COD_TANESTESIA = B.ANESTESIA_ID (+) AND'||wwv_flow.LF||
'    SM_PROCEDIMIENTOCIE9.CODIGO (+) = A.COD_INTERVENCION AND'||wwv_flow.LF||
'    SM_TIPOINTERVENCION.MOTIVO_ING_ID (+) = A.COD_TINTERVENCION AND'||wwv_flow.LF||
'    SM_CAMAS.ID_CAMA (+) = A.COD_CAMA AND'||wwv_flow.LF||
'    SM_PACIENTES.NUHSA (+) = A.NUHSA ;'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405242003','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40362991604840336
 ,p_command => 
'alter table "REA_LOG" rename column'||wwv_flow.LF||
'"COD_CAMA	" to "COD_CAMA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121741','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40363171805788175
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("OPERACION" VARCHAR2(50))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121750','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40363327773740556
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LDESPERTAR_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LDESPERTAR'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ENTRADA,'||wwv_flow.LF||
'        H_ENTRADA,'||wwv_flow.LF||
'        F_SALIDA,'||wwv_flow.LF||
'        H_SALIDA,'||wwv_flow.LF||
'        NUHSA,'||wwv_flow.LF||
'        COD_INTERVENCION,'||wwv_flow.LF||
'        COD_CAMA,'||wwv_flow.LF||
'        COD_TINTERVENCION,'||wwv_flow.LF||
'        COD_UF,'||wwv_flow.LF||
'        CPERSONAL,'||wwv_flow.LF||
'        COD_TANESTESIA'||
','||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LDESPERTAR_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.LDESPERTAR_PK,'||wwv_flow.LF||
'        ''REA_LDESPERTAR'','||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.NUHSA,'||wwv_flow.LF||
'        :NEW.COD_INTERVENCION,'||wwv_flow.LF||
'        :NEW.COD_CAMA,'||wwv_flow.LF||
'        :NEW.COD_TINTERVENCION,'||wwv_flow.LF||
'        :NEW.COD_UF,'||wwv_flow.LF||
'        :NEW.CPERSONAL,'||wwv_flow.LF||
'        :NEW.COD_TANESTESIA,'||wwv_flow.LF||
' '||
'       ''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121758','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40363464189728409
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LDESPERTAR_UPDATEDELETE" '||wwv_flow.LF||
'BEFORE DELETE OR UPDATE ON REA_LDESPERTAR'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'DECLARE'||wwv_flow.LF||
'    ls_operacion VARCHAR2(10);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'    IF INSERTING THEN'||wwv_flow.LF||
'       ls_operacion := ''INSERCION'';'||wwv_flow.LF||
'    ELSIF UPDATING THEN'||wwv_flow.LF||
'       ls_operacion := ''ACTUALIZACION'';'||wwv_flow.LF||
'    ELSIF DELETING THEN'||wwv_flow.LF||
'       ls_operacion := ''BORRADO'';'||wwv_flow.LF||
'    END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        I'||
'D,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ENTRADA,'||wwv_flow.LF||
'        H_ENTRADA,'||wwv_flow.LF||
'        F_SALIDA,'||wwv_flow.LF||
'        H_SALIDA,'||wwv_flow.LF||
'        NUHSA,'||wwv_flow.LF||
'        COD_INTERVENCION,'||wwv_flow.LF||
'        COD_CAMA,'||wwv_flow.LF||
'        COD_TINTERVENCION,'||wwv_flow.LF||
'        COD_UF,'||wwv_flow.LF||
'        CPERSONAL,'||wwv_flow.LF||
'        COD_TANESTESIA,'||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :OLD.LREA_PK,'||wwv_flow.LF||
'        ''REA_LREA'','||wwv_flow.LF||
'        :OLD.F_ENTRADA,'||wwv_flow.LF||
'        :OLD.H_ENTR'||
'ADA,'||wwv_flow.LF||
'        :OLD.F_SALIDA,'||wwv_flow.LF||
'        :OLD.H_SALIDA,'||wwv_flow.LF||
'        :OLD.NUHSA,'||wwv_flow.LF||
'        :OLD.COD_INTERVENCION,'||wwv_flow.LF||
'        :OLD.COD_CAMA,'||wwv_flow.LF||
'        :OLD.COD_TINTERVENCION,'||wwv_flow.LF||
'        :OLD.COD_UF,'||wwv_flow.LF||
'        :OLD.CPERSONAL,'||wwv_flow.LF||
'        :OLD.COD_TANESTESIA,'||wwv_flow.LF||
'        ls_operacion'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121800','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40363532038714774
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("LDRET" NUMBER(12,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121802','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40363644771639160
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("COD_TVIACENTRAL" VARCHAR2(6))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121815','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40363728132636167
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("OBSERVACIONES" VARCHAR2(3500))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121815','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40363833548590661
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LVIACENTRAL_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LVIACENTRAL'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA, '||wwv_flow.LF||
'        F_ENTRADA, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        F_SALIDA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_CAMA, '||wwv_flow.LF||
'        COD_TVIACENTRAL, '||wwv_flow.LF||
'        COD_TANESTESIA, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSER'||
'VACIONES,'||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.LVIACENTRAL_PK,'||wwv_flow.LF||
'        ''REA_LDESPERTAR'','||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.NUHSA, '||wwv_flow.LF||
'        :NEW.COD_CAMA, '||wwv_flow.LF||
'        :NEW.COD_TVIACENTRAL, '||wwv_flow.LF||
'        :NEW.COD_TANESTESIA, '||wwv_flow.LF||
'        :NEW.COD_UF, '||wwv_flow.LF||
'        :NEW.CPERSONAL, '||wwv_flow.LF||
'        :NEW.OBSERVACIONES'||
''||wwv_flow.LF||
'        ''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121823','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40362835737889303
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LREA_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LREA'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ENTRADA,'||wwv_flow.LF||
'        H_ENTRADA,'||wwv_flow.LF||
'        F_SALIDA,'||wwv_flow.LF||
'        H_SALIDA,'||wwv_flow.LF||
'        NUHSA,'||wwv_flow.LF||
'        COD_INTERVENCION,'||wwv_flow.LF||
'        COD_CAMA,'||wwv_flow.LF||
'        COD_TINTERVENCION,'||wwv_flow.LF||
'        COD_UF,'||wwv_flow.LF||
'        CPERSONAL,'||wwv_flow.LF||
'        COD_TANESTESIA'||wwv_flow.LF||
'    ) VALUE'||
'S ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.LREA_PK,'||wwv_flow.LF||
'        ''REA_LREA'','||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.NUHSA,'||wwv_flow.LF||
'        :NEW.COD_INTERVENCION,'||wwv_flow.LF||
'        :NEW.COD_CAMA,'||wwv_flow.LF||
'        :NEW.COD_TINTERVENCION,'||wwv_flow.LF||
'        :NEW.COD_UF,'||wwv_flow.LF||
'        :NEW.CPERSONAL,'||wwv_flow.LF||
'        :NEW.COD_TANESTESIA'||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121733','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40363246396744585
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LDESPERTAR_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LDESPERTAR'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA,'||wwv_flow.LF||
'        F_ENTRADA,'||wwv_flow.LF||
'        H_ENTRADA,'||wwv_flow.LF||
'        F_SALIDA,'||wwv_flow.LF||
'        H_SALIDA,'||wwv_flow.LF||
'        NUHSA,'||wwv_flow.LF||
'        COD_INTERVENCION,'||wwv_flow.LF||
'        COD_CAMA,'||wwv_flow.LF||
'        COD_TINTERVENCION,'||wwv_flow.LF||
'        COD_UF,'||wwv_flow.LF||
'        CPERSONAL,'||wwv_flow.LF||
'        COD_TANESTESIA'||
','||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LDESPERTAR_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.LDESPERTAR_PK,'||wwv_flow.LF||
'        ''REA_LDESPERTAR'','||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.NUHSA,'||wwv_flow.LF||
'        :NEW.COD_INTERVENCION,'||wwv_flow.LF||
'        :NEW.COD_CAMA,'||wwv_flow.LF||
'        :NEW.COD_TINTERVENCION,'||wwv_flow.LF||
'        :NEW.COD_UF,'||wwv_flow.LF||
'        :NEW.CPERSONAL,'||wwv_flow.LF||
'        :NEW.COD_TANESTESIA,'||wwv_flow.LF||
' '||
'       ''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
'END;'||wwv_flow.LF||
''||wwv_flow.LF||
'/'||wwv_flow.LF||
'ALTER TRIGGER  "REA_LDESPERTAR_INSERT" ENABLE'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121757','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40363910964588838
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LVIACENTRAL_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LVIACENTRAL'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA, '||wwv_flow.LF||
'        F_ENTRADA, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        F_SALIDA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_CAMA, '||wwv_flow.LF||
'        COD_TVIACENTRAL, '||wwv_flow.LF||
'        COD_TANESTESIA, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSER'||
'VACIONES,'||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.LVIACENTRAL_PK,'||wwv_flow.LF||
'        ''REA_LDESPERTAR'','||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.NUHSA, '||wwv_flow.LF||
'        :NEW.COD_CAMA, '||wwv_flow.LF||
'        :NEW.COD_TVIACENTRAL, '||wwv_flow.LF||
'        :NEW.COD_TANESTESIA, '||wwv_flow.LF||
'        :NEW.COD_UF, '||wwv_flow.LF||
'        :NEW.CPERSONAL, '||wwv_flow.LF||
'        :NEW.OBSERVACIONES'||
','||wwv_flow.LF||
'        ''INSERCION'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121823','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 40364006272588119
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE TRIGGER  "REA_LVIACENTRAL_INSERT" '||wwv_flow.LF||
'AFTER INSERT ON REA_LVIACENTRAL'||wwv_flow.LF||
'FOR EACH ROW'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    INSERT INTO REA_LOG ('||wwv_flow.LF||
'        ID,'||wwv_flow.LF||
'        ID_REA,'||wwv_flow.LF||
'        TABLA, '||wwv_flow.LF||
'        F_ENTRADA, '||wwv_flow.LF||
'        H_ENTRADA, '||wwv_flow.LF||
'        F_SALIDA, '||wwv_flow.LF||
'        H_SALIDA, '||wwv_flow.LF||
'        NUHSA, '||wwv_flow.LF||
'        COD_CAMA, '||wwv_flow.LF||
'        COD_TVIACENTRAL, '||wwv_flow.LF||
'        COD_TANESTESIA, '||wwv_flow.LF||
'        COD_UF, '||wwv_flow.LF||
'        CPERSONAL, '||wwv_flow.LF||
'        OBSER'||
'VACIONES,'||wwv_flow.LF||
'        OPERACION'||wwv_flow.LF||
'    ) VALUES ('||wwv_flow.LF||
'        REA_LOG_SEQ.NEXTVAL,'||wwv_flow.LF||
'        :NEW.LVIACENTRAL_PK,'||wwv_flow.LF||
'        ''REA_LDESPERTAR'','||wwv_flow.LF||
'        :NEW.F_ENTRADA,'||wwv_flow.LF||
'        :NEW.H_ENTRADA,'||wwv_flow.LF||
'        :NEW.F_SALIDA,'||wwv_flow.LF||
'        :NEW.H_SALIDA,'||wwv_flow.LF||
'        :NEW.NUHSA, '||wwv_flow.LF||
'        :NEW.COD_CAMA, '||wwv_flow.LF||
'        :NEW.COD_TVIACENTRAL, '||wwv_flow.LF||
'        :NEW.COD_TANESTESIA, '||wwv_flow.LF||
'        :NEW.COD_UF, '||wwv_flow.LF||
'        :NEW.CPERSONAL, '||wwv_flow.LF||
'        :NEW.OBSERVACIONES'||
','||wwv_flow.LF||
'        ''INSERCION'''||wwv_flow.LF||
'    );'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405121823','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41782865272550567
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    APPLICATION_ID AS "Application ID",'||wwv_flow.LF||
'    LIST_NAME AS "Menu Name",'||wwv_flow.LF||
'    ENTRY_TEXT AS "Option Name",'||wwv_flow.LF||
'    ENTRY_TARGET AS "URL"'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
'WHERE'||wwv_flow.LF||
'    APPLICATION_ID =   129-- Filtra por la aplicación actual'||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'    LIST_NAME, ENTRY_TEXT;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271936','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41783560913543282
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    *'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
'WHERE'||wwv_flow.LF||
'    APPLICATION_ID =   129-- Filtra por la aplicación actual'||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'    LIST_NAME, ENTRY_TEXT;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271938','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41783626292540513
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    *'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'    LIST_NAME, ENTRY_TEXT;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271938','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41783939735511085
 ,p_command => 
'select nivel as level_value'||wwv_flow.LF||
', "NOMBRE" as label_value'||wwv_flow.LF||
', ''f?p=&APP_ID.:''|| TARGET ||'':''||||''::::'' as target_value'||wwv_flow.LF||
', ''NO'' as is_current'||wwv_flow.LF||
', "ICONO" as image_value'||wwv_flow.LF||
', null as image_attr_value'||wwv_flow.LF||
', null as image_alt_value'||wwv_flow.LF||
'from     APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271943','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41784076060510490
 ,p_command => 
'select nivel as level_value'||wwv_flow.LF||
', "NOMBRE" as label_value'||wwv_flow.LF||
', ''f?p=&APP_ID.:''|| TARGET ||'':''||''''||''::::'' as target_value'||wwv_flow.LF||
', ''NO'' as is_current'||wwv_flow.LF||
', "ICONO" as image_value'||wwv_flow.LF||
', null as image_attr_value'||wwv_flow.LF||
', null as image_alt_value'||wwv_flow.LF||
'from     APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271943','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41784123826506595
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    APPLICATION_ID AS "Application ID",'||wwv_flow.LF||
'    LIST_NAME AS "Menu Name",'||wwv_flow.LF||
'    ENTRY_TEXT AS "Option Name",'||wwv_flow.LF||
'    ENTRY_TARGET AS "URL"'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
'WHERE'||wwv_flow.LF||
'    APPLICATION_ID =   129-- Filtra por la aplicación actual'||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'    LIST_NAME, ENTRY_TEXT;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271944','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41784262111481886
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    APPLICATION_ID AS "Application ID",'||wwv_flow.LF||
'    LIST_NAME AS "Menu Name",'||wwv_flow.LF||
'    ENTRY_TEXT AS "Option Name",'||wwv_flow.LF||
'    ENTRY_TARGET AS "URL"'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
'WHERE'||wwv_flow.LF||
'    APPLICATION_ID =   129-- Filtra por la aplicación actual'||wwv_flow.LF||
'    and LIST_NAME = ''Desktop Navigation Bar'''||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'    LIST_NAME, ENTRY_TEXT;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271948','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41784342413480513
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    APPLICATION_ID AS "Application ID",'||wwv_flow.LF||
'    LIST_NAME AS "Menu Name",'||wwv_flow.LF||
'    ENTRY_TEXT AS "Option Name",'||wwv_flow.LF||
'    ENTRY_TARGET AS "URL",'||wwv_flow.LF||
'    *'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
'WHERE'||wwv_flow.LF||
'    APPLICATION_ID =   129-- Filtra por la aplicación actual'||wwv_flow.LF||
'    and LIST_NAME = ''Desktop Navigation Bar'''||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'    LIST_NAME, ENTRY_TEXT;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271948','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41784465742479714
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    APPLICATION_ID AS "Application ID",'||wwv_flow.LF||
'    LIST_NAME AS "Menu Name",'||wwv_flow.LF||
'    ENTRY_TEXT AS "Option Name",'||wwv_flow.LF||
'    ENTRY_TARGET AS "URL"'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
'WHERE'||wwv_flow.LF||
'    APPLICATION_ID =   129-- Filtra por la aplicación actual'||wwv_flow.LF||
'    and LIST_NAME = ''Desktop Navigation Bar'''||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'    LIST_NAME, ENTRY_TEXT;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271948','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41784608738477620
 ,p_command => 
'SELECT '||wwv_flow.LF||
'    *'||wwv_flow.LF||
'FROM '||wwv_flow.LF||
'    APEX_APPLICATION_LIST_ENTRIES'||wwv_flow.LF||
'WHERE'||wwv_flow.LF||
'    APPLICATION_ID =   129-- Filtra por la aplicación actual'||wwv_flow.LF||
'    and LIST_NAME = ''Desktop Navigation Bar'''||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'    LIST_NAME, ENTRY_TEXT;'||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405271949','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41826801536692179
 ,p_command => 
'SELECT * FROM SM_PACIENTES ;'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405280906','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41940242435306633
 ,p_command => 
'SELECT * FROM SM_PACIENTES'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405291357','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42050565661455536
 ,p_command => 
'alter table "REA_LVIACENTRAL" modify'||wwv_flow.LF||
'("COD_TVIACENTRAL" NUMBER(12,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405300612','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42221101890907191
 ,p_command => 
'alter table "REA_LADMTRATAMIENTO" add'||wwv_flow.LF||
'("F_SALIDA" DATE)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405302137','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42396014306813347
 ,p_command => 
'select   null,'||wwv_flow.LF||
'        entry_text,'||wwv_flow.LF||
'        entry_target,'||wwv_flow.LF||
'        ''YES'' as is_current,'||wwv_flow.LF||
'        NVL (entry_image, entry_attribute_01) as LOGO'||wwv_flow.LF||
'from apex_application_list_entries'||wwv_flow.LF||
'where application_id = 129 and'||wwv_flow.LF||
'        list_name  = ''Desktop Navigation Menu'''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405310859','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41497988743211498
 ,p_command => 
'select ope_mod_uf.unidad COD_UF,'||wwv_flow.LF||
'       uf.uf_nombre DES_UF,'||wwv_flow.LF||
'       ope_mod_uf.operador COD_OPE,'||wwv_flow.LF||
'       ope.ope_user COD_USU,'||wwv_flow.LF||
'       UPPER(personas.PER_NOMBRE)||'' ''||UPPER(PERSONAS.PER_APELLIDO1)||'' ''||UPPER(PERSONAS.PER_APELLIDO2) NOMBRE_USU'||wwv_flow.LF||
'from rep_pro_mac.operadorunidadfuncional@DBLINK_OPGRE40_OPERACIONALES ope_mod_uf,'||wwv_flow.LF||
'     rep_pro_mac.operador@DBLINK_OPGRE40_OPERACIONALES ope,'||wwv_flow.LF||
'     rep_pro_ma'||
'c.personas@DBLINK_OPGRE40_OPERACIONALES personas,'||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, '||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'where ope_mod_uf.modulo = 338 '||wwv_flow.LF||
'and (ope_mod_uf.perfil like ''09'' or ope_mod_uf.perfil like ''07'' or ope_mod_uf.perfil like ''10'')'||wwv_flow.LF||
'and ope_mod_uf.operador = ope.ope_per_codigo'||wwv_flow.LF||
'and ope_mod_uf.operador = personas.per_'||
'codigo'||wwv_flow.LF||
'and ope_mod_uf.unidad = uc.uc_uf_codigo'||wwv_flow.LF||
'and UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_EST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'';'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405242020','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41696592352261194
 ,p_command => 
'alter table "REA_LOG" add'||wwv_flow.LF||
'("CPERSONAL" VARCHAR2(36))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41763627007057195
 ,p_command => 
'select LDESPERTAR_PK,'||wwv_flow.LF||
'       F_ENTRADA,'||wwv_flow.LF||
'       F_SALIDA,'||wwv_flow.LF||
'       NUHSA,'||wwv_flow.LF||
'       LDRET,'||wwv_flow.LF||
'       COD_INTERVENCION,'||wwv_flow.LF||
'       COD_CAMA,'||wwv_flow.LF||
'       COD_TINTERVENCION,'||wwv_flow.LF||
'       COD_UF,'||wwv_flow.LF||
'       COD_TANESTESIA,'||wwv_flow.LF||
'       BORRADO,'||wwv_flow.LF||
'       CPERSONAL'||wwv_flow.LF||
'  from REA_LDESPERTAR'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405270705','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42396110693803782
 ,p_command => 
'select   null,'||wwv_flow.LF||
'        entry_text,'||wwv_flow.LF||
'        entry_target,'||wwv_flow.LF||
'        ''YES'' as is_current,'||wwv_flow.LF||
'        NVL (entry_image, entry_attribute_01) as LOGO,'||wwv_flow.LF||
'        SUBSTR (entry_target, INSTR (entry_target, '':'', 1, 1)+1,INSTR (entry_target, '':'', 1, 2) - instr (entry_target, '':'', 1, 1) -1 ) as PAGE_ID'||wwv_flow.LF||
'from apex_application_list_entries'||wwv_flow.LF||
'where application_id = 129 and'||wwv_flow.LF||
'        list_name  = ''Desktop Navigation Menu'''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405310901','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42685222410828369
 ,p_command => 
'select * from rea_ldespertar'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406021057','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42685380568825447
 ,p_command => 
'select * '||wwv_flow.LF||
'from rea_ldespertar'||wwv_flow.LF||
'where (rea_ldespertar.borrado <> -1 or rea_ldespertar is null)'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406021057','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42685414865823656
 ,p_command => 
'select * '||wwv_flow.LF||
'from rea_ldespertar'||wwv_flow.LF||
'where (rea_ldespertar.borrado <> -1 or rea_ldespertar.borrado is null)'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406021058','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42685530943819076
 ,p_command => 
'select * '||wwv_flow.LF||
'from rea_ldespertar, vm_unidadfuncional'||wwv_flow.LF||
'where (rea_ldespertar.borrado <> -1 or rea_ldespertar.borrado is null)'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406021058','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42685619279816557
 ,p_command => 
'select * '||wwv_flow.LF||
'from rea_ldespertar, vm_unidadfuncional'||wwv_flow.LF||
'where (rea_ldespertar.borrado <> -1 or rea_ldespertar.borrado is null) and'||wwv_flow.LF||
'    rea_ldespertar.cod_uf = vm_unidadfuncional.UF_CODIGO'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406021059','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42685715140815405
 ,p_command => 
'select * '||wwv_flow.LF||
'from rea_ldespertar, vm_unidadfuncional'||wwv_flow.LF||
'where (rea_ldespertar.borrado <> -1 or rea_ldespertar.borrado is null) and'||wwv_flow.LF||
'    rea_ldespertar.cod_uf = vm_unidadfuncional.UF_CODIGO (+)'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406021059','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42685888095814427
 ,p_command => 
'select * '||wwv_flow.LF||
'from rea_ldespertar, vm_unidadfuncional'||wwv_flow.LF||
'where (rea_ldespertar.borrado <> -1 or rea_ldespertar.borrado is null) and'||wwv_flow.LF||
'    rea_ldespertar.cod_uf (+) = vm_unidadfuncional.UF_CODIGO '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406021059','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42685954587812245
 ,p_command => 
'select * '||wwv_flow.LF||
'from rea_ldespertar, vm_unidadfuncional'||wwv_flow.LF||
'where (rea_ldespertar.borrado <> -1 or rea_ldespertar.borrado is null) and'||wwv_flow.LF||
'    rea_ldespertar.cod_uf  = vm_unidadfuncional.UF_CODIGO (+)'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406021100','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42686020766808133
 ,p_command => 
'select ldret, vm_unidadfuncional.UF_NOMBRE'||wwv_flow.LF||
'from rea_ldespertar, vm_unidadfuncional'||wwv_flow.LF||
'where (rea_ldespertar.borrado <> -1 or rea_ldespertar.borrado is null) and'||wwv_flow.LF||
'    rea_ldespertar.cod_uf  = vm_unidadfuncional.UF_CODIGO (+)'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406021100','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42394967448896167
 ,p_command => 
'select   null,'||wwv_flow.LF||
'        entry_text,'||wwv_flow.LF||
'        entry_target'||wwv_flow.LF||
'from apex_aplication_list_entries     '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405310846','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42395097843894639
 ,p_command => 
'select   null,'||wwv_flow.LF||
'        entry_text,'||wwv_flow.LF||
'        entry_target'||wwv_flow.LF||
'from apex_application_list_entries     '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405310846','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42395103026875121
 ,p_command => 
'select   null,'||wwv_flow.LF||
'        entry_text,'||wwv_flow.LF||
'        entry_target'||wwv_flow.LF||
'        ''YES'' as is_current'||wwv_flow.LF||
'from apex_application_list_entries     '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405310849','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42395242113872905
 ,p_command => 
'select   null,'||wwv_flow.LF||
'        entry_text,'||wwv_flow.LF||
'        entry_target,'||wwv_flow.LF||
'        ''YES'' as is_current'||wwv_flow.LF||
'from apex_application_list_entries'||wwv_flow.LF||
'where application_id = 129'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405310849','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42395832465826611
 ,p_command => 
'select   null,'||wwv_flow.LF||
'        entry_text,'||wwv_flow.LF||
'        entry_target,'||wwv_flow.LF||
'        ''YES'' as is_current'||wwv_flow.LF||
'from apex_application_list_entries'||wwv_flow.LF||
'where application_id = 129 and'||wwv_flow.LF||
'        list_name  = ''Desktop Navigation Menu'''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405310857','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42395935580814285
 ,p_command => 
'select   null,'||wwv_flow.LF||
'        entry_text,'||wwv_flow.LF||
'        entry_target,'||wwv_flow.LF||
'        ''YES'' as is_current,'||wwv_flow.LF||
'        NVL (entry_image, entry_atribute_01) as LOGO'||wwv_flow.LF||
'from apex_application_list_entries'||wwv_flow.LF||
'where application_id = 129 and'||wwv_flow.LF||
'        list_name  = ''Desktop Navigation Menu'''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405310859','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42744418049095941
 ,p_command => 
'alter table "REA_LREA" modify'||wwv_flow.LF||
'("COD_UF_ID" VARCHAR2(6))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406031932','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 43143760831193328
 ,p_command => 
'select * from(select grouping_id( "COD_UF_ID","APX$LOVR6")"APX$GRPID","COD_UF_ID" "APX$FLTV2",count(*)"APX$FLTC2","APX$LOVR6" "APX$FLTV3",count(*)"APX$FLTC3",count(*)APX$ALLC,row_number()over(partition by grouping_id("COD_UF_ID","APX$LOVR6")order by(null))"APX$ITSEQ"'||wwv_flow.LF||
'from((select i.*'||wwv_flow.LF||
' from (select "NUHSA","COD_INTERVENCION","COD_CAMA","COD_TINTERVENCION","COD_TANESTESIA","CPERSONAL","APX$LOVR6","C'||
'OD_UF_ID"'||wwv_flow.LF||
'from ((select /*+ qb_name(apex$inner) */d."NUHSA",d."COD_INTERVENCION",d."COD_CAMA",d."COD_TINTERVENCION",d."COD_TANESTESIA",nvl( "APX$LOV6"."NOMBRE_USU", d."CPERSONAL") "CPERSONAL","APX$LOV6"."NOMBRE_USU" "APX$LOV6_DISPLAY","APX$LOV6"."COD_USU" "APX$LOVR6",d."COD_UF_ID" from (select LREA_PK,'||wwv_flow.LF||
'       F_ENTRADA,'||wwv_flow.LF||
'       F_SALIDA,'||wwv_flow.LF||
'       NUHSA,'||wwv_flow.LF||
'       COD_INTERVENCION,'||wwv_flow.LF||
'       COD_CAMA,'||wwv_flow.LF||
'     '||
'  COD_TINTERVENCION,'||wwv_flow.LF||
'       COD_TANESTESIA,'||wwv_flow.LF||
'       CPERSONAL,'||wwv_flow.LF||
'       BORRADO,'||wwv_flow.LF||
'       COD_UF_ID'||wwv_flow.LF||
'  from REA_LREA'||wwv_flow.LF||
' where (BORRADO IS NULL OR BORRADO <> -1) '||wwv_flow.LF||
'    AND (:P32_FECHAINGRESODESDE IS NULL OR F_ENTRADA >= :P32_FECHAINGRESODESDE)'||wwv_flow.LF||
'    AND (:P32_FECHAINGRESOHASTA IS NULL OR F_ENTRADA <= :P32_FECHAINGRESOHASTA)'||wwv_flow.LF||
') d,'||wwv_flow.LF||
') "APX$LOV6" where "APX$LOV6"."COD_USU"(+) = d."CPERSONAL"'||wwv_flow.LF||
' )) i '||wwv_flow.LF||
') i where 1=1 '||wwv_flow.LF||
''||
') )group by grouping sets ("COD_UF_ID","APX$LOVR6",())'||wwv_flow.LF||
')where "APX$ITSEQ"<=5001'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406091943','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41697022898246997
 ,p_command => 
'alter table "REA_LADMTRATAMIENTO" drop column'||wwv_flow.LF||
'"CPERSONAL"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41769317788488965
 ,p_command => 
'create or replace view "VM_UF_FEA_ESTACIONCLINICA" as'||wwv_flow.LF||
'select ope_mod_uf.unidad COD_UF,'||wwv_flow.LF||
'       uf.uf_nombre DES_UF,'||wwv_flow.LF||
'       ope_mod_uf.operador COD_OPE,'||wwv_flow.LF||
'       ope.ope_user COD_USU,'||wwv_flow.LF||
'       UPPER(personas.PER_NOMBRE)||'' ''||UPPER(PERSONAS.PER_APELLIDO1)||'' ''||UPPER(PERSONAS.PER_APELLIDO2) NOMBRE_USU'||wwv_flow.LF||
'from rep_pro_mac.operadorunidadfuncional@DBLINK_OPGRE40_OPERACIONALES ope_mod_uf,'||wwv_flow.LF||
'     rep_pro_mac.oper'||
'ador@DBLINK_OPGRE40_OPERACIONALES ope,'||wwv_flow.LF||
'     rep_pro_mac.personas@DBLINK_OPGRE40_OPERACIONALES personas,'||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, '||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'where ope_mod_uf.modulo = 338 '||wwv_flow.LF||
'and (ope_mod_uf.perfil like ''09'' or ope_mod_uf.perfil like ''07'' or ope_mod_uf.perfil like ''10'')'||wwv_flow.LF||
'and ope_mod_uf.operador = ope.'||
'ope_per_codigo'||wwv_flow.LF||
'and ope_mod_uf.operador = personas.per_codigo'||wwv_flow.LF||
'and ope_mod_uf.unidad = uc.uc_uf_codigo'||wwv_flow.LF||
'and UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_EST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'''||wwv_flow.LF||
'/'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405270840','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41769453256484838
 ,p_command => 
'select ope_mod_uf.unidad COD_UF,'||wwv_flow.LF||
'       uf.uf_nombre DES_UF,'||wwv_flow.LF||
'       ope_mod_uf.operador COD_OPE,'||wwv_flow.LF||
'       ope.ope_user COD_USU,'||wwv_flow.LF||
'       UPPER(personas.PER_NOMBRE)||'' ''||UPPER(PERSONAS.PER_APELLIDO1)||'' ''||UPPER(PERSONAS.PER_APELLIDO2) NOMBRE_USU'||wwv_flow.LF||
'from rep_pro_mac.operadorunidadfuncional@DBLINK_OPGRE40_OPERACIONALES ope_mod_uf,'||wwv_flow.LF||
'     rep_pro_mac.operador@DBLINK_OPGRE40_OPERACIONALES ope,'||wwv_flow.LF||
'     rep_pro_ma'||
'c.personas@DBLINK_OPGRE40_OPERACIONALES personas,'||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, '||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'where ope_mod_uf.modulo = 338 '||wwv_flow.LF||
'and (ope_mod_uf.perfil like ''09'' or ope_mod_uf.perfil like ''07'' or ope_mod_uf.perfil like ''10'')'||wwv_flow.LF||
'and ope_mod_uf.operador = ope.ope_per_codigo'||wwv_flow.LF||
'and ope_mod_uf.operador = personas.per_'||
'codigo'||wwv_flow.LF||
'and ope_mod_uf.unidad = uc.uc_uf_codigo'||wwv_flow.LF||
'and UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_EST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'''||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405270841','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41769518238483932
 ,p_command => 
'create or replace view "VM_UF_FEA_ESTACIONCLINICA" as'||wwv_flow.LF||
'select ope_mod_uf.unidad COD_UF,'||wwv_flow.LF||
'       uf.uf_nombre DES_UF,'||wwv_flow.LF||
'       ope_mod_uf.operador COD_OPE,'||wwv_flow.LF||
'       ope.ope_user COD_USU,'||wwv_flow.LF||
'       UPPER(personas.PER_NOMBRE)||'' ''||UPPER(PERSONAS.PER_APELLIDO1)||'' ''||UPPER(PERSONAS.PER_APELLIDO2) NOMBRE_USU'||wwv_flow.LF||
'from rep_pro_mac.operadorunidadfuncional@DBLINK_OPGRE40_OPERACIONALES ope_mod_uf,'||wwv_flow.LF||
'     rep_pro_mac.oper'||
'ador@DBLINK_OPGRE40_OPERACIONALES ope,'||wwv_flow.LF||
'     rep_pro_mac.personas@DBLINK_OPGRE40_OPERACIONALES personas,'||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, '||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'where ope_mod_uf.modulo = 338 '||wwv_flow.LF||
'and (ope_mod_uf.perfil like ''09'' or ope_mod_uf.perfil like ''07'' or ope_mod_uf.perfil like ''10'')'||wwv_flow.LF||
'and ope_mod_uf.operador = ope.'||
'ope_per_codigo'||wwv_flow.LF||
'and ope_mod_uf.operador = personas.per_codigo'||wwv_flow.LF||
'and ope_mod_uf.unidad = uc.uc_uf_codigo'||wwv_flow.LF||
'and UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_EST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'''||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405270841','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41769649062479122
 ,p_command => 
'drop VIEW "VM_FEA_ESTACIONCLINICA"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405270842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41493666884258501
 ,p_command => 
'create or replace view "VM_FEA_ESTACIONCLINICA" as'||wwv_flow.LF||
'select ope_mod_uf.unidad,'||wwv_flow.LF||
'       uf.uf_nombre,'||wwv_flow.LF||
'       ope_mod_uf.operador ,'||wwv_flow.LF||
'       ope.ope_user,'||wwv_flow.LF||
'       UPPER(personas.PER_NOMBRE)||'' ''||UPPER(PERSONAS.PER_APELLIDO1)||'' ''||UPPER(PERSONAS.PER_APELLIDO2)'||wwv_flow.LF||
'from rep_pro_mac.operadorunidadfuncional@DBLINK_OPGRE40_OPERACIONALES ope_mod_uf,'||wwv_flow.LF||
'     rep_pro_mac.operador@DBLINK_OPGRE40_OPERACIONALES ope,'||wwv_flow.LF||
'    '||
' rep_pro_mac.personas@DBLINK_OPGRE40_OPERACIONALES personas,'||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, '||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'where ope_mod_uf.modulo = 338 '||wwv_flow.LF||
'and (ope_mod_uf.perfil like ''09'' or ope_mod_uf.perfil like ''07'' or ope_mod_uf.perfil like ''10'')'||wwv_flow.LF||
'and ope_mod_uf.operador = ope.ope_per_codigo'||wwv_flow.LF||
'and ope_mod_uf.operador = pe'||
'rsonas.per_codigo'||wwv_flow.LF||
'and ope_mod_uf.unidad = uc.uc_uf_codigo'||wwv_flow.LF||
'and UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_EST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'''||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405242012','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41493989781253546
 ,p_command => 
'select ope_mod_uf.unidad,'||wwv_flow.LF||
'       uf.uf_nombre,'||wwv_flow.LF||
'       ope_mod_uf.operador ,'||wwv_flow.LF||
'       ope.ope_user,'||wwv_flow.LF||
'       UPPER(personas.PER_NOMBRE)||'' ''||UPPER(PERSONAS.PER_APELLIDO1)||'' ''||UPPER(PERSONAS.PER_APELLIDO2)'||wwv_flow.LF||
'from rep_pro_mac.operadorunidadfuncional@DBLINK_OPGRE40_OPERACIONALES ope_mod_uf,'||wwv_flow.LF||
'     rep_pro_mac.operador@DBLINK_OPGRE40_OPERACIONALES ope,'||wwv_flow.LF||
'     rep_pro_mac.personas@DBLINK_OPGRE40_OPERACIONALES '||
'personas,'||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, '||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'where ope_mod_uf.modulo = 338 '||wwv_flow.LF||
'and (ope_mod_uf.perfil like ''09'' or ope_mod_uf.perfil like ''07'' or ope_mod_uf.perfil like ''10'')'||wwv_flow.LF||
'and ope_mod_uf.operador = ope.ope_per_codigo'||wwv_flow.LF||
'and ope_mod_uf.operador = personas.per_codigo'||wwv_flow.LF||
'and ope_mod_uf.unidad = uc.uc_uf_'||
'codigo'||wwv_flow.LF||
'and UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_EST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405242013','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41494240410251412
 ,p_command => 
'create or replace view "VM_FEA_ESTACIONCLINICA" as'||wwv_flow.LF||
'select ope_mod_uf.unidad,'||wwv_flow.LF||
'       uf.uf_nombre,'||wwv_flow.LF||
'       ope_mod_uf.operador ,'||wwv_flow.LF||
'       ope.ope_user,'||wwv_flow.LF||
'       UPPER(personas.PER_NOMBRE)||'' ''||UPPER(PERSONAS.PER_APELLIDO1)||'' ''||UPPER(PERSONAS.PER_APELLIDO2)'||wwv_flow.LF||
'from rep_pro_mac.operadorunidadfuncional@DBLINK_OPGRE40_OPERACIONALES ope_mod_uf,'||wwv_flow.LF||
'     rep_pro_mac.operador@DBLINK_OPGRE40_OPERACIONALES ope,'||wwv_flow.LF||
'    '||
' rep_pro_mac.personas@DBLINK_OPGRE40_OPERACIONALES personas,'||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, '||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'where ope_mod_uf.modulo = 338 '||wwv_flow.LF||
'and (ope_mod_uf.perfil like ''09'' or ope_mod_uf.perfil like ''07'' or ope_mod_uf.perfil like ''10'')'||wwv_flow.LF||
'and ope_mod_uf.operador = ope.ope_per_codigo'||wwv_flow.LF||
'and ope_mod_uf.operador = pe'||
'rsonas.per_codigo'||wwv_flow.LF||
'and ope_mod_uf.unidad = uc.uc_uf_codigo'||wwv_flow.LF||
'and UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_EST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'''||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405242013','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41691562763414057
 ,p_command => 
'SELECT * FROM SM_PROFESIONALES'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261859','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41691806196409746
 ,p_command => 
'alter table "REA_LDESPERTAR" modify'||wwv_flow.LF||
'("LDESPERTAR_PK" VARCHAR2(12))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261900','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41946558851160087
 ,p_command => 
'alter table "REA_LADMTRATAMIENTO" add'||wwv_flow.LF||
'("BORRADO" NUMBER(1,0) DEFAULT 0)'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405291708','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41498113652208527
 ,p_command => 
'create or replace view "VM_FEA_ESTACIONCLINICA" as'||wwv_flow.LF||
'select ope_mod_uf.unidad COD_UF,'||wwv_flow.LF||
'       uf.uf_nombre DES_UF,'||wwv_flow.LF||
'       ope_mod_uf.operador COD_OPE,'||wwv_flow.LF||
'       ope.ope_user COD_USU,'||wwv_flow.LF||
'       UPPER(personas.PER_NOMBRE)||'' ''||UPPER(PERSONAS.PER_APELLIDO1)||'' ''||UPPER(PERSONAS.PER_APELLIDO2) NOMBRE_USU'||wwv_flow.LF||
'from rep_pro_mac.operadorunidadfuncional@DBLINK_OPGRE40_OPERACIONALES ope_mod_uf,'||wwv_flow.LF||
'     rep_pro_mac.operado'||
'r@DBLINK_OPGRE40_OPERACIONALES ope,'||wwv_flow.LF||
'     rep_pro_mac.personas@DBLINK_OPGRE40_OPERACIONALES personas,'||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, '||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'where ope_mod_uf.modulo = 338 '||wwv_flow.LF||
'and (ope_mod_uf.perfil like ''09'' or ope_mod_uf.perfil like ''07'' or ope_mod_uf.perfil like ''10'')'||wwv_flow.LF||
'and ope_mod_uf.operador = ope.ope'||
'_per_codigo'||wwv_flow.LF||
'and ope_mod_uf.operador = personas.per_codigo'||wwv_flow.LF||
'and ope_mod_uf.unidad = uc.uc_uf_codigo'||wwv_flow.LF||
'and UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_EST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'''||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405242020','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41693224766298873
 ,p_command => 
'alter table "REA_LDESPERTAR" add'||wwv_flow.LF||
'("CPERSONAL" VARCHAR2(10))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261918','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41693351712293153
 ,p_command => 
'alter table "REA_LDESPERTAR" drop column'||wwv_flow.LF||
'"CPERSONAL"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261919','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41693476869291616
 ,p_command => 
'alter table "REA_LDESPERTAR" add'||wwv_flow.LF||
'("CPERSONAL" VARCHAR2(36))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261920','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41696471061262581
 ,p_command => 
'alter table "REA_LOG" drop column'||wwv_flow.LF||
'"CPERSONAL"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261924','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41696651513260068
 ,p_command => 
'alter table "REA_LREA" drop column'||wwv_flow.LF||
'"CPERSONAL"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41696707456257757
 ,p_command => 
'alter table "REA_LREA" add'||wwv_flow.LF||
'("CPERSONAL" VARCHAR2(36))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41696889299256654
 ,p_command => 
'alter table "REA_LVIACENTRAL" drop column'||wwv_flow.LF||
'"CPERSONAL"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41696913812255162
 ,p_command => 
'alter table "REA_LVIACENTRAL" add'||wwv_flow.LF||
'("CPERSONAL" VARCHAR2(36))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41697155911245734
 ,p_command => 
'alter table "REA_LADMTRATAMIENTO" add'||wwv_flow.LF||
'("CPERSONAL" VARCHAR2(36))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405261927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41769733999475205
 ,p_command => 
' select distinct'||wwv_flow.LF||
'       ope_mod_uf.operador COD_OPE,'||wwv_flow.LF||
'       ope.ope_user COD_USU,'||wwv_flow.LF||
'       UPPER(personas.PER_NOMBRE)||'' ''||UPPER(PERSONAS.PER_APELLIDO1)||'' ''||UPPER(PERSONAS.PER_APELLIDO2) NOMBRE_USU'||wwv_flow.LF||
'from rep_pro_mac.operadorunidadfuncional@DBLINK_OPGRE40_OPERACIONALES ope_mod_uf,'||wwv_flow.LF||
'     rep_pro_mac.operador@DBLINK_OPGRE40_OPERACIONALES ope,'||wwv_flow.LF||
'     rep_pro_mac.personas@DBLINK_OPGRE40_OPERACIONALES pers'||
'onas,'||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, '||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'where ope_mod_uf.modulo = 338 '||wwv_flow.LF||
'and (ope_mod_uf.perfil like ''09'' or ope_mod_uf.perfil like ''07'' or ope_mod_uf.perfil like ''10'')'||wwv_flow.LF||
'and ope_mod_uf.operador = ope.ope_per_codigo'||wwv_flow.LF||
'and ope_mod_uf.operador = personas.per_codigo'||wwv_flow.LF||
'and ope_mod_uf.unidad = uc.uc_uf_codi'||
'go'||wwv_flow.LF||
'and UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_EST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'''||wwv_flow.LF||
';'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405270842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41946669581158530
 ,p_command => 
'alter table "REA_LREA" add'||wwv_flow.LF||
'("BORRADO" NUMBER(1,0) DEFAULT 0);'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405291708','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41946778301157437
 ,p_command => 
'alter table "REA_LVIACENTRAL" add'||wwv_flow.LF||
'("BORRADO" NUMBER(1,0) DEFAULT 0);'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405291709','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41957613846988464
 ,p_command => 
'alter table "REA_LREA" disable constraint'||wwv_flow.LF||
'"SYS_C0019759"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405291737','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42074656082914670
 ,p_command => 
'select * from SM_PACIENTES ;'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405301316','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42744579888090286
 ,p_command => 
'alter table "REA_LREA" modify'||wwv_flow.LF||
'("COD_UF_ID" VARCHAR2(6))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406031933','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 41769859178474469
 ,p_command => 
'create or replace view "VM_FEA_ESTACIONCLINICA" as'||wwv_flow.LF||
'select distinct'||wwv_flow.LF||
'       ope_mod_uf.operador COD_OPE,'||wwv_flow.LF||
'       ope.ope_user COD_USU,'||wwv_flow.LF||
'       UPPER(personas.PER_NOMBRE)||'' ''||UPPER(PERSONAS.PER_APELLIDO1)||'' ''||UPPER(PERSONAS.PER_APELLIDO2) NOMBRE_USU'||wwv_flow.LF||
'from rep_pro_mac.operadorunidadfuncional@DBLINK_OPGRE40_OPERACIONALES ope_mod_uf,'||wwv_flow.LF||
'     rep_pro_mac.operador@DBLINK_OPGRE40_OPERACIONALES ope,'||wwv_flow.LF||
'     rep_'||
'pro_mac.personas@DBLINK_OPGRE40_OPERACIONALES personas,'||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_CENTROS@DBLINK_OPGRE40_OPERACIONALES UC, '||wwv_flow.LF||
'     REP_PRO_EST.UNIDADES_FUNCIONALES@DBLINK_OPGRE40_OPERACIONALES UF '||wwv_flow.LF||
'where ope_mod_uf.modulo = 338 '||wwv_flow.LF||
'and (ope_mod_uf.perfil like ''09'' or ope_mod_uf.perfil like ''07'' or ope_mod_uf.perfil like ''10'')'||wwv_flow.LF||
'and ope_mod_uf.operador = ope.ope_per_codigo'||wwv_flow.LF||
'and ope_mod_uf.operador = persona'||
's.per_codigo'||wwv_flow.LF||
'and ope_mod_uf.unidad = uc.uc_uf_codigo'||wwv_flow.LF||
'and UC.UC_CAH_CODIGO = ''10015'' AND UC.UC_UF_CODIGO = UF.UF_CODIGO'||wwv_flow.LF||
'AND UF_ES_CODIGO IS NOT NULL AND UF_OPE_CODIGO <> ''ESTRUCTURA'''||wwv_flow.LF||
'AND UF_EST_ID <> ''UI'' AND UF_EST_ID <> ''UAA'' AND UF_EST_ID <> ''COM'''||wwv_flow.LF||
''||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202405270842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42744647114072854
 ,p_command => 
'alter table "REA_LREA" modify'||wwv_flow.LF||
'("COD_UF_ID" VARCHAR2(6))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406031936','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42744749339055570
 ,p_command => 
'alter table "REA_LREA" drop column'||wwv_flow.LF||
'"COD_UF_ID"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406031939','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42744837452052010
 ,p_command => 
'alter table "REA_LREA" add'||wwv_flow.LF||
'("COD_UF_ID" VARCHAR2(6))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406031940','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42898356776797540
 ,p_command => 
'select * from rea_log'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406061749','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42898475464796859
 ,p_command => 
'select * from rea_log order by id desc'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406061749','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42898681429763894
 ,p_command => 
'UPDATE REA_LREA SET BORRADO = 0 '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406061754','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42898790955758508
 ,p_command => 
'UPDATE REA_DESPERTAR SET BORRADO = 0 ;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT ;'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406061755','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42898846628757921
 ,p_command => 
'UPDATE REA_LDESPERTAR SET BORRADO = 0 ;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT ;'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406061755','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42898965525755606
 ,p_command => 
'UPDATE REA_LDESPERTAR SET BORRADO = 0 '||wwv_flow.LF||
'COMMIT '
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406061756','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42899061267754833
 ,p_command => 
'UPDATE REA_LDESPERTAR SET BORRADO = 0 '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406061756','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 42900714526221444
 ,p_command => 
'alter table "REA_LDESPERTAR" add'||wwv_flow.LF||
'("COD_TALTA" NUMBER(12,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406061925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 43143614182195588
 ,p_command => 
'select * from(select grouping_id( "COD_UF_ID","APX$LOVR6")"APX$GRPID","COD_UF_ID" "APX$FLTV2",count(*)"APX$FLTC2","APX$LOVR6" "APX$FLTV3",count(*)"APX$FLTC3",count(*)APX$ALLC,row_number()over(partition by grouping_id("COD_UF_ID","APX$LOVR6")order by(null))"APX$ITSEQ"'||wwv_flow.LF||
'from((select i.*'||wwv_flow.LF||
' from (select "NUHSA","COD_INTERVENCION","COD_CAMA","COD_TINTERVENCION","COD_TANESTESIA","CPERSONAL","APX$LOVR6","C'||
'OD_UF_ID"'||wwv_flow.LF||
'from ((select /*+ qb_name(apex$inner) */d."NUHSA",d."COD_INTERVENCION",d."COD_CAMA",d."COD_TINTERVENCION",d."COD_TANESTESIA",nvl( "APX$LOV6"."NOMBRE_USU", d."CPERSONAL") "CPERSONAL","APX$LOV6"."NOMBRE_USU" "APX$LOV6_DISPLAY","APX$LOV6"."COD_USU" "APX$LOVR6",d."COD_UF_ID" from (select LREA_PK,'||wwv_flow.LF||
'       F_ENTRADA,'||wwv_flow.LF||
'       F_SALIDA,'||wwv_flow.LF||
'       NUHSA,'||wwv_flow.LF||
'       COD_INTERVENCION,'||wwv_flow.LF||
'       COD_CAMA,'||wwv_flow.LF||
'     '||
'  COD_TINTERVENCION,'||wwv_flow.LF||
'       COD_TANESTESIA,'||wwv_flow.LF||
'       CPERSONAL,'||wwv_flow.LF||
'       BORRADO,'||wwv_flow.LF||
'       COD_UF_ID'||wwv_flow.LF||
'  from REA_LREA'||wwv_flow.LF||
' where (BORRADO IS NULL OR BORRADO <> -1) '||wwv_flow.LF||
'    AND (:P32_FECHAINGRESODESDE IS NULL OR F_ENTRADA >= :P32_FECHAINGRESODESDE)'||wwv_flow.LF||
'    AND (:P32_FECHAINGRESOHASTA IS NULL OR F_ENTRADA <= :P32_FECHAINGRESOHASTA)'||wwv_flow.LF||
') d,(select "NOMBRE_USU","COD_USU"'||wwv_flow.LF||
'from (select x.* from "VM_FEA_ESTACIONCLINICA" x '||wwv_flow.LF||
' '||
')'||wwv_flow.LF||
') "APX$LOV6" where "APX$LOV6"."COD_USU"(+) = d."CPERSONAL"'||wwv_flow.LF||
' )) i '||wwv_flow.LF||
') i where 1=1 '||wwv_flow.LF||
') )group by grouping sets ("COD_UF_ID","APX$LOVR6",())'||wwv_flow.LF||
')where "APX$ITSEQ"<=5001'
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406091942','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 43736160271844004
 ,p_command => 
'drop TABLE "REGISTRO_OXIGENO_REANIMACION"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'AGSN'
    ,p_created_on => to_date('202406171734','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'AGSN');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSNEG',
    p_auth_method => 'Application Express Accounts',
    p_app => 139,
    p_owner => 'AGSN',
    p_access_date => to_date('202406142253','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'APEX Auth',
    p_app => 115,
    p_owner => 'AGSN',
    p_access_date => to_date('202406142254','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406130908','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406130909','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406131204','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406131204','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406131308','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406131819','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406132101','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA62P',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406132102','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406132102','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406141803','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406141804','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406141922','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express Accounts',
    p_app => 139,
    p_owner => 'AGSN',
    p_access_date => to_date('202406142253','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'APEX Auth',
    p_app => 115,
    p_owner => 'AGSN',
    p_access_date => to_date('202406142254','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406151856','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406151903','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406151903','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406151903','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'APEX Auth',
    p_app => 132,
    p_owner => 'AGSN',
    p_access_date => to_date('202406151917','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406151944','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406162011','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406162143','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406162144','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406171733','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406130859','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express Accounts',
    p_app => 138,
    p_owner => 'AGSN',
    p_access_date => to_date('202406141920','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406131818','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406131820','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406131820','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406141917','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406151858','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406151902','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406171707','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406130856','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406131749','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406131750','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA62R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406132102','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406141803','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406141804','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406141804','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406151852','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406151859','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406151901','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406151903','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express Accounts',
    p_app => 139,
    p_owner => 'AGSN',
    p_access_date => to_date('202406151921','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406151937','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406161807','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406161818','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301414','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301902','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express',
    p_app => 137,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301903','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301905','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301916','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301931','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301931','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301939','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301939','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301941','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405310820','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405310844','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405310906','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405310930','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405311203','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405311203','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405311204','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405311749','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405311750','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express Accounts',
    p_app => 139,
    p_owner => 'AGSN',
    p_access_date => to_date('202405311805','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'adm_3_RUEBAS',
    p_app => 115,
    p_owner => 'AGSN',
    p_access_date => to_date('202405311908','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406061328','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406061720','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406081839','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406081841','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406081843','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406090949','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406090950','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406091301','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406091821','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406092258','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406092334','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406100127','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406100127','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406100127','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406100221','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406100922','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406100942','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406101848','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406101852','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406102032','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406102204','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406102208','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406110851','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406110856','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300441','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300456','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300456','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300457','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300457','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300532','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300533','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300540','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301926','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301946','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405302006','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405302145','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405311212','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express',
    p_app => 137,
    p_owner => 'AGSN',
    p_access_date => to_date('202405311905','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'adm_3_RUEBAS',
    p_app => 115,
    p_owner => 'AGSN',
    p_access_date => to_date('202405311908','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express Accounts',
    p_app => 138,
    p_owner => 'AGSN',
    p_access_date => to_date('202405312048','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405312115','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express Accounts',
    p_app => 138,
    p_owner => 'AGSN',
    p_access_date => to_date('202405312118','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405312128','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express Accounts',
    p_app => 138,
    p_owner => 'AGSN',
    p_access_date => to_date('202405312130','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406031715','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406031718','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406031718','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'Application Express',
    p_app => 137,
    p_owner => 'AGSN',
    p_access_date => to_date('202406031847','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express',
    p_app => 137,
    p_owner => 'AGSN',
    p_access_date => to_date('202406031848','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406041148','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406041226','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406041228','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406041357','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express Accounts',
    p_app => 138,
    p_owner => 'AGSN',
    p_access_date => to_date('202406041358','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406061016','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406061315','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406061315','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406061321','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406061326','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA54R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406061724','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406061724','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406061729','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406061729','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406111944','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301002','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301110','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301223','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301304','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'Application Express',
    p_app => 137,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301332','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express',
    p_app => 137,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301403','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301425','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406040844','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406041147','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406041147','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406041358','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406082104','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406091136','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406091136','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406091141','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406091821','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406091842','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406092129','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406111322','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406111924','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406111924','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406111925','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406111943','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406121855','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406121900','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406121908','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406121923','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406121924','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300441','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => ' ',
    p_auth_method => 'GRUPO_DMSAS',
    p_app => 121,
    p_owner => 'AGSN',
    p_access_date => to_date('202405300442','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'GRUPO_DMSAS',
    p_app => 121,
    p_owner => 'AGSN',
    p_access_date => to_date('202405300442','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSNEG',
    p_auth_method => 'Application Express Accounts',
    p_app => 121,
    p_owner => 'AGSN',
    p_access_date => to_date('202405300448','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ADM_MARTINEZNOELIA',
    p_auth_method => 'Application Express Accounts',
    p_app => 121,
    p_owner => 'AGSN',
    p_access_date => to_date('202405300448','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ADM_MARTINEZNOELIA',
    p_auth_method => 'Application Express Accounts',
    p_app => 121,
    p_owner => 'AGSN',
    p_access_date => to_date('202405300448','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 5,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ADM_MARTINEZNOELIA',
    p_auth_method => 'is_login_password_valid',
    p_app => 4155,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300449','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'ADM_MARTINEZNOELIA',
    p_auth_method => 'Application Express Accounts',
    p_app => 121,
    p_owner => 'AGSN',
    p_access_date => to_date('202405300449','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405300457','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300523','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300529','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300530','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300532','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300532','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300534','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300539','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300541','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300541','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300541','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300548','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300554','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300620','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300620','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300707','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300959','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301002','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301100','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301311','YYYYMMDDHH24MI'),
    p_ip_address => '10.112.203.136',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405311212','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'adm_3_RUEBAS',
    p_app => 115,
    p_owner => 'AGSN',
    p_access_date => to_date('202405311908','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express Accounts',
    p_app => 138,
    p_owner => 'AGSN',
    p_access_date => to_date('202405311913','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405312128','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406020750','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406020751','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406021045','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406021047','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406021047','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406021048','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406021048','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406021048','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406021050','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406021050','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => '2_PRUEBAS62P',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406021050','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => 'Su validacion contra DMSAS ha sido correcta pero carece de permisos de acceso');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => '1_PRUEBAS70C',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406021051','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express',
    p_app => 137,
    p_owner => 'AGSN',
    p_access_date => to_date('202406091332','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406091355','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406091355','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express',
    p_app => 137,
    p_owner => 'AGSN',
    p_access_date => to_date('202406121938','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300706','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405300950','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301003','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301052','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405301059','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express Accounts',
    p_app => 138,
    p_owner => 'AGSN',
    p_access_date => to_date('202405301917','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405302005','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202405302145','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406021049','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => -1,
    p_custom_status_text => 'Usuariooooo y/o contraseña incorrecta.');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406031715','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express',
    p_app => 137,
    p_owner => 'AGSN',
    p_access_date => to_date('202406031722','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406040839','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Application Express',
    p_app => 137,
    p_owner => 'AGSN',
    p_access_date => to_date('202406040840','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406040841','YYYYMMDDHH24MI'),
    p_ip_address => '10.104.32.192',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406081839','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406081843','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406081843','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MARTINEZNOELIA64R',
    p_auth_method => 'VALIDACION_DMSAS',
    p_app => 129,
    p_owner => 'AGSN',
    p_access_date => to_date('202406081844','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.130',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'AGSN',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_210100',
    p_access_date => to_date('202406121908','YYYYMMDDHH24MI'),
    p_ip_address => '10.26.0.212',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
wwv_flow_team_api.create_feedback (
  p_id => 23326950663989927 + wwv_flow_team_api.g_id_offset
 ,p_feedback_id => 1
 ,p_feedback_comment => 'He podido loguearme con usuario de DMSAS'
 ,p_feedback_type => 1
 ,p_feedback_status => 0
 ,p_application_id => 117
 ,p_application_name => 'Prueba'
 ,p_page_id => 1
 ,p_page_name => 'Home'
 ,p_page_last_updated_by => 'AGSN'
 ,p_page_last_updated_on => to_date('20230328122256','YYYYMMDDHH24MISS')
 ,p_session_id => '10291759271122'
 ,p_apex_user => 'ADM_3_RUEBAS'
 ,p_user_email => 'unknown'
 ,p_application_version => 'Release 1.0'
 ,p_session_info => 'security_group_id=22969401767766552'||chr(10)||
'expires_on=28/03/2023'||chr(10)||
'ip_address=10.26.16.19'||chr(10)||
'session_id='||chr(10)||
'created_on=28/03/2023'
 ,p_session_state => 'P10050_USER_AGENT="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb"'||chr(10)||
'P10050_RATING="3"'||chr(10)||
'P10050_FEEDBACK="He podido loguearme con usuario de DMSAS"'||chr(10)||
'P10050_PAGE_ID="1"'||chr(10)||
''
 ,p_parsing_schema => 'AGSN'
 ,p_http_user_agent => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54'
 ,p_remote_addr => '10.26.16.19'
 ,p_remote_user => 'APEX_PUBLIC_USER'
 ,p_http_host => 'gr00sapexpru.granada.dmsas.sda.sas.junta-andalucia.es:8443'
 ,p_server_name => 'gr00sapexpru.granada.dmsas.sda.sas.junta-andalucia.es'
 ,p_server_port => '8443'
 ,p_logging_security_group_id => 22969401767766552
 ,p_logged_by_workspace_name => 'WS_AGSN_PRE'
 ,p_created_by => 'ADM_3_RUEBAS'
 ,p_created_on => to_timestamp_tz('20230328122702.956384000 +02:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
 ,p_updated_by => 'ADM_3_RUEBAS'
 ,p_updated_on => to_timestamp_tz('20230328122702.956392000 +02:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
);
end;
/
--
prompt ...Issue Templates
--
begin
wwv_flow_team_api.create_issue_template (
  p_id => 22974752821077737 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Template'
 ,p_template_description => 'Template used to log a bug.'
 ,p_template_text => 
'**Expected Behavior**'||chr(10)||
'- Tell us what you believe should happen.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Current Behavior**'||chr(10)||
'- Tell us what happens.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Who is affected**'||chr(10)||
'- Tell us who/what is affected. '||chr(10)||
''||chr(10)||
'**Possible Solution**'||chr(10)||
'- If you can, suggest how you would fix this bug.'||chr(10)||
''||chr(10)||
'**Steps to Reproduce**'||chr(10)||
'- Provide an unambiguous set of steps to reproduce, including screen shots and code snippets if appropriate.'||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
'- What'||
' were you trying to accomplish when the bug occurred. Does the bug only occur under certain conditions, or at certain times of day, and so forth.'||chr(10)||
''||chr(10)||
'**Environment**'||chr(10)||
''||chr(10)||
'- Version: '||chr(10)||
'- Platform: '||chr(10)||
'- Subsystem:'||chr(10)||
''||chr(10)||
'______'||chr(10)||
''||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 22974802120077737 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Template'
 ,p_template_description => 'Template used to log a feature request.'
 ,p_template_text => 
'**Feature Summary**'||chr(10)||
' - Provide a one paragraph general overview of the feature request.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
' - Does this request relate to a specific situation or process? For example, "I am always frustrated when [...]"'||chr(10)||
''||chr(10)||
''||chr(10)||
' - Please provide any supporting information, including screenshots, use cases, and so forth.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Preferred Solution**'||chr(10)||
'- Provide a clear description of what you would like to see impl'||
'emented.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Alternative Solutions**'||chr(10)||
'- Provide a description of alternative solutions or features considered, or workarounds used.'||chr(10)||
''||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 22974911616077737 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'How Do I ...'
 ,p_template_description => 'Template used to ask a procedural question.'
 ,p_template_text => 
'**Question**'||chr(10)||
'- State your question or request as succinctly as possible.'||chr(10)||
''||chr(10)||
'**General Context**'||chr(10)||
'- What are you trying to do? '||chr(10)||
''||chr(10)||
''||chr(10)||
'- Where else have you looked or who else have you contacted to find an answer? '||chr(10)||
''||chr(10)||
''||chr(10)||
'**Environment** '||chr(10)||
'Is this question specific to an environment, programming language or other area?'||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue,'||
' then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 22975073185077737 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Raised'
 ,p_template_description => 'A bug has been raised.'
 ,p_template_text => 
'A **Bug** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 22975193881077738 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Won''t Action'
 ,p_template_description => 'This issue will not be actioned'
 ,p_template_text => 
'After careful consideration, **no further action will be taken on this issue**. '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 22975253105077738 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Filed'
 ,p_template_description => 'A feature request has been filed.'
 ,p_template_text => 
'A **Feature Request** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Feature Tracking System: '||chr(10)||
'- Feature ID: '||chr(10)||
'- URL to Feature Definition: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 22975324425077738 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Known Issue'
 ,p_template_description => 'Reference a known issue.'
 ,p_template_text => 
'After review, it has been determined that this is a known issue, see details below.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 22975483396077738 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Need More Information'
 ,p_template_description => 'Request for more information.'
 ,p_template_text => 
'**More information is needed for this issue:**'||chr(10)||
''||chr(10)||
'Please provide the information requested below. Without this information it will be difficult to triage and address the issue further.'||chr(10)||
''||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_issue_template (
  p_id => 22975526859077738 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Followup Action Required'
 ,p_template_description => 'A followup action is required.'
 ,p_template_text => 
'Please perform the following actions: '||chr(10)||
''||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
'4.'||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
end;
/
--
prompt ...Issue Email Prefs
--
begin
wwv_flow_team_api.create_issue_email_prefs (
  p_id => 22976039412077752 + wwv_flow_team_api.g_id_offset
 ,p_user_id => 'AGSN'
 ,p_receive_emails_yn => 'Y'
 ,p_notification_types => 'ISSUE_EDIT:COMMENT_ADD:COMMENT_EDIT:STATUS:ASSIGNEE:SUBSCRIBER:MILESTONE:LABEL:DUPLICATE:ASSOCIATION:ATTACHMENT'
 ,p_frequency => 'IMMEDIATELY'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
end;
/
--
prompt ...Label Groups
--
begin
wwv_flow_team_api.create_label_group (
  p_id => 22971322220077714 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Functional Area'
 ,p_group_color => 'label-color-19'
 ,p_group_description => 'Functional area affected by the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label_group (
  p_id => 22972277628077728 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Category'
 ,p_group_color => 'label-color-11'
 ,p_group_description => 'Category assigned to the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label_group (
  p_id => 22973182782077729 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Importance'
 ,p_group_color => 'label-color-16'
 ,p_group_description => 'Level of importance assigned to the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label_group (
  p_id => 22973746554077729 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Level of Effort'
 ,p_group_color => 'label-color-13'
 ,p_group_description => 'Level of effort to address the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label_group (
  p_id => 22974140470077730 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Progress'
 ,p_group_color => 'label-color-14'
 ,p_group_description => 'Progress against the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
end;
/
--
prompt ...Labels
--
begin
wwv_flow_team_api.create_label (
  p_id => 22971427775077727 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22971322220077714
 ,p_label_name => 'UI / UX'
 ,p_label_desc => 'UI / UX'
 ,p_label_slug => 'ui-ux'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22971592306077727 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22971322220077714
 ,p_label_name => 'Database'
 ,p_label_desc => 'Database'
 ,p_label_slug => 'database'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22971613232077727 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22971322220077714
 ,p_label_name => 'REST Integration'
 ,p_label_desc => 'REST Integration'
 ,p_label_slug => 'rest-integration'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22971793674077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22971322220077714
 ,p_label_name => 'CSS / HTML'
 ,p_label_desc => 'CSS / HTML'
 ,p_label_slug => 'css-html'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22971819450077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22971322220077714
 ,p_label_name => 'Dynamic Actions / JavaScript'
 ,p_label_desc => 'Dynamic Actions / JavaScript'
 ,p_label_slug => 'dynamic-actions-javascript'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22971907054077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22971322220077714
 ,p_label_name => 'Security'
 ,p_label_desc => 'Security'
 ,p_label_slug => 'security'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22972098221077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22971322220077714
 ,p_label_name => 'Administration'
 ,p_label_desc => 'Administration'
 ,p_label_slug => 'administration'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22972114736077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22971322220077714
 ,p_label_name => 'External System Integration'
 ,p_label_desc => 'External System Integration'
 ,p_label_slug => 'external-system-integration'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22972360096077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22972277628077728
 ,p_label_name => 'Bug'
 ,p_label_desc => 'Bug'
 ,p_label_slug => 'bug'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22972495546077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22972277628077728
 ,p_label_name => 'Enhancement Request'
 ,p_label_desc => 'Enhancement Request'
 ,p_label_slug => 'enhancement-request'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22972556162077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22972277628077728
 ,p_label_name => 'Feature Request'
 ,p_label_desc => 'Feature Request'
 ,p_label_slug => 'feature-request'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22972626632077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22972277628077728
 ,p_label_name => 'Security Issue'
 ,p_label_desc => 'Security Issue'
 ,p_label_slug => 'security-issue'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22972753613077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22972277628077728
 ,p_label_name => 'Performance Issue'
 ,p_label_desc => 'Performance Issue'
 ,p_label_slug => 'performance-issue'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22972816763077728 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22972277628077728
 ,p_label_name => 'Installation Issue'
 ,p_label_desc => 'Installation Issue'
 ,p_label_slug => 'installation-issue'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22972928801077729 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22972277628077728
 ,p_label_name => 'Documentation Issue'
 ,p_label_desc => 'Documentation Issue'
 ,p_label_slug => 'documentation-issue'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22973049247077729 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22972277628077728
 ,p_label_name => 'Training Issue'
 ,p_label_desc => 'Training Issue'
 ,p_label_slug => 'training-issue'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22973219138077729 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22973182782077729
 ,p_label_name => 'Critical'
 ,p_label_desc => 'Critical'
 ,p_label_slug => 'critical'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22973300039077729 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22973182782077729
 ,p_label_name => 'Important'
 ,p_label_desc => 'Important'
 ,p_label_slug => 'important'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22973424598077729 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22973182782077729
 ,p_label_name => 'Normal'
 ,p_label_desc => 'Normal'
 ,p_label_slug => 'normal'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22973598148077729 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22973182782077729
 ,p_label_name => 'Backlog'
 ,p_label_desc => 'Backlog'
 ,p_label_slug => 'backlog'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22973685647077729 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22973182782077729
 ,p_label_name => 'Will Not Address'
 ,p_label_desc => 'Will Not Address'
 ,p_label_slug => 'will-not-address'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22973844393077729 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22973746554077729
 ,p_label_name => 'Easy Fix'
 ,p_label_desc => 'Easy Fix'
 ,p_label_slug => 'easy-fix'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22973971333077729 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22973746554077729
 ,p_label_name => 'Moderate Effort'
 ,p_label_desc => 'Moderate Effort'
 ,p_label_slug => 'moderate-effort'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22974069187077729 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22973746554077729
 ,p_label_name => 'Large Development Effort'
 ,p_label_desc => 'Large Development Effort'
 ,p_label_slug => 'large-development-effort'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22974270508077730 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22974140470077730
 ,p_label_name => 'Working On It'
 ,p_label_desc => 'Working On It'
 ,p_label_slug => 'working-on-it'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22974379923077730 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22974140470077730
 ,p_label_name => 'Requires More Info'
 ,p_label_desc => 'Requires More Info'
 ,p_label_slug => 'requires-more-info'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22974439479077730 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22974140470077730
 ,p_label_name => 'Waiting on Third Party'
 ,p_label_desc => 'Waiting on Third Party'
 ,p_label_slug => 'waiting-on-third-party'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22974550683077730 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22974140470077730
 ,p_label_name => 'Can Not Fix'
 ,p_label_desc => 'Can Not Fix'
 ,p_label_slug => 'can-not-fix'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_label (
  p_id => 22974672682077730 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 22974140470077730
 ,p_label_name => 'Complete'
 ,p_label_desc => 'Complete'
 ,p_label_slug => 'complete'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095500','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
end;
/
--
prompt ... Milestones
--
begin
wwv_flow_team_api.create_milestone (
  p_id => 22975695361077741 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Code Freeze'
 ,p_milestone_date => to_date('20230412095501','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'code-freeze'
 ,p_milestone_id => 1
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_milestone (
  p_id => 22975778415077742 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'UI Freeze'
 ,p_milestone_date => to_date('20230427095501','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'ui-freeze'
 ,p_milestone_id => 2
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
wwv_flow_team_api.create_milestone (
  p_id => 22975887458077742 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Final Release'
 ,p_milestone_date => to_date('20230512095501','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'final-release'
 ,p_milestone_id => 3
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
end;
/
--
prompt ... Issues
--
begin
wwv_flow_team_api.create_issue (
  p_id => 22975918175077747 + wwv_flow_team_api.g_id_offset
 ,p_title => 'Welcome to Team Development in Oracle APEX!'
 ,p_slug => 'welcome-to-team-development-in-oracle-apex'
 ,p_issue_text => 
'Hi there! '||chr(10)||
''||chr(10)||
'This is your very first issue! You can create issues to keep track of tasks, features, bugs, and feedback for all of your APEX projects!  You can add labels to issues, add assignees, set milestones, and even apply formatting using Markdown shorthand!  '||chr(10)||
''||chr(10)||
'Below is a quick sample of what you can do with Markdown:'||chr(10)||
'# Orionis bellica Stygias partes'||chr(10)||
' '||chr(10)||
'## Solibus an rutilis cornu'||chr(10)||
' '||chr(10)||
'Lorem markd'||
'ownum formosae. [Est medio](http://www.modomarte.com/cantu) et illi adunca? Miserum Phaethon, Editus, abrupta colonos; Aeeta annum; facere pruniceum '||chr(10)||
'**domat**, discussisque saevo, Tereo. _Quid noctis adhuc, nisi nemo dignos, aures sonus mentae conspecta?_ '||chr(10)||
' '||chr(10)||
'```js '||chr(10)||
'device_intranet_cloud(page_disk); '||chr(10)||
'if (81 >= scanner + realityHoneypot + intellectual_heuristic) { '||chr(10)||
'    ataDataWeb -= fileWormCamera '||
'+ hypertext; '||chr(10)||
'    hdtv(-3 - 2); '||chr(10)||
'    folder(controlHtml, model - 5); '||chr(10)||
'} '||chr(10)||
'``` '||chr(10)||
' '||chr(10)||
'## Consortia dum mea aethere Deionidenque vixque est '||chr(10)||
' '||chr(10)||
'Forma duris igne duritiem Minervaetransformabantur, moriemur manibusque nulla eripienda est rima grave tu. Illis succedat fit. Ter amo quod plurima, non ab alimentaque adest videbitur at. Avidissima agam qui superba a partem [crines precantia limen](http://totover'||
'tice.com/vertice) in **ignibus spernit ritusque** iamdudum. '||chr(10)||
' '||chr(10)||
'> Arcum aristis arsit generosior in cum laevum suae, ferebat, hoc. Manus faciat, '||chr(10)||
'> nec inpetus sua silvas ossa? Incursant Nereide diversaeque velut signumque '||chr(10)||
'> Hectora, convellere caede hostesque oppida, diu viriles. Isdem **sacra**, '||chr(10)||
'> facta, in viximus alimentaque quae patria, ut derigere vires. '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'### Inde erat dicente viribus '||chr(10)||
''||
' '||chr(10)||
'Nomina aevumque pepercit ridet, vellet stetit tibi, Alcyone a Lelex adductis flumine stetit. *Fides* caeli gloria aquis neget meritis subitis tumulumque carmina illius non satis arces. Repressit volantes egesta, `et ira poscit` lacertis ita timidi. '||chr(10)||
' '||chr(10)||
'### Causam nec plagamque Minyis '||chr(10)||
' '||chr(10)||
'Venit caput vel sublimis haud causa et audire, terraeque sed, per duce gaudete Niobe fierent quantusque villis.'||
' Non **vallibus quinque vaga** densum si meruisse ponit olim terras saepe? Saxum sidera regia; feram hastarum os vigor sponte hinnitus inter est. '||chr(10)||
' '||chr(10)||
'- Vere furta ut exegi '||chr(10)||
'- Tempora poenaeque temptanti '||chr(10)||
'- Misisset est nec vicit edita hic '||chr(10)||
' '||chr(10)||
'Si ista Abantiades pennis, nusquam tu ira ego per. Ille sit, cum aditum culmine, primaque quae mira! Vix herbae volanti caeli, [quisquis](http://bello.org/ripa'||
'e-maenalon), et capillis coepisse iacta, tibi anum, tum iam persequar. Videtur quotiensque vires. Firmo ocius coepta ipsum ignoro, Matri nec regni quod, stimulosque quam librata. '||chr(10)||
' '||chr(10)||
'1. Ille citaeque illo ille Crotonis terra '||chr(10)||
'2. Formatae lancea hac de iuvabat bicolor et '||chr(10)||
'3. Vastator consistere pondere te carmen consorti ex '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'| In ante metus dictum at tempor   | Luctus accumsan | Bibendum | Conse'||
'quat | '||chr(10)||
'|----------------------------------|----------------:|:--------:|-----------:| '||chr(10)||
'| Lectus arcu bibendum at varius   |            37.5 |   quam   |       .07 | '||chr(10)||
'| justo eget magna fermentum       |           127.2 |   lacus  |       .88 | '||chr(10)||
'| Platea dictumst quisque sagittis |            33.0 |   quam   |       .39 | '
 ,p_row_version => 1
 ,p_status => 'OPEN'
 ,p_issue_number => 1
 ,p_deleted => 'N'
 ,p_created_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_created_by => 'AGSN'
 ,p_updated_on => to_date('20230328095501','YYYYMMDDHH24MISS')
 ,p_updated_by => 'AGSN'
);
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ...workspace objects
 
begin
wwv_flow_api.create_credential(
 p_id=>wwv_flow_api.id(4465583380859333362)
,p_name=>'Google API Key'
,p_static_id=>'google_api_key'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_prompt_on_install=>true
);
end;
/
begin
wwv_flow_api.create_credential(
 p_id=>wwv_flow_api.id(4465585434989373265)
,p_name=>'Moviedb API Key'
,p_static_id=>'Moviedb_API_Key'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_prompt_on_install=>true
);
end;
/
begin
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(1394924961445904447)
,p_name=>'www-googleapis-com-youtube-v3'
,p_static_id=>'www_googleapis_com_youtube_v3'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('www_googleapis_com_youtube_v3'),'https://www.googleapis.com/youtube/v3/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('www_googleapis_com_youtube_v3'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('www_googleapis_com_youtube_v3'),'')
,p_prompt_on_install=>false
);
end;
/
begin
wwv_flow_api.create_remote_server(
 p_id=>wwv_flow_api.id(1998383505447727377)
,p_name=>'api-themoviedb-org-3-list'
,p_static_id=>'api_themoviedb_org_3_list'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_themoviedb_org_3_list'),'https://api.themoviedb.org/3/list/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_themoviedb_org_3_list'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_themoviedb_org_3_list'),'')
,p_prompt_on_install=>false
);
end;
/
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'AGSN';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA AGSN - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_210100
-- Exported 17:50 Lunes Junio 17, 2024 by: AGSN
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 17:50 Lunes Junio 17, 2024 by: AGSN
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'WS_AGSN_PRE';
 
end;
/

begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
