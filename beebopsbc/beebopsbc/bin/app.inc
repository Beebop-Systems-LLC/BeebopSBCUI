<?php
/****************************************************************************
   openbiz core path
 ****************************************************************************/
define('OPENBIZ_HOME',dirname(dirname(dirname(__FILE__)))."/openbiz");

/****************************************************************************
   application related path
 ****************************************************************************/
define('APP_HOME',dirname(dirname(__FILE__)));

/* APP_URL is /a/b in case of http://host/a/b/index.php?... */
$appHome = str_replace('\\','/',APP_HOME);
if(isset($_SERVER['DOCUMENT_ROOT'])){
	$appPath = str_replace($_SERVER['DOCUMENT_ROOT'], '', $appHome);
}else{
	$appPath = $appHome;
}
if($appPath == $appHome){
	// support for apache alias path 
	$doc_root = str_replace('\\','/',dirname(APP_HOME));
	$appPath = str_replace($doc_root,"",$appHome); 
}
define('APP_URL',"/sbc");


/* APP_INDEX is /a/b/index.php in case of http://host/a/b/index.php?... */
$indexScript = "";
define('APP_INDEX',APP_URL.$indexScript);

/* define modules path */
define('MODULE_PATH',APP_HOME.DIRECTORY_SEPARATOR."modules");

/* define messages files path */
define('MESSAGE_PATH',APP_HOME.DIRECTORY_SEPARATOR."messages");

/* define themes const */
define('USE_THEME', 1);
define('THEME_URL',APP_URL."/themes");    // relative to /baseapp/bin/, or it can be absolution url
define('THEME_PATH',APP_HOME.DIRECTORY_SEPARATOR."themes");    // absolution path the themes
define('DEFAULT_THEME_NAME',"default");     // name of the theme. theme files are under themes/theme_name

/* define javascript path */
define('JS_URL', APP_URL."/js");  // relative to /baseapp/bin/, or it can be absolution url
define('OTHERS_URL', APP_URL."/others");
/* Log file path */
define("LOG_PATH", APP_HOME.DIRECTORY_SEPARATOR."log");

/* path to save session files */
define("SESSION_PATH", APP_HOME.DIRECTORY_SEPARATOR."session");

/* smarty template path */
define('SMARTY_TPL_PATH', APP_HOME.DIRECTORY_SEPARATOR."templates");
define('SMARTY_CPL_PATH', APP_HOME.DIRECTORY_SEPARATOR."templates/cpl");
define('SMARTY_CFG_PATH', APP_HOME.DIRECTORY_SEPARATOR."templates/cfg");

/* file path. */
define('APP_FILE_PATH', APP_HOME.DIRECTORY_SEPARATOR."files");
define('APP_FILE_URL', APP_URL."/files");

/* secured upload / attachment file path. files cannot be accessed by a direct url */
define('SECURE_UPLOAD_PATH', APP_HOME.DIRECTORY_SEPARATOR."files".DIRECTORY_SEPARATOR."sec_upload");

/* public upload file path. for example, uploaded image files. files can be accessed by a direct url */ 
define('PUBLIC_UPLOAD_PATH', APP_HOME.DIRECTORY_SEPARATOR."files".DIRECTORY_SEPARATOR."upload");
define('PUBLIC_UPLOAD_URL', APP_FILE_URL.'/upload');

/* file cache.DIRECTORY_SEPARATOR."rectory */
define('CACHE_PATH', APP_HOME.DIRECTORY_SEPARATOR."files".DIRECTORY_SEPARATOR."cache");

/* temopary files directory */
define('TEMPFILE_PATH', APP_HOME.DIRECTORY_SEPARATOR."files".DIRECTORY_SEPARATOR."tmp");

/* metadata cache files directory */
define('CACHE_METADATA_PATH', APP_HOME.DIRECTORY_SEPARATOR."files".DIRECTORY_SEPARATOR."cache".DIRECTORY_SEPARATOR."metadata");

/* data cache files directory */
define('CACHE_DATA_PATH', APP_HOME.DIRECTORY_SEPARATOR."files".DIRECTORY_SEPARATOR."cache".DIRECTORY_SEPARATOR."data");

/****************************************************************************
   application system level constances
 ****************************************************************************/
/* whether print debug infomation or not */
define("DEBUG", 1);
//define("SQLDEBUG", 0);   no longer used in 2.2

/* check whether user logged in */
define("CHECKUSER", "Y");
/* session timeout seconds */
define("TIMEOUT", -1);  // -1 means never timeout.

//I18n
define("DEFAULT_LANGUAGE", "en_US");
define("LANGUAGE_PATH", APP_HOME.DIRECTORY_SEPARATOR."languages");
/*define locale to be set in typemanager.php depending on selected language */
//$local["es"]="es_ES.utf8";
//$local["en"]="en_EN.utf8";

// select default timezone
//date_default_timezone_set('America/Los_Angeles');

// login page
define('USER_LOGIN_VIEW', "user.view.LoginView");

// session timeout page
define('USER_TIMEOUT_VIEW', "common.view.TimeoutView");

// access deny page
define('ACCESS_DENIED_VIEW', "common.view.AccessDenyView");

// security deny page
define('SECURITY_DENIED_VIEW', "common.view.SecurityDenyView");

// not found page
define('NOTFOUND_VIEW', "common.view.NotfoundView");

// internal error page
define('INTERNAL_ERROR_VIEW', "common.view.ErrorView");

define('EVENTLOG_SERIVCE', "eventlogService");
define('USER_EMAIL_SERIVCE', "userEmailService");

define ('DENY', 0);
define ('ALLOW', 1);
define ('ALLOW_OWNER', 2);

define ('APPBUILDER', 1); // 0: hidden, 1: show

// load default theme

if( @$_GET['theme']) {
	//$_GET
	define('THEME_NAME',$_GET['theme']);
	//save cookies
	setcookie("THEME_NAME", $_GET['theme'], time()+86400*365, "/");	
} elseif (@$_COOKIE['THEME_NAME']){
	define('THEME_NAME',$_COOKIE['THEME_NAME']);	
} else {
	//default
	define('THEME_NAME',DEFAULT_THEME_NAME);
}

include_once(OPENBIZ_HOME."/bin/sysheader.inc");
?>
