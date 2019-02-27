<?php
require 'general/include/config.php';
require('general/class/db_mysql.php');
require 'general/libs/Smarty.class.php';
require('general/class/functions.php');
$smarty = new Smarty;
$function = new Functions;
$db = null;
$db = new db_mysql(DB_HOST, DB_USER, DB_PWD, DB_NAME, false);
$db->db_query("SET NAMES 'utf8'");

session_start();
if (!isset($_SESSION[URL_HOME]["lang"])) {
    $_SESSION[URL_HOME]["lang"] = "en";
}

if ($_SESSION[URL_HOME]["lang"] == "vn") {
    define("LANG_AUGE", '0');
    define("LANG_IDHOME", '1');
    define("LANG_IDPRODUCT", '5');
    define("LANG_IDSERVICE", '9');
    define("LANG_IDSUPPORT", '11');
    define("LANG_IDNEWS", '13');
    require('general/include/contact.php');
    include('general/language/language_vn.php');
} else {
    if ($_SESSION[URL_HOME]["lang"] == "en") {
        define("LANG_AUGE", '1');
        define("LANG_IDHOME", '2');
        define("LANG_IDPRODUCT", '90');
        define("LANG_IDSERVICE", '10');
        define("LANG_IDSUPPORT", '12');
        define("LANG_IDNEWS", '14');
        require('general/include/contact.php');
        include('general/language/language_en.php');
    }
}

require("template/module/news.class.php");
require("template/module/member.class.php");
require("template/module/cart.class.php");
require('general/libraries/Google/gConfig.php');
require('general/libraries/Facebook/autoload.php');
require("template/module/main.php");

include("general/class/thumbnail.class.php");
include("general/class/upload.class.php");

require("template/autohits/marketing.class.php");
require("template/autohits/main.php");

?>
