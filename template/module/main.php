<?php
function process_client()
{
////////////No change/////////////
    global $db, $smarty, $function;
    $oNews = new News;
    $oMember = new Member;
    $oCart = new Cart;

    $str = $function->sql_injection(isset($_GET['cmd']) ? $_GET['cmd'] : "");
    $arr_str = explode("/", $str);
    $arr_str[0] = isset($arr_str[0]) ? $arr_str[0] : "";
    $arr_str[1] = isset($arr_str[1]) ? $arr_str[1] : "";
    $arr_str[2] = isset($arr_str[2]) ? $arr_str[2] : "";
    $arr_str[3] = isset($arr_str[3]) ? $arr_str[3] : "";
    $a = $function->sql_injection($arr_str[0]);
    $b = $function->sql_injection($arr_str[1]);
    $c = $function->sql_injection($arr_str[2]);
    $d = $function->sql_injection($arr_str[3]);

////////// ngay hom nay
    $date_today = date("D, d-m-y");
    $smarty->assign("date_today", $date_today);

////////// kiem tra ngon ngu
    $smarty->assign("lang_auge_check", LANG_AUGE);
    $smarty->assign("cate_product", LANG_IDPRODUCT);

// Check is mobile
    $isMobile = $function->isMobile();
    if ($isMobile == 1) {
        $smarty->assign("isMobile", $isMobile);
    }
////////// giao dien
    $themes = THEMES;
    $smarty->assign("themes", $themes);

////////// lay session_id kiem tra so don hang trong gio
    $_SESSION[URL_HOME]["Shopping"] = $function->sql_injection(session_id());
    $so_don_hang = $oCart->check_cart_session($function->sql_injection($_SESSION[URL_HOME]["Shopping"]));
    $smarty->assign("so_don_hang", $so_don_hang);
    $_SESSION[URL_HOME]["so_don_hang"] = $so_don_hang;

////////// kiem tra id dang nhap
    $smarty->assign("session_logined_user", $_SESSION[URL_HOME]['logined_user']);
    $smarty->assign("login_check", LOGINED_TRUE);
    $smarty->assign("userid_u", isset($_SESSION[URL_HOME]["userid_u"]) ? $_SESSION[URL_HOME]["userid_u"] : "");
    $smarty->assign("username_u", isset($_SESSION[URL_HOME]["username_u"]) ? $_SESSION[URL_HOME]["username_u"] : "");
    $smarty->assign("user_role_u", isset($_SESSION[URL_HOME]["user_role_u"]) ? $_SESSION[URL_HOME]["user_role_u"] : "");
    $smarty->assign("firstname_u", isset($_SESSION[URL_HOME]["firstname_u"]) ? $_SESSION[URL_HOME]["firstname_u"] : "");
    $smarty->assign("email_u", isset($_SESSION[URL_HOME]["email_u"]) ? $_SESSION[URL_HOME]["email_u"] : "");
    $smarty->assign("mobile_u", isset($_SESSION[URL_HOME]["mobile_u"]) ? $_SESSION[URL_HOME]["mobile_u"] : "");
    $smarty->assign("status_u", isset($_SESSION[URL_HOME]["status_u"]) ? $_SESSION[URL_HOME]["status_u"] : "");
    $smarty->assign("address_u", isset($_SESSION[URL_HOME]["address_u"]) ? $_SESSION[URL_HOME]["address_u"] : "");
    $smarty->assign("city_u", isset($_SESSION[URL_HOME]["city_u"]) ? $_SESSION[URL_HOME]["city_u"] : "");
    $smarty->assign("district_u", isset($_SESSION[URL_HOME]["district_u"]) ? $_SESSION[URL_HOME]["district_u"] : "");

/////////// tu khoa - link chia se seo
    $link_web = $_SERVER['REQUEST_URI'];
    $smarty->assign("link_web", $link_web);

////////// chuyen name url sang category_id
    $rs_category = $oNews->category_name($a);
    $smarty->assign("rs_category", $rs_category);
    $category_id = $rs_category["category_id"];
    $parent_id = $rs_category["parent_id"];
    $category_url = $rs_category["category_url"];
    $category_name = $rs_category["category_name"];
    $category_content = $rs_category["category_content"];
    $category_img = $rs_category["category_img"];
    $layout_home = $rs_category["layout"];
    $category_color = $rs_category["color"];
    if ($a == '') {
        $category_id = '0';
    }

/////////// kiem tra category va supcate
    if ($a == '') {
        $url_category = "index.html";
        $url_supcate = "index.html";
    } else {

        $num_parent_id = $oNews->num_parent_id($category_id);

        if ($num_parent_id > 0) {
            $smarty->assign("url_category", $a);
            $url_category = $a;
            $numf_category = $oNews->check_category_url($url_category);
            if ($numf_category == 1) {
                $url_category = $url_category;
            } else {
                $url_category = "index.html";
            }
        } else {
            $smarty->assign("url_supcate", $a);
            $url_supcate = $a;
            $numf_supcate = $oNews->check_category_url($url_supcate);

            if ($numf_supcate == 1) {
                $url_supcate = $url_supcate;
            } else {
                $url_supcate = "index.html";
            }
        }
    }

/////////// doi link chi tiet san pham
    $smarty->assign("url_views", $a);
    $url_views = $a;
    if ($url_views == '') {
        $url_views = "index.html";
    } else {
        $arr_views = explode("-", $a);
        $product_id = $function->sql_injection($arr_views[0]);
        $numf_views = $oNews->check_product_id($product_id);
        if ($numf_views == 1) {
            $url_views = $url_views;
        } else {
            $url_views = "index.html";
        }
    }
////////////////////////////////////////////////////////////////////////////////////////////////////
// Call session of chuyen vien or user
///////////////////////////////////////////////////////////////////////////////////////////////////
    if ($_SESSION[URL_HOME]['logined_user']) {
        $smarty->assign('isLogin', $_SESSION[URL_HOME]['logined_user']);
    } else {
        if ($_SESSION[URL_HOME]['logined_user_cv']) {
            $smarty->assign('isLogin_cv', $_SESSION[URL_HOME]['logined_user_cv']);
        }
    }

    // Get list about
    $list_about_us = $oNews->get_list_about_us(LANG_ABOUT);
    $smarty->assign("list_about_us", $list_about_us);

    // Get list hoc bong
    $list_hoc_bong = $oNews->get_list_category(LANG_HOC_BONG);
    $smarty->assign("list_hoc_bong", $list_hoc_bong);

    // Get list du hoc cac nuoc
    $cate_du_hoc = $oNews->category_all_home(0, LANG_DU_HOC_CATEGORY, 0, 100);
    for ($i = 0; $i < count($cate_du_hoc); $i++) {
        $cate_sub[$i] = $oNews->category_all_home(0, $cate_du_hoc[$i]["category_id"], 0, 100);
    }
    $smarty->assign("cate_du_hoc", $cate_du_hoc);
    $smarty->assign("cate_sub", $cate_sub);

    switch (strtolower($a)) {
        /////////////////////////////////////////////Trang chu/////////////////////////////////////
        case 'index':
        default:
            $smarty->assign("home", 1);

            // Get list banner home
            $list_banner_home = $oNews->show_all_coupons_banner(0, LANG_IDHOME, 0, 100);
            $smarty->assign("list_banner_home", $list_banner_home);

            // Get data thong tin du hoc
            $content_ttduhoc = $oNews->get_category_content(LANG_THONG_TIN_DU_HOC);
            $smarty->assign("content_ttduhoc", $content_ttduhoc);

            // Get data du hoc cac nuoc
            $content_duhoc = $oNews->get_category_content(LANG_DU_HOC_CATEGORY);
            $smarty->assign("content_duhoc", $content_duhoc);

            // Get data nhung dieu thu vi
            $content_ndtv = $oNews->get_category_content(LANG_NDTV);
            $smarty->assign("content_ndtv", $content_ndtv);

            // Get data dai hoc mo uoc
            $content_dhmu = $oNews->get_category_content(LANG_DUONG_DEN_DAI_HOC);
            $smarty->assign("content_dhmu", $content_dhmu);

            // Get data other
            $content_ctbqt = $oNews->get_category_content(LANG_CT_BAN_QUAN_TAM);
            $smarty->assign("content_ctbqt", $content_ctbqt);

            // Get data hoc bong
            $content_hocbong = $oNews->get_category_content(LANG_HOC_BONG);
            $smarty->assign("content_hocbong", $content_hocbong);

            // Get data giao duc
            $content_gd = $oNews->get_category_content(LANG_GIAO_DUC);
            $smarty->assign("content_gd", $content_gd);

            //////////////////////////////////////////////////////
            // Get list category content
            //////////////////////////////////////////////////////
            $list_category_content = $oNews->get_list_category(LANG_THONG_TIN_DU_HOC);
            $smarty->assign("list_category_content", $list_category_content);

            //////////////////////////////////////////////////////
            // Get all list news du hoc
            //////////////////////////////////////////////////////
            $list_news_sub = $oNews->get_list_news(null, 0, 100);
            //$function->debugPrint($list_news_sub);
            $smarty->assign("list_news_sub", $list_news_sub);

            return $smarty->fetch($themes . "/index.html");
            break;
///////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "duhoc":
            $arr_detail = explode("-", $b);
            $b = $function->sql_injection($arr_detail[0]);

            $smarty->assign("main_cate", $b);
            // Get list banner home
            $list_banner = $oNews->show_all_coupons_banner($b, 0, 0, 100);
            $smarty->assign("list_banner", $list_banner);

            // Get data thong tin du hoc
            $content_ttduhoc = $oNews->get_category_content(LANG_THONG_TIN_DU_HOC);
            $smarty->assign("content_ttduhoc", $content_ttduhoc);

            // Get all student
            $all_student = $oNews->get_all_student($b);
            $smarty->assign("all_student", $all_student);

            // Get all schools
            $all_schools = $oNews->get_all_schools($b);
            $smarty->assign("all_schools", $all_schools);

            // Get all question
            $all_question = $oNews->get_all_question($b);
            $smarty->assign("all_question", $all_question);
            // SEO link
            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);

            $cate_detail = $oNews->get_category_content($b);
            $smarty->assign("cate_detail", $cate_detail);

            // Get list content of category
            $list_category_content = $oNews->get_list_category($b);
            $smarty->assign("list_category_content", $list_category_content);

            //////////////////////////////////////////////////////
            // Get list news du hoc follow main category
            //////////////////////////////////////////////////////
            $list_category = '';
            for ($i = 0; $i < count($list_category_content); $i++) {
                $list_category .= $list_category_content[$i]["category_id"] . ",";
            }
            $new_list_category = trim($list_category, ',');
            if ($new_list_category != '') {
                $list_news_sub = $oNews->get_list_news($new_list_category, 0, 100);
                $smarty->assign("list_news_sub", $list_news_sub);
            } else {
                $smarty->assign("list_news_sub", null);
            }
            //$function->debugPrint($list_news_sub);
            return $smarty->fetch($themes . "/web/du_hoc.html");
            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "detail":
            $arr_detail = explode("-", $b);
            $b = $function->sql_injection($arr_detail[1]);
            $main_cate = $function->sql_injection($arr_detail[0]);
            $smarty->assign("main_cate", $main_cate);

            $news_detail = $oNews->show_new_detail($b);
            //$function->debugPrint($news_detail);
            $smarty->assign("news_detail", $news_detail);

            // Get list content of category
            $list_category_content = $oNews->get_list_category($b);
            $smarty->assign("list_category_content", $list_category_content);

            $list_category = '';
            for ($i = 0; $i < count($list_category_content); $i++) {
                $list_category .= $list_category_content[$i]["category_id"] . ",";
            }
            $new_list_category = trim($list_category, ',');
            $list_news_sub = $oNews->get_list_news($new_list_category, 0, 100);
            $smarty->assign("list_news_sub", $list_news_sub);

            // Get name category
            $categoryNews = $oNews->category_name_category_id($news_detail["news_category"]);
            $smarty->assign("categoryNews", $categoryNews);

            $news_category = $news_detail["news_category"];
            ////////////////////////////////////////////////////////////////
            // Seo google
            ////////////////////////////////////////////////////////////////
            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);
            $smarty->assign("seo_title", $function->sql_injection($news_detail["seo_title"]));
            $smarty->assign("seo_key", $function->sql_injection($news_detail["seo_key"]));
            $smarty->assign("seo_desc", $function->sql_injection($news_detail["seo_desc"]));
            $rs_key = $oNews->show_keyword(0, 5, $news_category);
            $smarty->assign("rs_key", $rs_key);

            // News other
            $page = $function->sql_injection($arr_str[3]);
            if ($page == "") {
                $page = 0;
            }
            $numf = $oNews->num_news_category(0, $news_category);
            $per_page = 4;
            $all_page = $numf ? $numf : 1;
            $base_url = URL_HOMEPAGE . "detail/{$b}/0";
            $url_last = "trang.html#shownews";
            $paging = $function->generate_page_news($base_url, $url_last, $all_page, $per_page, $page);
            $smarty->assign("paging", $paging);
            $rs = $oNews->show_news_category($news_category, 0, $page, $per_page);
            $smarty->assign("rs", $rs);
            $smarty->assign("numf", $numf);

            return $smarty->fetch($themes . "/web/news_detail.html");
            break;
/////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "about":
            $arr_detail = explode("-", $b);
            $b = $function->sql_injection($arr_detail[0]);
            // SEO link
            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);

            $new_detail = $oNews->show_new_detail($b);
            $smarty->assign("new_detail", $new_detail);

            $news_category = $new_detail["news_category"];
            //Seo google
            $smarty->assign("seo_title", $function->sql_injection($new_detail["seo_title"]));
            $smarty->assign("seo_key", $function->sql_injection($new_detail["seo_key"]));
            $smarty->assign("seo_desc", $function->sql_injection($new_detail["seo_desc"]));
            $rs_key = $oNews->show_keyword(0, 5, $news_category);
            $smarty->assign("rs_key", $rs_key);

            // up so lan xem
            $oNews->coupons_news_views($new_detail["news_id"]);

            // News other
            $page = $function->sql_injection($arr_str[3]);
            if ($page == "") {
                $page = 0;
            }
            $numf = $oNews->num_news_category(0, $news_category);
            $per_page = 4;
            $all_page = $numf ? $numf : 1;
            $base_url = URL_HOMEPAGE . "detail/{$b}/0";
            $url_last = "trang.html#shownews";
            $paging = $function->generate_page_news($base_url, $url_last, $all_page, $per_page, $page);
            $smarty->assign("paging", $paging);
            $rs = $oNews->show_news_category($news_category, 0, $page, $per_page);
            $smarty->assign("rs", $rs);
            $smarty->assign("numf", $numf);

            return $smarty->fetch($themes . "/web/about_detail.html");
            break;
///////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "hocbong":
            $arr_detail = explode("-", $b);
            $b = $function->sql_injection($arr_detail[0]);

            $smarty->assign("main_cate", $b);

            // Get list banner home
            $list_banner = $oNews->show_all_coupons_banner($b, 0, 0, 100);
            $smarty->assign("list_banner", $list_banner);

            // Get data thong tin du hoc
            $content_ttduhoc = $oNews->get_category_content(LANG_THONG_TIN_DU_HOC);
            $smarty->assign("content_ttduhoc", $content_ttduhoc);

            // Get all student
            $all_student = $oNews->get_all_student($b);
            $smarty->assign("all_student", $all_student);

            // Get all schools
            $all_schools = $oNews->get_all_schools($b);
            $smarty->assign("all_schools", $all_schools);

            // Get all question
            $all_question = $oNews->get_all_question($b);
            $smarty->assign("all_question", $all_question);

            // Get list hoc bong con
            $list_hoc_bong_child = $oNews->get_list_category($b);
            $smarty->assign("list_hoc_bong_child", $list_hoc_bong_child);

            // SEO link
            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);

            $cate_detail = $oNews->get_category_content($b);
            $smarty->assign("cate_detail", $cate_detail);

            return $smarty->fetch($themes . "/web/hoc_bong.html");
            break;

////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "hb":
            $smarty->assign("hoc_bong", 1);
            $arr_detail = explode("-", $b);
            $b = $function->sql_injection($arr_detail[1]);
            $main_cate = $function->sql_injection($arr_detail[0]);
            $smarty->assign("main_cate", $main_cate);

            // Get name hoc bong
            $hoc_bong = $oNews->category_name_category_id($b);
            $smarty->assign("category_name", $hoc_bong['category_name']);

            // Get list hoc bong con
            $list_hoc_bong_child = $oNews->get_list_category($main_cate);
            $smarty->assign("list_hoc_bong_child", $list_hoc_bong_child);

            // Get all tin hoc bong
            $all_hocbong = $oNews->get_all_hocbong($b);
            $smarty->assign("all_hocbong", $all_hocbong);

            return $smarty->fetch($themes . "/web/hoc_bong_detail.html");
            break;

////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "hb-detail":
            $arr_detail = explode("-", $b);
            $b = $function->sql_injection($arr_detail[1]);
            $main_cate = $function->sql_injection($arr_detail[0]);
            $smarty->assign("main_cate", $main_cate);

            // Get list hoc bong con
            $list_hoc_bong_child = $oNews->get_list_category($main_cate);
            $smarty->assign("list_hoc_bong_child", $list_hoc_bong_child);

            // SEO link
            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);

            $hocbong_detail = $oNews->show_hoc_bong_detail($b);
            $smarty->assign("hocbong_detail", $hocbong_detail);

            $news_category = $hocbong_detail["news_category"];
            //Seo google
            $smarty->assign("seo_title", $function->sql_injection($hocbong_detail["seo_title"]));
            $smarty->assign("seo_key", $function->sql_injection($hocbong_detail["seo_key"]));
            $smarty->assign("seo_desc", $function->sql_injection($hocbong_detail["seo_desc"]));
            $rs_key = $oNews->show_keyword(0, 5, $news_category);
            $smarty->assign("rs_key", $rs_key);

            // News other
            $page = $function->sql_injection($arr_str[3]);
            if ($page == "") {
                $page = 0;
            }
            $numf = $oNews->num_news_category(0, $news_category);
            $per_page = 4;
            $all_page = $numf ? $numf : 1;
            $base_url = URL_HOMEPAGE . "detail/{$b}/0";
            $url_last = "trang.html#shownews";
            $paging = $function->generate_page_news($base_url, $url_last, $all_page, $per_page, $page);
            $smarty->assign("paging", $paging);
            $rs = $oNews->show_news_category($news_category, 0, $page, $per_page);
            $smarty->assign("rs", $rs);
            $smarty->assign("numf", $numf);

            return $smarty->fetch($themes . "/web/hoc_bong_detail_content.html");
            break;
////////////////////////////////////////////////////////////////////////////////
        case "industry":
            $arr_detail = explode("-", $b);
            $b = $function->sql_injection($arr_detail[0]);

            $rs_order_active = $oMember->show_all_orders_cv_by_category(0, 200, $b);
            $smarty->assign("rs_order_active", $rs_order_active);

            foreach ($rs_order_active as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

            $rs_news_industry = $oMember->show_all_industry(10);
            $smarty->assign("rs_news_industry", $rs_news_industry);

            return $smarty->fetch($themes . "/user/order_cv_category.html");
            break;
////////////////////////////////////////////////////////////////////////////////
        case $url_views;
            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);
            $b = $product_id;
            $smarty->assign("detail", 1);

            if ($_SESSION[URL_ADMIN]["userid"]) {
                $smarty->assign('admin', true);
            }

            //chi tiet san pham
            $new_detail = $oNews->show_products_detail($b);
            //print_r($new_detail);
            $smarty->assign("new_detail", $new_detail);
            $news_category = $new_detail["news_category"];

            //Seo google
            $smarty->assign("seo_title", $function->sql_injection($new_detail["seo_title"]));
            $smarty->assign("seo_key", $function->sql_injection($new_detail["seo_key"]));
            $smarty->assign("seo_desc", $function->sql_injection($new_detail["seo_desc"]));
            $rs_key = $oNews->show_keyword(0, 5, $news_category);
            $smarty->assign("rs_key", $rs_key);

            //hinh anh san pham
            $images = $oNews->show_coupons_img($b);
            $smarty->assign("images", $images);

            //Lua chon khi mua
            $option = $oNews->show_coupons_option($b);
            $smarty->assign("option", $option);

            //Thuoc tinh san pham
            $property = $oNews->show_coupons_property($b);
            $smarty->assign("property", $property);

            //up so lan xem
            $oNews->coupons_products_views($new_detail["news_id"]);

            //show comment
            $bo_cm = $oNews->show_comment(0, 10, $b);
            for ($i = 0; $i < count($bo_cm); $i++) {
                $con_cm[$i] = $oNews->show_comment_con(0, 10, $bo_cm[$i]["id"]);
            }
            $smarty->assign("bo_cm", $bo_cm);
            $smarty->assign("con_cm", $con_cm);

            ///////////////////////////Menu san pham///////////////////////////
            //category hien tai
            $new_cat_name = $oNews->category_name_category_id($news_category);
            $smarty->assign("new_cat_name", $new_cat_name);
            $smarty->assign("category_hover", $new_cat_name["category_url"]);
            $smarty->assign("category_name", $new_cat_name["category_name"]);
            $smarty->assign("category_content", $new_cat_name["category_content"]);

            //category cha
            $category_parent_id = $oNews->category_all_parent_id($new_cat_name["parent_id"]);
            $smarty->assign("category_parent_id", $category_parent_id);
            $smarty->assign("supcate_hover", $category_parent_id["category_url"]);
            $smarty->assign("supcate_name", $category_parent_id["category_name"]);
            $smarty->assign("supcate_content", $category_parent_id["category_content"]);

            //category ong noi
            $category_parent_id_home = $oNews->category_all_parent_id($category_parent_id["parent_id"]);
            $smarty->assign("category_parent_id_home", $category_parent_id_home);
            $smarty->assign("home_hover", $category_parent_id_home["category_url"]);
            $smarty->assign("name_home", $category_parent_id_home["category_name"]);

            //menu left
            $smarty->assign("catename_left", $category_parent_id["category_name"]);
            $category_left = $oNews->category_all_home(0, $category_parent_id["category_id"], 0, 20);
            $smarty->assign("category_left", $category_left);

            //San pham cung loai
            $rs = $oNews->show_all_coupons_coupons($news_category, 0, 1, 0, 0, 20, 'pos', $b);

            $smarty->assign("rs", $rs);

            //////////////////////////////////////////////////////////////////////////////
            ////////////////////////////// bo loc san pham ///////////////////////////////
            $smarty->assign("cate_filter", "supcate");
            $smarty->assign("url_filter", $new_cat_name["category_url"]);
            $category_id = $new_cat_name["category_id"];
            $parent_id = $new_cat_name["parent_id"];

            $arr_link = explode("?", $function->sql_injection($_SERVER['REQUEST_URI']));
            $arr_link[1] = isset($arr_link[1]) ? $arr_link[1] : "";
            $arr_fil = explode("_", $arr_link[1]);
            $arr_fil[1] = isset($arr_fil[1]) ? $arr_fil[1] : "";
            $arr_fil[2] = isset($arr_fil[2]) ? $arr_fil[2] : "";
            $arr_fil[3] = isset($arr_fil[3]) ? $arr_fil[3] : "";
            $arr_fil[4] = isset($arr_fil[4]) ? $arr_fil[4] : "";
            $arr_fil[5] = isset($arr_fil[5]) ? $arr_fil[5] : "";
            $arr_fil[6] = isset($arr_fil[6]) ? $arr_fil[6] : "";

            // bo loc 1
            $check_one = $oNews->num_filter_one($category_id);
            if ($check_one) {
                $category_one = $category_id;
            } else {
                $category_one = $parent_id;
            }
            if ($arr_fil[1] == "" or $arr_fil[1] == "all") {
                $fil_one = 'all';
            } else {
                $fil_one = $arr_fil[1];
                $seo_one = $oNews->seo_filter_one($category_one, $fil_one);;
                $key_one = $seo_one["name"] . " " . $seo_one["filter_name"];
            }
            $smarty->assign("fil_one", $fil_one);
            $smarty->assign("numf_one", $oNews->num_filter_one($category_one));
            $smarty->assign("rs_one", $oNews->show_filter_one($category_one));

            // bo loc 2
            $check_two = $oNews->num_filter_two($category_id);
            if ($check_two) {
                $category_two = $category_id;
            } else {
                $category_two = $parent_id;
            }
            if ($arr_fil[2] == '' or $arr_fil[2] == 'all') {
                $fil_two = 'all';
            } else {
                $fil_two = $arr_fil[2];
                $seo_two = $oNews->seo_filter_two($category_two, $fil_two);
                $key_two = $seo_two["name"] . " " . $seo_two["filter_name"];
            }
            $smarty->assign("fil_two", $fil_two);
            $smarty->assign("numf_two", $oNews->num_filter_two($category_two));
            $smarty->assign("rs_two", $oNews->show_filter_two($category_two));

            // bo loc 3
            $check_three = $oNews->num_filter_three($category_id);
            if ($check_three) {
                $category_three = $category_id;
            } else {
                $category_three = $parent_id;
            }
            if ($arr_fil[3] == '' or $arr_fil[3] == 'all') {
                $fil_three = 'all';
            } else {
                $fil_three = $arr_fil[3];
                $seo_three = $oNews->seo_filter_three($category_three, $fil_three);
                $key_three = $seo_three["name"] . " " . $seo_three["filter_name"];
            }
            $smarty->assign("fil_three", $fil_three);
            $smarty->assign("numf_three", $oNews->num_filter_three($category_three));
            $smarty->assign("rs_three", $oNews->show_filter_three($category_three));

            // bo loc 4
            $check_four = $oNews->num_filter_four($category_id);
            if ($check_four) {
                $category_four = $category_id;
            } else {
                $category_four = $parent_id;
            }
            if ($arr_fil[4] == '' or $arr_fil[4] == 'all') {
                $fil_four = 'all';
            } else {
                $fil_four = $arr_fil[4];
                $seo_four = $oNews->seo_filter_four($category_four, $fil_four);
                $key_four = $seo_four["name"] . " " . $seo_four["filter_name"];
            }
            $smarty->assign("fil_four", $fil_four);
            $smarty->assign("numf_four", $oNews->num_filter_four($category_four));
            $smarty->assign("rs_four", $oNews->show_filter_four($category_four));

            // bo loc tinh thanh
            $rs_priority = $oNews->filter_priority(0, 100);
            $smarty->assign("rs_priority", $rs_priority);
            if ($arr_fil[5] == "" or $arr_fil[5] == "all") {
                $fil_cty = 'all';
            } else {
                $fil_cty = $arr_fil[5];
            }
            $smarty->assign("fil_cty", $fil_cty);
            // bo loc quan huyen
            $rs_district = $oNews->filter_district(0, 100, $fil_cty);
            $smarty->assign("rs_district", $rs_district);
            if ($arr_fil[6] == "" or $arr_fil[6] == "all") {
                $fil_dis = 'all';
            } else {
                $fil_dis = $arr_fil[6];
            }
            $smarty->assign("fil_dis", $fil_dis);
            ////////////////////////////////// end bo loc ////////////////////////////////

            //////////////////////////////////Giao dien hien thi ////////////////////////////////
            $layout = $new_cat_name["layout"];

            return $smarty->fetch($themes . "/web/detail{$layout}.html");
            break;
        //////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////search////////////////////////////////////////
    }
    return null;
}
