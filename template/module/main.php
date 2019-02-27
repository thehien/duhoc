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
// list country
    $rs_list_country = $oNews->show_list_country();
    $smarty->assign("rs_list_country", $rs_list_country);

// list number mobile
    $rs_mobile_code = $oNews->show_list_mobile_code();
    $smarty->assign("rs_mobile_code", $rs_mobile_code);

// Get all language
    $list_language = $oNews->get_all_language();
    $smarty->assign("list_language", $list_language);


    $list_service = $oNews->get_all_service();
    $smarty->assign("list_service", $list_service);

    $list_software = $oNews->get_all_software();
    $smarty->assign("list_software", $list_software);

// translate from/to
    $rs_all_language = $oMember->show_all_language();
    $smarty->assign("rs_all_language", $rs_all_language);

// subject field
    $rs_all_subject_field = $oMember->show_all_subject_field();
    $smarty->assign("rs_all_subject_field", $rs_all_subject_field);


// Normal login
    if ($_SESSION[URL_HOME]["is_login"]) {
        $show_member = $oMember->show_member_id($function->sql_injection($_SESSION[URL_HOME]["userid_u"]));
        $smarty->assign("show_member", $show_member);

        $number_notices = $oMember->show_number_order_notices($_SESSION[URL_HOME]["userid_u"]);
        $smarty->assign("number_notices", $number_notices);
    }

// Chuyen vien login
    if ($_SESSION[URL_HOME]["is_login_cv"]) {
        $show_expert_user = $oMember->show_expert_user_id($function->sql_injection($_SESSION[URL_HOME]["userid_cv_u"]));

        $getFromtoLanguage = $oMember->show_from_to_language($function->sql_injection($_SESSION[URL_HOME]["userid_cv_u"]));

        $number_trans_notices = $oMember->show_number_trans_notices($_SESSION[URL_HOME]["userid_cv_u"]);
        $smarty->assign("number_trans_notices", $number_trans_notices);

        // List special category name
        $listSpecialCategory = explode(',', $show_expert_user['special_category']);
        foreach ($listSpecialCategory as $key => $value) {
            $listSpecialName[] = $oMember->show_special_category_name($value);
        }

        $smarty->assign("show_member_language", $getFromtoLanguage);
        $smarty->assign("show_member", $show_expert_user);
        $smarty->assign("show_member_category", $listSpecialName);
        $smarty->assign("show_member_about", $show_expert_user['about']);

        $show_software = $oMember->show_list_software($function->sql_injection($_SESSION[URL_HOME]["userid_cv_u"]));
        $smarty->assign("show_software", $show_software);

        $show_service = $oMember->show_list_service($function->sql_injection($_SESSION[URL_HOME]["userid_cv_u"]));
        $smarty->assign("show_service", $show_service);
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

    $all_order_numbers = $oMember->show_all_number_order($_SESSION[URL_HOME]["userid_u"]);
    $smarty->assign('all_order_numbers', $all_order_numbers);

    $rs_numbers = $oMember->show_numer_order_active($_SESSION[URL_HOME]["userid_u"]);
    $smarty->assign('rs_numbers', $rs_numbers);

    $rs_final_numbers = $oMember->show_numer_order_final($_SESSION[URL_HOME]["userid_u"]);
    $smarty->assign('rs_final_numbers', $rs_final_numbers);

    $rs_cancel_numbers = $oMember->show_numer_order_cancel($_SESSION[URL_HOME]["userid_u"]);
    $smarty->assign('rs_cancel_numbers', $rs_cancel_numbers);

    $rs_accept_number = $oMember->show_numer_accept_active($_SESSION[URL_HOME]["userid_cv_u"]);
    $smarty->assign('rs_accept_number', $rs_accept_number);

    $rs_finalize_number = $oMember->show_numer_accept_finalize($_SESSION[URL_HOME]["userid_cv_u"]);
    $smarty->assign('rs_finalize_number', $rs_finalize_number);

    switch (strtolower($a)) {
        /////////////////////////////////////////////Trang chu/////////////////////////////////////
        case 'index':
        default:
            $smarty->assign("home", 1);
            $smarty->assign("category_id", 1);
            $smarty->assign("category_hover", "trang-chu");
            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);

            //Seo google
            $rs_key = $oNews->show_keyword(0, 5, 1);
            $smarty->assign("rs_key", $rs_key);

            $order_rs = 'ORDER BY cc.news_id desc';
            // All job
            $result = $oNews->show_all_filter_home(0, 10, 0, 0, 1, 0, 'all', 'all', 'all', 'all', 'all', 'all',
                $order_rs, 2);
            $smarty->assign("rs", $result);

            $translater = $oNews->get_all_translater();
            $smarty->assign("translater", $translater);

            // Get all special category
            $list_special_cate = $oNews->get_all_special_category();
            $smarty->assign("list_special_cate", $list_special_cate);

            return $smarty->fetch($themes . "/index.html");
            break;

        ////////////////////////////////////////////////////////////////////////////////////
        case "translate":
            // Get list order translate
            $orderSession = $_SESSION[URL_HOME]["Shopping"];

            if ($_POST) {
                $translateId = $function->sql_injection($_POST['translateId']);
                $messages = $function->sql_injection($_POST['messages']);
                $oNews->update_order_language($orderSession, $translateId, $messages);
            }

            // Define session for translate
            $translateSession = $function->sql_injection($_SESSION[URL_HOME]["Shopping"]);
            $smarty->assign("translateSession", $translateSession);

            // Get from language
            $from_language = $oNews->get_list_from_language();
            $smarty->assign("from_language", $from_language);

            $to_language = $oNews->get_list_to_language();
            $smarty->assign("to_language", $to_language);

            // Get all special category
            $list_special_cate = $oNews->get_all_special_category();
            $smarty->assign("list_special_cate", $list_special_cate);

            $userId = 0;
            $list_order_translate = $oNews->get_order_translate($orderSession, $userId);
            $smarty->assign("list_order_translate", $list_order_translate);

            $list_order_translate_finish = $oNews->get_order_translate_finish($orderSession, $userId);
            $smarty->assign("list_order_translate_finish", $list_order_translate_finish);

            $total_price = $oNews->get_total_price_translate($orderSession, $userId);
            $smarty->assign("total_price", $total_price);

            $total_count = $oNews->get_total_count_translate($orderSession, $userId);
            $smarty->assign("total_count", number_format((float)$total_count, 0, ',', ','));

            $order_language = $oNews->get_order_language($orderSession, $userId);
            $smarty->assign("order_language", $order_language);

            return $smarty->fetch($themes . "/user/translate.html");
            break;

        case "login":
            return $smarty->fetch($themes . "/user/login.html");
            break;

        case 'loginexe':
            $oMember = new Member;
            $password = $function->clean_string(md5($_POST["password"]));
            $email = $function->sql_injection($_POST["email"]);
            $check_user = $oMember->check_user($email);

            if ($check_user == true) {
                $_SESSION[URL_HOME]['logined_userok'] = $oMember->check_login($email, $password);

                if ($_SESSION[URL_HOME]['logined_userok'] == true) {
                    $_SESSION[URL_HOME]['logined_user'] = LOGINED_TRUE;
                    $function->goto_url(URL_HOMEPAGE . "info.html");
                } else {
                    $_SESSION[URL_HOME]['logined_user'] = 0;
                    $_SESSION[URL_HOME]["warning"] = lang_member_login_pass;
                    $smarty->assign("warning", $function->clean_string($_SESSION[URL_HOME]["warning"]));

                    return $smarty->fetch($themes . "/user/login.html");
                }
            } else {
                $_SESSION[URL_HOME]["warning"] = lang_member_login_name;
                $smarty->assign("warning", $function->clean_string($_SESSION[URL_HOME]["warning"]));

                return $smarty->fetch($themes . "/user/login.html");
            }

            break;

        case 'loginorder':
            $oMember = new Member;
            $password = $function->clean_string(md5($_POST["password"]));
            $email = $function->sql_injection($_POST["email"]);
            $check_user = $oMember->check_user($email);
            // Login error
            $total_count = $oNews->get_total_count_translate($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("total_count", $total_count);

            $list_order_translate_finish = $oNews->get_order_translate_finish($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("list_order_translate_finish", $list_order_translate_finish);

            $total_price = $oNews->get_total_price_translate($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("total_price", $total_price);

            $order_language = $oNews->get_order_language($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("order_language", $order_language);

            $check_cart = $oCart->check_cart_session($function->sql_injection($_SESSION[URL_HOME]["Shopping"]));
            if ($check_cart > 0) {
                $incart = $oCart->show_cart_coupons($function->sql_injection($_SESSION[URL_HOME]["Shopping"]));
                $smarty->assign("incart", $incart);
            } else {
                return $function->msg_box_new(lang_member_shopping, 3, "{$_SESSION[URL_HOME]['tinseo']}");
            }

            if ($check_user == true) {
                $_SESSION[URL_HOME]['logined_userok'] = $oMember->check_login($email, $password);

                if ($_SESSION[URL_HOME]['logined_userok'] == true) {
                    $_SESSION[URL_HOME]['logined_user'] = LOGINED_TRUE;
                    $function->goto_url(URL_HOMEPAGE . "order.html");
                } else {
                    $_SESSION[URL_HOME]['logined_user'] = 0;
                    $_SESSION[URL_HOME]["warning"] = lang_member_login_pass;
                    $smarty->assign("warning", $function->clean_string($_SESSION[URL_HOME]["warning"]));

                    return $smarty->fetch($themes . "/web/cart.html");
                }
            } else {
                $_SESSION[URL_HOME]["warning"] = lang_member_login_name;
                $smarty->assign("warning", $function->clean_string($_SESSION[URL_HOME]["warning"]));

                return $smarty->fetch($themes . "/web/cart.html");
            }
            break;

        case "logout":
//Destroy entire session
            session_destroy();
            $function->goto_url(URL_HOMEPAGE . "index.html");
            break;

        //////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////Gio hang//////////////////////////////////////
        case "add-cart":
            $smarty->assign("name_home", lang_cart);
            if ($_POST["submit"]) {

                $estimate = $function->sql_injection($_POST['estimate']);

                $fromLanguage = implode(',', $_POST["from_language"]);
                $toLanguage = implode(',', $_POST["to_language"]);

                foreach ($_POST["translate_id"] as $key => $translateOrder) {
                    $num_product = $oCart->check_product_id_member();
                    if ($num_product < 20) {
                        $num = $oCart->check_product_in_cart($function->sql_injection($_SESSION[URL_HOME]["Shopping"]),
                            $translateOrder, 0);
                        if ($num > 0) {
                            $oCart->update_product_in_cart($function->sql_injection($_SESSION[URL_HOME]["Shopping"]),
                                $translateOrder, 0);
                        } else {
                            $oCart->add_product_in_cart($function->sql_injection($_SESSION[URL_HOME]["Shopping"]),
                                $translateOrder, $estimate);
                        }
                    }
                }
                unset($_SESSION[URL_HOME]['cart']);
                $function->goto_url(URL_HOMEPAGE . "order.html");
            }
            break;

        case "order":
            $smarty->assign("name_home", lang_cart);
            $smarty->assign("category_name", lang_cart);
            $_SESSION[URL_HOME]['shopping'] = $function->clean_string($_SERVER['REQUEST_URI']);

            $total_count = $oNews->get_total_count_translate($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("total_count", $total_count);

            $list_order_translate_finish = $oNews->get_order_translate_finish($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("list_order_translate_finish", $list_order_translate_finish);

            $total_price = $oNews->get_total_price_translate($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("total_price", $total_price);

            $order_language = $oNews->get_order_language($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("order_language", $order_language);

            $check_cart = $oCart->check_cart_session($function->sql_injection($_SESSION[URL_HOME]["Shopping"]));
            if ($check_cart > 0) {
                $incart = $oCart->show_cart_coupons($function->sql_injection($_SESSION[URL_HOME]["Shopping"]));

                $smarty->assign("incart", $incart);
                return $smarty->fetch($themes . "/web/cart.html");
            } else {
                return $function->msg_box_new(lang_member_shopping, 3, "{$_SESSION[URL_HOME]['tinseo']}");
            }
            break;

/////////////////////////////////////////////////////////////////////////////////////
        case "pre-payment":
            $total_count = $oNews->get_total_count_translate($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("total_count", $total_count);

            $list_order_translate_finish = $oNews->get_order_translate_finish($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("list_order_translate_finish", $list_order_translate_finish);

            $total_price = $oNews->get_total_price_translate($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("total_price", $total_price);

            $order_language = $oNews->get_order_language($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("order_language", $order_language);

            $first_name = $function->sql_injection($_POST['first_name']);
            $last_name = $function->sql_injection($_POST['last_name']);
            $fullname = $first_name . " " . $last_name;
            $userid_u = $function->sql_injection($_POST['userid_u']);
            $address = $function->sql_injection($_POST['address']);
            $country = $function->sql_injection($_POST['country']);
            $mobile = $function->sql_injection($_POST['mobile']);
            $email = $function->sql_injection($_POST['email']);
            $mobileCode = $function->sql_injection($_POST['mobileCode']);
            $total_prices = $function->sql_injection($_POST['total_prices']);
            $total_words = $function->sql_injection($_POST['total_words']);
            $option_payment = 'COD';

            $isNotices = false;
            $newArrayCode = [];
            foreach ($list_order_translate_finish as $key => $value) {
                $isOrderRequest = $oCart->views_coupon_request($value['id']);

                if (!$isOrderRequest[0]['translate_id']) {
                    $isNotices = true;
                    $coupon_code = rand(1, 10000000);
                    $order_status = 1;
                    if ($oCart->add_table_orders($userid_u, $option_payment, $country, $address, $mobile, $fullname,
                        $mobileCode, $email, $total_prices, $total_words, $order_status, $coupon_code, $value['id'])) {

                        $to = $email;
                        $from = lang_email;
                        $title = 'We have received your translation request with Order ID : ' . $coupon_code;
                        $FromName = lang_website;
                        // Merge all order code
                        $newArrayCode[$key] = $coupon_code;

                        $rs_order = $oMember->views_orders_detail($coupon_code);
                        $smarty->assign("rs_order", $rs_order);
                        $smarty->assign("name", $fullname);
                        $smarty->assign("website", URL_HOME);
                        $smarty->assign("coupons_code", $coupon_code);
                        $securityID = md5(rand(111111, 999999));
                        $smarty->assign('securityId', $securityID);
                        // Send mail request order
                        if (LANG_AUGE == 0) {
                            $content = $smarty->fetch($themes . "/msgbox/email_order_request.html");
                            $function->smtpmailer_request($to, $from, $FromName, $title, $content);
                        } elseif (LANG_AUGE == 1) {
                            $content = $smarty->fetch($themes . "/msgbox/email_order_request_en.html");
                            $function->smtpmailer_request($to, $from, $FromName, $title, $content);
                        }
                    }
                }

                $string = " ";
                if ($isNotices) {
                    // Add notices
                    $user_id = $userid_u;
                    $contentNotices = "We have just received your translation request. Please review the order and make payment. <strong>ID Project:</strong> " . $coupon_code . "; ";

                    $contentNotices .= "<strong>Translate From:</strong>";
                    foreach ($order_language as $key => $value1) {
                        if ($value1['translate_id'] == $value['id']) {
                            $contentNotices .= $value1['from_language_name'] . $string;
                        }
                    }
                    $contentNotices .= "<strong>Translate To:</strong>";

                    foreach ($order_language as $key => $value1) {
                        if ($value1['translate_id'] == $value['id']) {
                            $contentNotices .= $value1['to_language_name'] . $string;
                        }
                    }

                    $contentNotices .= " <strong>Words:</strong> " . $rs_order[0]['count_text'] . ";  <strong>Created Date:</strong> " . $rs_order[0]['ngay_mua'] . "; <strong>Estimated Delivery:</strong> " . $rs_order[0]['estimate'] . " (hours); <strong>Amount:</strong> $ " . $rs_order[0]['price'] . "";
                    $oCart->add_notices_order($coupon_code, $user_id, $contentNotices);
                }
            }
            $_SESSION[URL_HOME]["coupon_code"] = $newArrayCode;
            return $smarty->fetch($themes . "/web/temp_payment.html");
            break;

/////////////////////////////////////////////////////////////////////////////////////
        case "confirm-payment":
            if ($_SESSION[URL_HOME]['logined_user']) {
                if ($b) {
                    $orderHash = $b;
                    $successOrder = explode('-', $b);

                    $isValidOrder = $oMember->check_order_code_valid($successOrder[0]);

                    if ($isValidOrder > 0) {
                        $isPaymentOrder = $oMember->update_payment_order($successOrder[0]);
                        if ($isPaymentOrder) {
                            $function->goto_url(URL_HOMEPAGE . "payment.html");
                        }
                    }
                } else {
                    $function->goto_url(URL_HOMEPAGE . "info.html");
                }
            } else {
                $function->goto_url(URL_HOMEPAGE . "login.html");
            }
            break;


/////////////////////////////////////////////////////////////////////////////////////
        case "cancel-payment":
            if ($_SESSION[URL_HOME]['logined_user']) {
                if ($b) {
                    $orderHash = $b;
                    $cancelOrder = explode('-', $orderHash);

                    $isValidOrder = $oMember->check_order_code_valid($cancelOrder[0]);

                    if ($isValidOrder > 0) {
                        $isCancelOrder = $oMember->cancel_payment_order($cancelOrder[0]);
                        if ($isCancelOrder) {
                            $smarty->assign("cancelSuccess",
                                "Cancel order with id <strong>" . $cancelOrder[0] . "</strong> success.");
                            $smarty->assign("all_order", 1);
                            $rs_news = $oMember->show_all_translate_orders(0, 20, 0);
                            $smarty->assign("rs_news", $rs_news);
                            foreach ($rs_news as $value) {
                                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
                            }
                            $smarty->assign("fromTolanguage", $fromTolanguage);
                            return $smarty->fetch($themes . "/user/payment_all.html");
                        }
                    }
                } else {
                    $function->goto_url(URL_HOMEPAGE . "info.html");
                }
            } else {
                $function->goto_url(URL_HOMEPAGE . "login.html");
            }
            break;
/////////////////////////////////////////////////////////////////////////////////////
        case "payment":
            $total_count = $oNews->get_total_count_translate($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("total_count", $total_count);

            $list_order_translate_finish = $oNews->get_order_translate_finish($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("list_order_translate_finish", $list_order_translate_finish);

            $total_price = $oNews->get_total_price_translate($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("total_price", $total_price);

            $order_language = $oNews->get_order_language($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("order_language", $order_language);

            $countOrderStatus = $oNews->get_order_status_not_active($_SESSION[URL_HOME]["Shopping"]);
            $smarty->assign("countOrderStatus", $countOrderStatus);

            return $smarty->fetch($themes . "/web/payment.html");
            break;

/////////////////////////////////////////////////////////////////////////////////////
        case 'cartorder':
// thong tin user
            $smarty->assign("name_home", lang_thongbao);
            $option_payment = $function->sql_injection($_POST['option_payment']);
            $first_name = $function->sql_injection($_POST['first_name']);
            $last_name = $function->sql_injection($_POST['last_name']);
            $fullname = $first_name . " " . $last_name;
            $email = $function->sql_injection($_POST['email']);

            $newArrayCode = [];
            $newArrayCode = $_SESSION[URL_HOME]["coupon_code"];

// Thanh toan khi giao hang
            if ($option_payment == "COD") {

                foreach ($newArrayCode as $coupon_code) {

                    $payment_type = 2;
                    $oCart->update_table_orders_active($coupon_code, $payment_type);

                    // Add notices
                    $coupon_code = $coupon_code;
                    $user_id = $_SESSION[URL_HOME]["userid_u"];
                    $contentNotices = "<strong>ID Project:</strong> " . $coupon_code . ". Your order has been paid successfully";
                    $oCart->add_notices_order($coupon_code, $user_id, $contentNotices);

                    $oCart->delete_cart($function->sql_injection($_SESSION[URL_HOME]["Shopping"]));
                    $oCart->delete_translate_order($function->sql_injection($_SESSION[URL_HOME]["Shopping"]));

                    //gui mail
                    $smarty->assign("coupon_code", $coupon_code);
                    $smarty->assign("fullname", $fullname);
                    $smarty->assign("website", lang_website);

                    // Status
                    $rs_status = $oMember->show_coupons_status(1);
                    $smarty->assign("rs_status", $rs_status);
                    $rs_edit = $oMember->show_coupons_orders_status($coupon_code);
                    $smarty->assign("rs_edit", $rs_edit);
                    $rs_order = $oMember->views_orders_detail($coupon_code);
                    $smarty->assign("rs_order", $rs_order);
                    // info

                    $order_language = $oNews->get_order_language($_SESSION[URL_HOME]["Shopping"], 0);
                    $smarty->assign("order_language", $order_language);

                    $to = $email;
                    $from = lang_email;
                    $title = 'Your order has been paid successfully with Order ID: ' . $coupon_code;
                    $FromName = lang_website;

                    if (LANG_AUGE == 0) {
                        $content = $smarty->fetch($themes . "/msgbox/email_order.html");
                        $function->smtpmailer($to, $from, $FromName, $title, $content);
                        $function->goto_url(URL_HOMEPAGE . "success.html");
                    } else {
                        if (LANG_AUGE == 1) {
                            $content = $smarty->fetch($themes . "/msgbox/email_order_en.html");
                            $function->smtpmailer($to, $from, $FromName, $title, $content);
                            $function->goto_url(URL_HOMEPAGE . "success.html");
                        }
                    }
                }
            }
            break;

/////////////////////////////////////////////////////////////////////////////////////
        case 'success':
            $smarty->assign("name_home", "Đặt hàng thành công");

            $smarty->assign("firstname", $firstname);
            $smarty->assign("email", $email);
            $smarty->assign("website", lang_website);
            $newOrderArray = [];
            foreach ($_SESSION[URL_HOME]["coupon_code"] as $key => $value) {
                $smarty->assign("coupon_code", $value);
                $rs_order1 = $oMember->views_orders_detail($value);
                $newOrderArray = array_merge($newOrderArray, $rs_order1);
            }
            $smarty->assign("newOrderArray", $newOrderArray);

            $order_language = $oNews->get_order_language($_SESSION[URL_HOME]["Shopping"], 0);
            $smarty->assign("order_language", $order_language);

            if (LANG_AUGE == 0) {
                return $function->msg_box_new($smarty->fetch($themes . "/msgbox/msgbox_order.html"), 500,
                    $_SESSION[URL_HOME]['tinseo']);
            } else {
                return $function->msg_box_new($smarty->fetch($themes . "/msgbox/msgbox_order_en.html"), 500,
                    $_SESSION[URL_HOME]['tinseo']);
            }
            break;

/////////////////////////////////////////////////////////////////////////////////////

        case 'notices':
            $smarty->assign("notices", 1);
            $rs_notices = $oMember->show_all_coupons_order_notices($_SESSION[URL_HOME]["userid_u"], 8);
            $smarty->assign("rs_notices", $rs_notices);
            return $smarty->fetch($themes . "/user/notices.html");
            break;

        case 'notices_readed':
            $smarty->assign("notices", 1);
            $oMember->update_notices($_SESSION[URL_HOME]["userid_u"]);
            $rs_notices = $oMember->show_all_coupons_order_notices($_SESSION[URL_HOME]["userid_u"], 100);
            $smarty->assign("rs_notices", $rs_notices);

            $number_notices = $oMember->show_number_order_notices($_SESSION[URL_HOME]["userid_u"]);
            $smarty->assign("number_notices", $number_notices);

            return $smarty->fetch($themes . "/user/notices.html");
            break;

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "register":
            $smarty->assign("active", 1);
            $smarty->assign("name_home", lang_member_index);
            if (isset($_SESSION[URL_HOME]['logined_user']) AND $_SESSION[URL_HOME]['logined_user'] == LOGINED_TRUE AND $_SESSION[URL_HOME]['logined_userok'] == true) {
                $function->goto_url(URL_HOMEPAGE . "info.html");
            } else {
                $smarty->assign("warning", $function->clean_string($_SESSION[URL_HOME]["warning"]));
                $_SESSION[URL_HOME]["warning"] = "";
                return $smarty->fetch($themes . "/user/index.html");
            }
            break;

        case "info":
            $smarty->assign("info", 1);
            $smarty->assign("name_home", lang_member_info);
            $_SESSION[URL_HOME]['url_info'] = $function->clean_string($_SERVER['REQUEST_URI']);
            if (isset($_SESSION[URL_HOME]['logined_user']) AND $_SESSION[URL_HOME]['logined_user'] == LOGINED_TRUE AND $_SESSION[URL_HOME]['logined_userok'] == true) {

                // Define session for translate
                $translateSession = $function->sql_injection($_SESSION[URL_HOME]["Shopping"]);
                $smarty->assign("translateSession", $translateSession);

// Get all translater
                $allCV = $oMember->get_all_cv();
                $smarty->assign("allCV", $allCV);

                // Get all customer
                $all_customer_online = $oMember->get_all_customer();
                $smarty->assign("all_customer_online", $all_customer_online);

                // Get all latest order
                $latest_order = $oMember->show_all_latest_order(0, 10);
                $smarty->assign("latest_order", $latest_order);

                // Get all accept order
                $accept_order = $oMember->show_all_accept_orders(0, 10, 0);
                $smarty->assign("accept_order", $accept_order);

                foreach ($latest_order as $value) {
                    $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
                }
                $smarty->assign("fromTolanguage", $fromTolanguage);

                foreach ($allCV as $key => $value) {
                    // List special category name
                    $listSpecialCategory = explode(',', $value['special_category']);
                    foreach ($listSpecialCategory as $key => $value) {
                        $listSpecialName[] = $oMember->show_special_category_name($value);
                    }
                    $smarty->assign("show_member_category", $listSpecialName);
                }

                ////////////////////////////////////////////////////////////////
                // Tin tuc
                ////////////////////////////////////////////////////////////////

                $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);
                // new center
                $category_id = 93;
                $new_center = $oNews->show_new_detail_category($category_id, 10);
                $smarty->assign("new_center", $new_center);

                // New right
                $new_right = $oNews->show_new_detail_category(94, 10);
                $smarty->assign("new_right", $new_right);

                $news_category = $new_detail["news_category"];
                //Seo google
                $smarty->assign("seo_title", $function->sql_injection($new_detail["seo_title"]));
                $smarty->assign("seo_key", $function->sql_injection($new_detail["seo_key"]));
                $smarty->assign("seo_desc", $function->sql_injection($new_detail["seo_desc"]));

                // News cung loai
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
                $rs = $oNews->show_news_category(146, 0, $page, $per_page);
                $smarty->assign("rs", $rs);

                return $smarty->fetch($themes . "/user/info.html");
            } else {
                $function->goto_url(URL_HOMEPAGE . "register.html");
            }
            break;

        case "news-detail":
            $arr_detail = explode("-", $b);
            $b = $function->sql_injection($arr_detail[0]);

            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);
// chuyen tieu de menu con sang ip
            $new_detail = $oNews->show_new_detail($b);
            $smarty->assign("new_detail", $new_detail);
            $news_category = $new_detail["news_category"];

// Du lieu tin tuc moi
            $category_id = 94;
            $new_list = $oNews->show_new_detail_category($category_id, 10);
            $smarty->assign("new_list", $new_list);

            $category_id = 93;
            $new_center = $oNews->show_new_detail_category($category_id, 100);
            $smarty->assign("new_center", $new_center);

//Seo google
            $smarty->assign("seo_title", $function->sql_injection($new_detail["seo_title"]));
            $smarty->assign("seo_key", $function->sql_injection($new_detail["seo_key"]));
            $smarty->assign("seo_desc", $function->sql_injection($new_detail["seo_desc"]));
            $rs_key = $oNews->show_keyword(0, 5, $news_category);
            $smarty->assign("rs_key", $rs_key);

// up so lan xem
            $oNews->coupons_news_views($new_detail["news_id"]);

// News cung loai
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

            return $smarty->fetch($themes . "/user/news/detail.html");
            break;


        case "all-translator":
            $smarty->assign("info", 1);
            $smarty->assign("name_home", lang_member_info);
            $_SESSION[URL_HOME]['url_info'] = $function->clean_string($_SERVER['REQUEST_URI']);
            if (isset($_SESSION[URL_HOME]['logined_user']) AND $_SESSION[URL_HOME]['logined_user'] == LOGINED_TRUE AND $_SESSION[URL_HOME]['logined_userok'] == true) {

                // Get all translater
                $allCV = $oMember->get_all_cv();
                $smarty->assign("allCV", $allCV);

                // Get all accept order
                $accept_order = $oMember->show_all_coupons_orders_active(0, 15, 0);
                $smarty->assign("accept_order", $accept_order);

                foreach ($allCV as $key => $value) {
                    // List special category name
                    $listSpecialCategory = explode(',', $value['special_category']);
                    foreach ($listSpecialCategory as $key => $value) {
                        $listSpecialName[] = $oMember->show_special_category_name($value);
                    }
                    $smarty->assign("show_member_category", $listSpecialName);
                }

                return $smarty->fetch($themes . "/user/list_cv_home.html");
            } else {
                $function->goto_url(URL_HOMEPAGE . "register.html");
            }
            break;

        case "accept-order":
            $smarty->assign("info", 1);
            $smarty->assign("name_home", lang_member_info);
            $_SESSION[URL_HOME]['url_info'] = $function->clean_string($_SERVER['REQUEST_URI']);
            if (isset($_SESSION[URL_HOME]['logined_user']) AND $_SESSION[URL_HOME]['logined_user'] == LOGINED_TRUE AND $_SESSION[URL_HOME]['logined_userok'] == true) {

                // Get all accept order
                $accept_order = $oMember->show_all_accept_orders(0, 50, 0);
                $smarty->assign("accept_order", $accept_order);

                return $smarty->fetch($themes . "/user/list_accept_order.html");
            } else {
                $function->goto_url(URL_HOMEPAGE . "register.html");
            }
            break;


        case "accept-order-cv":
            $smarty->assign("info", 1);
            $smarty->assign("name_home", lang_member_info);
            $_SESSION[URL_HOME]['url_info'] = $function->clean_string($_SERVER['REQUEST_URI']);
            if (isset($_SESSION[URL_HOME]['logined_user_cv']) AND $_SESSION[URL_HOME]['logined_user_cv'] == LOGINED_TRUE AND $_SESSION[URL_HOME]['logined_user_cv_ok'] == true) {

                // Get all accept order
                $accept_order = $oMember->show_all_accept_orders(0, 50, 0);
                $smarty->assign("accept_order", $accept_order);

                return $smarty->fetch($themes . "/user/list_accept_order_cv.html");
            } else {
                $function->goto_url(URL_HOMEPAGE . "register.html");
            }
            break;

        case "all-cv":
            $smarty->assign("all-cv", 1);
            return $smarty->fetch($themes . "/user/all_cv.html");
            break;

        case "all-order-cv":
            $smarty->assign("all-order-cv", 1);
            $rs_news_industry = $oMember->show_all_industry(1000);
            $smarty->assign("rs_news_industry", $rs_news_industry);

            return $smarty->fetch($themes . "/user/all_order_cv.html");
            break;

        case "edit-member":
            if (isset($_SESSION[URL_HOME]['logined_user']) AND $_SESSION[URL_HOME]['logined_user'] == LOGINED_TRUE AND $_SESSION[URL_HOME]['logined_userok'] == true) {
                $firstname = $function->sql_injection($_POST["firstname"]);
                $password = $function->sql_injection($_POST["password"]);
                $email = $function->sql_injection($_POST["email"]);
                $mobile = $function->sql_injection($_POST["mobile"]);
                $address = $function->sql_injection($_POST["address"]);

                $yahoochat = $function->sql_injection($_POST["yahoochat"]);
                $facebook = $function->sql_injection($_POST["facebook"]);
                $oMember->check_login_new();

                // image
                $data['images_old'] = stripslashes($function->clean_string($_POST['images_old']));
                $images_old = $data['images_old'];
                global $files_mime, $extension;
                $max_size = 100000;
                if (isset($_FILES['filename']) && !empty($_FILES['filename']['tmp_name'])) {
                    $file_name = $_FILES['filename']['name'];
                    $file_size = $_FILES['filename']['size'];
                    $file_type = $_FILES['filename']['type'];

                    $files_mime = explode(",", $files_mime);
                    $extension = explode(",", $extension);

                    $files_extension = end(explode(".", $file_name));
                    $files_extension = strtolower($files_extension);
                    if ($file_size > $max_size) {
                        return $function->msg_box_new("Unable to upload pictures" . $max_size . " byte ", 3,
                            "{$_SESSION[URL_HOME]['url_info']}");
                    }
                    if (!in_array($files_extension, $extension) || !in_array($file_type, $files_mime)) {
                        return $function->msg_box_new("File type or file extension is not valid", 3,
                            "{$_SESSION[URL_HOME]['url_info']}");
                    }
                    //  Upload news image
                    $filename = $_FILES['filename']['name'];
                    $news = IMG_IMG;
                    $delete = IMG_DELETE;
                    if ($filename != '') {
                        $upload = new Upload('filename', $delete);
                        $upload->setTypes(
                            [
                                'jpg',
                                'jpeg',
                                'gif',
                                'png'
                            ]
                        );
                        $upload->setMaxFileSize(1);
                        if (!$upload->process()) {
                            $error = $upload->getMessage();
                        } else {
                            $filename_new = $upload->getFileName();
                            $filename = "M" . date("hs") . _ . $filename_new;
                            $data['filename'] = $filename;
                            $myThumb = new Thumbnail();
                            $myThumb->setImgSource($delete . $filename_new);
                            $myThumb->setMaxSize(180, 180);
                            $myThumb->Create($news . $filename);

                        }
                    }

                }
                // end image
                if ($data['filename'] == "") {
                    $oMember->edit_q_member($firstname, $password, $email, $mobile, $images_old, $yahoochat, $facebook,
                        $address);
                    $function->goto_url($_SESSION[URL_HOME]['url_info']);

                } else {
                    $oMember->edit_q_member($firstname, $password, $email, $mobile,
                        $function->sql_injection($data['filename']), $yahoochat, $facebook, $address);
                    @unlink(IMG_IMG . $images_old);
                    $function->goto_url($_SESSION[URL_HOME]['url_info']);

                }
            } else {
                $function->goto_url(URL_HOMEPAGE . "register.html");
            }
            break;

        case "add-cv":
            $smarty->assign("active", 1);
            $smarty->assign("name_home", lang_thongbao);
            $firstname = $function->sql_injection($_POST["first_name"]);
            $lastname = $function->sql_injection($_POST["last_name"]);
            $mobileCode = $function->sql_injection($_POST["mobileCode"]);
            $mobile = $function->sql_injection($_POST["mobile"]);
            $email = $function->sql_injection($_POST["email"]);
            $pass = $function->clean_string(md5($_POST["password"]));
            $country = $function->sql_injection($_POST["country"]);
            $from_translate = $function->sql_injection($_POST["from_translate"]);
            $to_translate = $function->sql_injection($_POST["to_translate"]);
            $special_category = $function->sql_injection($_POST["special_category"]);

            // regist to DB
            $data['info']['first_name'] = $function->sql_injection($_POST["first_name"]);
            $data['info']['last_name'] = $function->sql_injection($_POST["last_name"]);
            $data['info']['mobile_code'] = $function->sql_injection($_POST["mobileCode"]);
            $data['info']['mobile'] = $function->sql_injection($_POST["mobile"]);
            $data['info']['email'] = $function->sql_injection($_POST["email"]);
            $data['info']['password'] = $function->clean_string(md5($_POST["password"]));
            $data['info']['country'] = $function->sql_injection($_POST["country"]);
            $data['info']['from_translate'] = $function->sql_injection($_POST["from_translate"]);
            $data['info']['to_translate'] = $function->sql_injection($_POST["to_translate"]);
            $data['info']['special_category'] = $function->sql_injection($_POST["special_category"]);
            $data['info']['address'] = $function->sql_injection($_POST["address"]);

            $name = $firstname . " " . $lastname;
            $check = substr_count($name, " ");
            $check_name = $oMember->check_name_cv($name);
            $check_email_register = $oMember->check_email_cv_register($email);
            if ($name != "") {
                $_SESSION[URL_HOME]['info']["name"] = $name;
                $_SESSION[URL_HOME]['info']["email"] = $email;

                if ($pass == "" or $email == "") {
                    $smarty->assign("warningMessage", lang_member_member_name);

                    return $smarty->fetch($themes . "/index.html");
                } elseif ($check_name == true) {
                    $smarty->assign("warningMessage", lang_member_member_user);

                    return $smarty->fetch($themes . "/index.html");
                } elseif ($check_email_register != 0) {
                    $smarty->assign("warningMessage", lang_member_member_email);

                    return $smarty->fetch($themes . "/index.html");
                } else {
                    $oMember->insert_cv($data['info']);
                    $smarty->assign("name", $name);
                    $smarty->assign("email", $email);
                    $smarty->assign("website", URL_HOME);
                    $securityID = md5(rand(111111, 999999));
                    $smarty->assign('securityId', $securityID);

                    if (LANG_AUGE == 0) {
                        //gui mail
                        $to = $email;
                        $from = lang_email;
                        $title = 'Đăng ký chuyên viên ngôn ngữ thành công';
                        $FromName = lang_website;
                        $content = $smarty->fetch($themes . "/msg/email_dangky_cv.html");
                        $function->smtpmailer($to, $from, $FromName, $title, $content);
                        //thong bao
                        unset($_SESSION[URL_HOME]['info']);
                        $smarty->assign("email", $email);

                        return $function->msg_box_new($smarty->fetch($themes . "/msg/msgbox_dangky_cv.html"), 100,
                            "dang-ky-chuyen-vien.html");

                    } else {
                        if (LANG_AUGE == 1) {
                            //gui mail
                            $to = $email;
                            $from = lang_email;
                            $title = 'Register successfully';
                            $FromName = lang_website;
                            $content = $smarty->fetch($themes . "/msg/email_dangky_cv_en.html");
                            $function->smtpmailer($to, $from, $FromName, $title, $content);
                            //thong bao
                            unset($_SESSION[URL_HOME]['info']);

                            return $function->msg_box_new($smarty->fetch($themes . "/msg/msgbox_dangky_cv_en.html"),
                                100, "dang-ky-chuyen-vien.html");
                        }
                    }

                }
            } else {
                return $smarty->fetch($themes . "/user/chuyen-vien.html");
            }
            break;

        case "confirm-cv":
            if ($b && $c && $d) {
                $confirmAccount = $b;
                $confirmActive = $c;

                $check_email_register = $oMember->check_email_register_cv($confirmAccount);
                if ($check_email_register > 0) {
                    $isUpdate = $oMember->active_account_cv($confirmAccount, $confirmActive);
                    if ($isUpdate) {
                        return $function->msg_box_new($smarty->fetch($themes . "/msg/msgbox_active_success_cv.html"),
                            100, "register.html");
                    }
                }
            }
            break;
        case "info-cv":
            $smarty->assign("info", 1);
            $smarty->assign("name_home", lang_member_info);
            $_SESSION[URL_HOME]['url_info'] = $function->clean_string($_SERVER['REQUEST_URI']);
            if (isset($_SESSION[URL_HOME]['logined_user_cv']) AND $_SESSION[URL_HOME]['logined_user_cv'] == LOGINED_TRUE AND $_SESSION[URL_HOME]['logined_user_cv_ok'] == true) {

                $rs_order_active = $oMember->show_all_coupons_orders_cv_active(0, 20, 0);
                $smarty->assign("rs_order_active", $rs_order_active);

                foreach ($rs_order_active as $value) {
                    $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
                }
                $smarty->assign("fromTolanguage", $fromTolanguage);

                $rs_news_industry = $oMember->show_all_industry(10);
                $smarty->assign("rs_news_industry", $rs_news_industry);

                // Get all translater
                $all_cv_online = $oMember->get_all_translator_online();
                $smarty->assign("all_cv_online", $all_cv_online);

                return $smarty->fetch($themes . "/user/info-cv.html");
            } else {
                $function->goto_url(URL_HOMEPAGE . "index.html");
            }
            break;

        case "add-member":
            $smarty->assign("active", 1);
            $smarty->assign("name_home", lang_thongbao);
            $firstname = $function->sql_injection($_POST["first_name"]);
            $lastname = $function->sql_injection($_POST["last_name"]);
            $mobileCode = $function->sql_injection($_POST["mobileCode"]);
            $mobile = $function->sql_injection($_POST["mobile"]);
            $email = $function->sql_injection($_POST["email"]);
            $pass = $function->clean_string(md5($_POST["password"]));
            $country = $function->sql_injection($_POST["country"]);

            $name = $firstname . " " . $lastname;
            $check = substr_count($name, " ");
            $check_name = $oMember->check_name($name);
            $check_email_register = $oMember->check_email_register($email);
            if ($name != "") {
                $_SESSION[URL_HOME]['info']["name"] = $name;
                $_SESSION[URL_HOME]['info']["email"] = $email;

                if ($pass == "" or $email == "") {
                    $smarty->assign("warningMessage", lang_member_member_name);

                    return $smarty->fetch($themes . "/user/index.html");
                } elseif ($check_name == true) {
                    $smarty->assign("warningMessage", lang_member_member_user);

                    return $smarty->fetch($themes . "/user/index.html");
                } elseif ($check_email_register != 0) {

                    $smarty->assign("warningMessage", lang_member_member_email);

                    return $smarty->fetch($themes . "/user/index.html");
                } else {
                    $oMember->insert_admin($firstname, $lastname, $mobileCode, $mobile, $pass, $email, $country);
                    $smarty->assign("name", $name);
                    $smarty->assign("email", $email);
                    $smarty->assign("website", URL_HOME);
                    $securityID = md5(rand(111111, 999999));
                    $smarty->assign('securityId', $securityID);

                    if (LANG_AUGE == 0) {
                        //gui mail
                        $to = $email;
                        $from = lang_email;
                        $title = 'Đăng ký thành viên thành công';
                        $FromName = lang_website;
                        $content = $smarty->fetch($themes . "/msg/email_dangky.html");
                        $function->smtpmailer($to, $from, $FromName, $title, $content);
                        //thong bao
                        unset($_SESSION[URL_HOME]['info']);
                        $smarty->assign("email", $email);

                        return $function->msg_box_new($smarty->fetch($themes . "/msg/msgbox_dangky.html"), 100,
                            "register.html");

                    } else {
                        if (LANG_AUGE == 1) {
                            //gui mail
                            $to = $email;
                            $from = lang_email;
                            $title = 'Register successfully';
                            $FromName = lang_website;
                            $content = $smarty->fetch($themes . "/msg/email_dangky_en.html");
                            $function->smtpmailer($to, $from, $FromName, $title, $content);
                            //thong bao
                            unset($_SESSION[URL_HOME]['info']);

                            return $function->msg_box_new($smarty->fetch($themes . "/msg/msgbox_dangky_en.html"), 100,
                                "register.html");
                        }
                    }

                }
            } else {
                return $smarty->fetch($themes . "/user/index.html");
            }
            break;
        case "confirm-member":
            if ($b && $c && $d) {
                $confirmAccount = $b;
                $confirmActive = $c;

                $check_email_register = $oMember->check_email_register($confirmAccount);
                if ($check_email_register > 0) {
                    $isUpdate = $oMember->active_account($confirmAccount, $confirmActive);
                    if ($isUpdate) {
                        return $function->msg_box_new($smarty->fetch($themes . "/msg/msgbox_active_success.html"), 100,
                            "register.html");
                    }
                }
            }
            break;

        case "forgot-password";
            return $smarty->fetch($themes . "/user/pass.html");
            break;

        case "forgot-password-cv";
            return $smarty->fetch($themes . "/user/pass-cv.html");
            break;

        case "change-password";
            if (!$b || !$c) {
                return $smarty->fetch($themes . "/index.html");
            } else {
                $email = $b;
                $smarty->assign("email", $email);

                return $smarty->fetch($themes . "/user/change-pass.html");
            }
            break;

        case "change-password-cv";
            if (!$b || !$c) {
                return $smarty->fetch($themes . "/index.html");
            } else {
                $email = $b;
                $smarty->assign("email", $email);

                return $smarty->fetch($themes . "/user/change-pass-cv.html");
            }
            break;

        case "change-password-exe";
            $email = $function->sql_injection($_POST["email"]);
            if (filter_var($email, FILTER_VALIDATE_EMAIL)) {

                $password = $function->sql_injection($_POST["password"]);
                $rePassword = $function->sql_injection($_POST["re-password"]);

                if ($password == $rePassword) {
                    $oMember->reset_password(md5($password), $email);
                    $smarty->assign("success", lang_member_forgot_pass);

                    return $smarty->fetch($themes . "/user/change-pass.html");

                } else {
                    $smarty->assign("warning", lang_member_login_pass);
                    return $smarty->fetch($themes . "/user/change-pass.html");
                }
            } else {
                return $smarty->fetch($themes . "/index.html");
            }
            break;

        case "change-password-cv-exe";
            $email = $function->sql_injection($_POST["email"]);
            if (filter_var($email, FILTER_VALIDATE_EMAIL)) {

                $password = $function->sql_injection($_POST["password"]);
                $rePassword = $function->sql_injection($_POST["re-password"]);

                if ($password == $rePassword) {
                    $oMember->reset_password_cv(md5($password), $email);
                    $smarty->assign("success", lang_member_forgot_pass);

                    return $smarty->fetch($themes . "/user/change-pass-cv.html");

                } else {
                    $smarty->assign("warning", lang_member_login_pass);

                    return $smarty->fetch($themes . "/user/change-pass-cv.html");
                }
            } else {
                return $smarty->fetch($themes . "/index.html");
            }
            break;

        case "confirm-password":
            $smarty->assign("name_home", lang_member_password);
            if ($_POST['email'] != "") {
                $email = $function->sql_injection($_POST["email"]);
                if ($oMember->check_userid_exist($email) > 0) {
                    if ($member_info = $oMember->show_users_email($email)) {
                        $securityID = md5(rand(111111, 999999));
                        $smarty->assign("username", $member_info["username"]);
                        $smarty->assign("email", $member_info["email"]);
                        $smarty->assign("name", $member_info["name"]);
                        $smarty->assign("website", URL_HOME);
                        $smarty->assign('securityId', $securityID);

                        if (LANG_AUGE == 0) {
                            //gui mail
                            $to = $email;
                            $from = lang_email;
                            $title = 'Thông tin mật khẩu mới';
                            $FromName = lang_website;
                            $content = $smarty->fetch($themes . "/msg/email_pass.html");
                            $function->smtpmailer($to, $from, $FromName, $title, $content);

                            //thong bao
                            return $function->msg_box_new($smarty->fetch($themes . "/msg/msgbox_pass.html"), 10,
                                "login.html");
                        } else {
                            if (LANG_AUGE == 1) {
                                //gui mail
                                $to = $email;
                                $from = lang_email;
                                $title = 'Info new password';
                                $FromName = lang_website;
                                $content = $smarty->fetch($themes . "/msg/email_pass_en.html");
                                $function->smtpmailer($to, $from, $FromName, $title, $content);

                                //thong bao
                                return $function->msg_box_new($smarty->fetch($themes . "/msg/msgbox_pass_en.html"), 10,
                                    "login.html");

                            }
                        }

                    }
                } else {
                    $smarty->assign("warning", lang_member_pass_check);
                    return $smarty->fetch($themes . "/user/pass.html");
                }
            } else {
                return $smarty->fetch($themes . "/user/pass.html");
            }
            break;

        case "confirm-password-cv":
            $smarty->assign("name_home", lang_member_password);
            if ($_POST['email'] != "") {
                $email = $function->sql_injection($_POST["email"]);
                if ($oMember->check_userid_exist_cv($email) > 0) {
                    if ($member_info = $oMember->show_users_email_cv($email)) {
                        $securityID = md5(rand(111111, 999999));
                        $smarty->assign("username", $member_info["username"]);
                        $smarty->assign("email", $member_info["email"]);
                        $smarty->assign("name", $member_info["name"]);
                        $smarty->assign("website", URL_HOME);
                        $smarty->assign('securityId', $securityID);

                        if (LANG_AUGE == 0) {
                            //gui mail
                            $to = $email;
                            $from = lang_email;
                            $title = 'Thông tin mật khẩu mới của dịch giả';
                            $FromName = lang_website;
                            $content = $smarty->fetch($themes . "/msg/email_pass_cv.html");
                            $function->smtpmailer($to, $from, $FromName, $title, $content);

                            //thong bao
                            return $function->msg_box_new($smarty->fetch($themes . "/msg/msgbox_pass.html"), 10,
                                "login-cv.html");
                        } else {
                            if (LANG_AUGE == 1) {
                                //gui mail
                                $to = $email;
                                $from = lang_email;
                                $title = 'Info new password of translater';
                                $FromName = lang_website;
                                $content = $smarty->fetch($themes . "/msg/email_pass_cv_en.html");
                                $function->smtpmailer($to, $from, $FromName, $title, $content);

                                //thong bao
                                return $function->msg_box_new($smarty->fetch($themes . "/msg/msgbox_pass_en.html"), 10,
                                    "login-cv.html");

                            }
                        }

                    }
                } else {
                    $smarty->assign("warning", lang_member_pass_check);
                    return $smarty->fetch($themes . "/user/pass-cv.html");
                }
            } else {
                return $smarty->fetch($themes . "/user/pass-cv.html");
            }
            break;

        case "member-orders":
            $smarty->assign("name_home", lang_cart);
            $rs = $oMember->show_coupon_purchaseid_member(0, 100, 0);
            $smarty->assign("rs", $rs);

            return $smarty->fetch($themes . "/user/orders.html");
            break;
        case "orders_news":
            $smarty->assign("name_home", lang_cart);
            $rs_news = $oMember->show_all_coupons_orders(0, 100, 0);
            $smarty->assign("rs_news", $rs_news);

            return $smarty->fetch($themes . "/user/orders_news.html");
            break;
        case "member-xoa":
            $oMember->remove_purchaseid($b);
            $function->goto_url("../member-orders.html");
            break;
        case "member-status":
            $oMember->status_purchaseid($b, $c);
            $function->goto_url("../member-orders.html");
            break;
        //cong-tac-vien
        case "orders_ctv":
            $smarty->assign("name_home", lang_cart);
            $rs_news = $oMember->show_coupons_orders_ctv(0, 100, 0);
            $smarty->assign("rs_news", $rs_news);

            return $smarty->fetch($themes . "/user/orders_ctv.html");
            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "about-us":
            $smarty->assign("aboutus", 1);
            return $smarty->fetch($themes . "/web/aboutus.html");
            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "major-industry":
            $smarty->assign("major_industry", 1);

            // Get all special category
            $list_special_cate = $oNews->get_all_special_category();
            $smarty->assign("list_special_cate", $list_special_cate);

            return $smarty->fetch($themes . "/web/major_industry.html");
            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "industry-detail":
            $smarty->assign("industry_detail", 1);

            // Get all special category
            $list_special_cate = $oNews->get_all_special_category();
            $smarty->assign("list_special_cate", $list_special_cate);

            return $smarty->fetch($themes . "/web/major_industry_detail.html");
            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "how-it-works":
            $smarty->assign("how_it_works", 1);
            return $smarty->fetch($themes . "/web/how_it_works.html");
            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "service":
            $smarty->assign("service", 1);
            return $smarty->fetch($themes . "/web/service.html");
            break;

////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "help-center":
            $smarty->assign("help_center", 1);
            return $smarty->fetch($themes . "/web/help_center.html");
            break;

////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "for-customer":
            $smarty->assign("for_customer", 1);
            return $smarty->fetch($themes . "/web/support/for_customer.html");
            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "for-translator":
            $smarty->assign("for_translator", 1);
            return $smarty->fetch($themes . "/web/support/for_translator.html");
            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "help-detail":
            $smarty->assign("help_detail", 1);
            return $smarty->fetch($themes . "/web/support/help_detail.html");
            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "our-translator":
            $smarty->assign("ourtranslator", 1);
// Get all translater
            $allCV = $oMember->get_all_cv();
            $smarty->assign("allCV", $allCV);
            return $smarty->fetch($themes . "/web/ourtranslator.html");
            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "translator-job":
            $smarty->assign("translatorjob", 1);
            $rs_order_active = $oMember->show_all_coupons_orders_cv_active(0, 20, 0);
            $smarty->assign("rs_order_active", $rs_order_active);

// Get all translater
            $all_cv_online = $oMember->get_all_translator_online();
            $smarty->assign("all_cv_online", $all_cv_online);
            foreach ($all_cv_online as $key => $value) {
                $fromToLanguage[] = $oMember->show_from_to_language($value['translate_id']);
            }
            $smarty->assign("fromToLanguage", $fromToLanguage);

            return $smarty->fetch($themes . "/web/translatorjob.html");
            break;
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "dang-ky-chuyen-vien":
            $smarty->assign("active", 1);
            // Get all language
            $list_language = $oNews->get_all_language();
            $smarty->assign("list_language", $list_language);

            // Get all special category
            $list_special_cate = $oNews->get_all_special_category();
            $smarty->assign("list_special_cate", $list_special_cate);

            return $smarty->fetch($themes . "/user/dangkycv.html");
            break;

        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "login-cv":
            $smarty->assign("login-cv", 1);
            return $smarty->fetch($themes . "/user/login-cv.html");
            break;

        case 'logincv-exe':
            $oMember = new Member;
            $password = $function->clean_string(md5($_POST["password"]));
            $email = $function->sql_injection($_POST["email"]);
            $check_user = $oMember->check_user_cv($email);
            if ($check_user == true) {
                $_SESSION[URL_HOME]['logined_user_cv_ok'] = $oMember->check_login_cv($email, $password);

                if ($_SESSION[URL_HOME]['logined_user_cv_ok'] == true) {
                    $_SESSION[URL_HOME]['logined_user_cv'] = LOGINED_TRUE;
                    $function->goto_url(URL_HOMEPAGE . "info-cv.html");
                } else {
                    $_SESSION[URL_HOME]['logined_user_cv'] = 0;
                    $_SESSION[URL_HOME]["warning"] = lang_member_login_pass;
                    $smarty->assign("warning", $function->clean_string($_SESSION[URL_HOME]["warning"]));

                    return $smarty->fetch($themes . "/user/login-cv.html");
                }
            } else {
                $_SESSION[URL_HOME]["warning"] = lang_member_login_name;
                $smarty->assign("warning", $function->clean_string($_SESSION[URL_HOME]["warning"]));

                return $smarty->fetch($themes . "/user/login-cv.html");
            }

            break;

        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "profile-cv":
            if ($_SESSION[URL_HOME]['logined_user_cv']) {
                $smarty->assign("profile_cv", 1);
// Get all language
                $list_language = $oNews->get_all_language();
                $smarty->assign("list_language", $list_language);

                // Get list experience
                $list_experience = $oNews->get_all_list_experience();
                $smarty->assign("list_experience", $list_experience);

                return $smarty->fetch($themes . "/user/profile_cv.html");
            }

            break;

        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "setting-cv":
            if ($_SESSION[URL_HOME]['logined_user_cv']) {
                $smarty->assign("setting_cv", 1);
                return $smarty->fetch($themes . "/user/setting_cv.html");
            }

            break;

        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "profile":
            if ($_SESSION[URL_HOME]['logined_user']) {
                $smarty->assign("profile", 1);
                return $smarty->fetch($themes . "/user/profile.html");
            }
            break;

        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "setting":
            if ($_SESSION[URL_HOME]['logined_user']) {
                $smarty->assign("setting", 1);
                return $smarty->fetch($themes . "/user/setting.html");
            }

            break;
////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "payment-history":
            $smarty->assign("payment_history", 1);
            $rs_news = $oMember->show_all_coupons_orders(0, 30, 0);
//var_dump($rs_news);
            $smarty->assign("rs_news", $rs_news);
            return $smarty->fetch($themes . "/user/payment_history.html");
            break;

//////////////////////////////////////////////////////////////////////////////////////////////////////
        case "payment-history-delete":
            $smarty->assign("payment_history", 1);
            $checkPaymentId = $_POST['checkbox_id'];
            if ($checkPaymentId != null) {
                foreach ($checkPaymentId as $id) {
                    $checks = $oMember->check_delete($id);
                    if ($checks > 0) {
                        $smarty->assign("messageErr", lang_err_delete_payment);
                    } else {
                        $id = $function->sql_injection(intval($id));
                        $rs_order_detail = $oMember->get_id($id);
                        $oMember->delete_orders_detail($rs_order_detail['coupon_code']);
                        $oMember->delete_order($id);
                        $smarty->assign("messageSucc", lang_succ_delete_payment);
                    }
                }
            }
            $rs_news = $oMember->show_all_coupons_orders(0, 7, 0);
            $smarty->assign("rs_news", $rs_news);
            return $smarty->fetch($themes . "/user/payment_history.html");
            break;

        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "all-order":
            $smarty->assign("all_order", 1);
            $rs_news = $oMember->show_all_translate_orders(0, 20, 0);
            $smarty->assign("rs_news", $rs_news);
            foreach ($rs_news as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

            return $smarty->fetch($themes . "/user/payment_all.html");
            break;

        case "payment-active":
            $smarty->assign("payment_active", 1);
            $rs_news = $oMember->show_all_coupons_orders_active(0, 20, 0);
            foreach ($rs_news as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }

            $smarty->assign("fromTolanguage", $fromTolanguage);

            $smarty->assign("rs_news", $rs_news);
            return $smarty->fetch($themes . "/user/payment_active.html");
            break;

        case "send-order":
            $smarty->assign("send_order", 1);
            $translater_id = $_SESSION[URL_HOME]['userid_cv_u'];
// Get all value
            $rs_news = $oMember->show_all_accept_translate_active(0, 200, $translater_id);
            $smarty->assign("rs_news", $rs_news);

            foreach ($rs_news as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

// Get 1 latest value
            $rs_latest = $oMember->show_latest_accept_translate_active(0, 1, $translater_id);
            $smarty->assign("rs_latest", $rs_latest);
            return $smarty->fetch($themes . "/user/send_order.html");
            break;

        case "detail-order":
            $smarty->assign("send_order", 1);
            if ($_SESSION[URL_HOME]['logined_user_cv']) {
                if ($b) {
                    $orderHash = $b;
                    $viewOrder = explode('-', $orderHash);
                    $translater_id = $viewOrder[1];
                    // Get all value
                    $rs_news = $oMember->show_all_accept_translate_active(0, 200, $translater_id);
                    $smarty->assign("rs_news", $rs_news);

                    foreach ($rs_news as $value) {
                        $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
                    }
                    $smarty->assign("fromTolanguage", $fromTolanguage);

                    // Get data of order translate
                    $rs_detail = $oMember->show_coupons_orders_by_id($translater_id, $viewOrder[0]);
                    $smarty->assign("rs_detail", $rs_detail);

                    return $smarty->fetch($themes . "/user/send_order_detail.html");
                }
            } else {
                $function->goto_url(URL_HOMEPAGE . "index.html");
            }
            break;

        case "send-translate":
            $coupons_code_id = $function->sql_injection($_POST["coupon_code_id"]);
            $user_name = $function->sql_injection($_POST["user_name"]);
            $accountEmail = $function->sql_injection($_POST["user_email"]);
            $translater_id = $_SESSION[URL_HOME]['userid_cv_u'];
            $user_id = $function->sql_injection($_POST["user_id"]);
            // upload file translate complete
            if (isset($_FILES['translateFile'])) {
                $extend = explode('.', $_FILES['translateFile']['name']);
                $extend = $extend[(count($extend) - 1)];

                $pathDocument = DOCUMENT_ROOT . "/" . TRANS_UPLOAD . basename($_FILES['translateFile']['name']);
                if ($extend === 'doc' || $extend === 'docx' || $extend === 'txt' || $extend === 'pdf' || $extend === 'zip' || $extend === 'rar') {
                    // execute upload
                    if (move_uploaded_file($_FILES['translateFile']['tmp_name'], $pathDocument)) {
                        $file_name = $_FILES['translateFile']['name'];
                    } else {
                        $file_name = "";
                    }

                    // Create zip file
                    $zip = new ZipArchive();
                    $zipFile = $function->rand_string(10) . ".zip";
                    $rootDir = DOCUMENT_ROOT . "/" . TRANS_UPLOAD;
                    $filepath = $rootDir . $file_name;

                    if (file_exists($filepath . $zipFile)) {
                        unlink($rootDir . $zipFile);
                    }
                    if ($zip->open($rootDir . $zipFile, ZIPARCHIVE::CREATE) != true) {
                        die ("Could not open archive");
                    }
                    $zip->addFile($filepath, $file_name);
                    $zip->close();
                    // End create zip file

                    if ($file_name != "") {

                        $data['info']['user_id'] = $user_id;
                        $data['info']['translater_id'] = $translater_id;
                        $data['info']['order_id'] = $coupons_code_id;
                        $data['info']['file_name'] = $zipFile;
                        // Upload & insert img to DB
                        $oMember->insert_translate_file($data['info']);
                        // Remove file name
                        unlink($rootDir . $file_name);
                    }

                    $smarty->assign("name", $user_name);
                    $smarty->assign("coupons_code", $coupons_code_id);
                    $smarty->assign("website", URL_HOME);
                    $securityID = md5(rand(111111, 999999));
                    $smarty->assign('securityId', $securityID);

                    $rs_order = $oMember->views_orders_detail($coupons_code_id);
                    $smarty->assign("rs_order", $rs_order);

                    foreach ($rs_order as $value) {
                        $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
                    }
                    $smarty->assign("fromTolanguage", $fromTolanguage);

// Send mail accept order
                    $to = $accountEmail;
                    $from = lang_email;
                    $title = 'Received the complete order translate';
                    $FromName = lang_website;
// Send mail request order
                    $isSendSuccess = false;
                    if (LANG_AUGE == 0) {
                        $content = $smarty->fetch($themes . "/msgbox/email_order_final.html");
                        $function->smtpmailer_request($to, $from, $FromName, $title, $content);
                        $isSendSuccess = true;
                    } else {
                        if (LANG_AUGE == 1) {
                            $content = $smarty->fetch($themes . "/msgbox/email_order_final_en.html");
                            $function->smtpmailer_request($to, $from, $FromName, $title, $content);
                            $isSendSuccess = true;
                        }
                    }
                    if ($isSendSuccess) {
                        $smarty->assign("sendOrderComplete", true);
                        $smarty->assign("sendOrderUrl", URL_HOMEPAGE . "send-order.html");
                        // Get all value
                        $rs_news = $oMember->show_all_accept_translate_active(0, 200, $translater_id);
                        $smarty->assign("rs_news", $rs_news);

                        foreach ($rs_news as $value) {
                            $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
                        }
                        $smarty->assign("fromTolanguage", $fromTolanguage);

                        // Add notices finish
                        $coupon_code = $coupons_code_id;
                        $user_id = $translater_id;
                        $isComplete = 1;
                        $contentNotices = "<strong>ID Project</strong>: " . $coupon_code . "; Your order is complete";
                        $oCart->add_notices_trans_order($coupon_code, $user_id, $contentNotices, $isComplete);
                    }

                    return $smarty->fetch($themes . "/user/send_order.html");

                } else {

                    $rs_news = $oMember->show_all_accept_translate_active(0, 200, $translater_id);
                    $smarty->assign("rs_news", $rs_news);

                    foreach ($rs_news as $value) {
                        $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
                    }
                    $smarty->assign("fromTolanguage", $fromTolanguage);

                    // Get 1 latest value
                    $rs_latest = $oMember->show_latest_accept_translate_active(0, 1, $translater_id);
                    $smarty->assign("rs_latest", $rs_latest);

                    // Display error
                    $smarty->assign("err_msg", 'Please upload document such as pdf, text, word.');
                    return $smarty->fetch($themes . "/user/send_order.html");

                }
            }

            break;


        case "order-cancel":
            $smarty->assign("order_cancel", 1);
            $rs_news = $oMember->show_all_coupons_orders_cancel(0, 15, 0);
            foreach ($rs_news as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

            $smarty->assign("rs_news", $rs_news);
            return $smarty->fetch($themes . "/user/payment_cancel.html");
            break;

        case 'confirm-final':
            if ($_SESSION[URL_HOME]['logined_user']) {
                if ($b) {
                    $orderHash = $b;
                    $successOrder = explode('-', $b);

                    $isValidOrder = $oMember->check_order_code_valid($successOrder[0]);

                    if ($isValidOrder > 0) {
                        $isFinalOrder = $oMember->update_final_order($successOrder[0]);
                        if ($isFinalOrder) {
                            $function->goto_url(URL_HOMEPAGE . "finalized.html");
                        }
                    }

                } else {
                    $function->goto_url(URL_HOMEPAGE . "info.html");
                }
            } else {
                $function->goto_url(URL_HOMEPAGE . "login.html");
            }

            break;


        case "finalized":
            $smarty->assign("finalized", 1);
            // Get all value
            $rs_news = $oMember->show_all_translate_final(0, 200);
            $smarty->assign("rs_news", $rs_news);

            foreach ($rs_news as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

// Get 1 latest value
            $rs_latest = $oMember->show_latest_translate_final(0, 1);

            $smarty->assign("rs_latest", $rs_latest);

            return $smarty->fetch($themes . "/user/final.html");
            break;

        case "finalized-detail":
            $smarty->assign("finalized", 1);
            if ($_SESSION[URL_HOME]['logined_user']) {
                if ($b) {
                    $orderHash = $b;
                    $viewOrder = explode('-', $orderHash);
                    $translater_id = $viewOrder[1];

                    $smarty->assign("order_id", (int)$viewOrder[0]);
                    // Get all value
                    $rs_news = $oMember->show_all_translate_final(0, 200);
                    $smarty->assign("rs_news", $rs_news);
                    foreach ($rs_news as $value) {
                        $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
                    }
                    $smarty->assign("fromTolanguage", $fromTolanguage);

                    // Get data of order translate
                    $rs_detail = $oMember->show_final_detail_order_by_id($translater_id, $viewOrder[0]);
                    $smarty->assign("rs_detail", $rs_detail);

                    return $smarty->fetch($themes . "/user/final_detail.html");
                }
            } else {
                $function->goto_url(URL_HOMEPAGE . "index.html");
            }

            return $smarty->fetch($themes . "/user/final_detail.html");
            break;

////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "payment-detail":
            $smarty->assign("payment_active", 1);
            $translater_id = $function->sql_injection($c);
            $coupons_id = $function->sql_injection($b);

            if (!$translater_id) {
                $translater_id = 0;
            }

            $rs_detail = $oMember->show_coupons_orders_active_by_id($translater_id, $coupons_id);
            $smarty->assign("rs_detail", $rs_detail);


            foreach ($rs_detail as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);

                $my_date = $value['ngay_mua'];
                $one_day_after = date('Y-m-d H:i:s', strtotime($value['ngay_mua'] . '+1 days'));

                if ($my_date < $one_day_after) {
                    $smarty->assign("isLimit24h", true);
                } else {
                    $smarty->assign("isLimit24h", false);
                }
            }

            $smarty->assign("fromTolanguage", $fromTolanguage);

            return $smarty->fetch($themes . "/user/payment_detail.html");
            break;

        case "accept-detail":
            $smarty->assign("accept_active", 1);
            $translater_id = $function->sql_injection($c);
            $coupons_id = $function->sql_injection($b);

            $rs_detail = $oMember->show_coupons_accept_active_by_id($translater_id, $coupons_id);
            $smarty->assign("rs_detail", $rs_detail);

            foreach ($rs_detail as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

            return $smarty->fetch($themes . "/user/accept_detail.html");
            break;


////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "accept-history":
            $smarty->assign("accept_history", 1);
            $translater_id = $_SESSION[URL_HOME]['userid_cv_u'];
            $rs_news = $oMember->show_all_accept_translate_history(0, 200, $translater_id);
            foreach ($rs_news as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

            $smarty->assign("rs_news", $rs_news);
            return $smarty->fetch($themes . "/user/accept_history.html");
            break;


////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "accept-active":
            $smarty->assign("accept_active", 1);
            $translater_id = $_SESSION[URL_HOME]['userid_cv_u'];
            $rs_news = $oMember->show_all_accept_translate_active(0, 200, $translater_id);
            foreach ($rs_news as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

            $smarty->assign("rs_news", $rs_news);
            return $smarty->fetch($themes . "/user/accept_active.html");
            break;

////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "accept-finalized":
            $smarty->assign("accept_finalize", 1);
            $translater_id = $_SESSION[URL_HOME]['userid_cv_u'];
            $rs_news = $oMember->show_all_accept_translate_finalize(0, 200, $translater_id);
            foreach ($rs_news as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

            $smarty->assign("rs_news", $rs_news);
            return $smarty->fetch($themes . "/user/accept_finalize.html");
            break;

////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "earnings-report":
            $smarty->assign("earnings_report", 1);
            $translater_id = $_SESSION[URL_HOME]['userid_cv_u'];
            $rs_complete = $oMember->show_all_accept_translate_finalize(0, 200, $translater_id);
            $smarty->assign("rs_complete", $rs_complete);
            return $smarty->fetch($themes . "/user/earnings_report.html");
            break;

////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "withdrawal":
            $smarty->assign("withdrawal", 1);
            $translater_id = $_SESSION[URL_HOME]['userid_cv_u'];
            $rs_complete = $oMember->show_all_accept_translate_finalize(0, 200, $translater_id);
            $smarty->assign("rs_complete", $rs_complete);
            return $smarty->fetch($themes . "/user/withdrawal.html");
            break;

////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "accept-translate":
            $smarty->assign("accept_translate", 1);
            $fullName = $_SESSION[URL_HOME]['logined_user_cv_ok']["name"];
            $accountEmail = $_SESSION[URL_HOME]["email_u"];
            $translater_id = $function->sql_injection($_SESSION[URL_HOME]["userid_cv_u"]);
            $coupons_code_id = $function->sql_injection($_POST["coupon_code_id"]);

            $_SESSION[URL_HOME]['translater_id'] = $translater_id;
            $_SESSION[URL_HOME]['coupons_code_id'] = $coupons_code_id;

            $rs_order_active = $oMember->show_all_coupons_orders_cv_active(0, 1000, 0);
            $smarty->assign("rs_order_active", $rs_order_active);

// from to language
            foreach ($rs_order_active as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

// List industry
            $rs_news_industry = $oMember->show_all_industry(10);
            $smarty->assign("rs_news_industry", $rs_news_industry);


            if ($oCart->update_accept_translate($coupons_code_id, $translater_id)) {
// Send mail accept order
                $to = $accountEmail;
                $from = lang_email;
                $title = 'Received the accept order translate';
                $FromName = lang_website;

                $rs_detail = $oMember->show_order_active_by_translater_id($translater_id, $coupons_code_id);
                $smarty->assign("rs_detail", $rs_detail);

                foreach ($rs_detail as $key => $value) {
                    $order_language[] = $oMember->get_order_language_by_id($value['translate_id']);
                }
                $smarty->assign("order_language", $order_language);

                $smarty->assign("name", $fullName);
                $smarty->assign("coupons_code", $coupons_code_id);
                $smarty->assign("website", URL_HOME);
                $securityID = md5(rand(111111, 999999));
                $smarty->assign('securityId', $securityID);

// Send mail request order
                if (LANG_AUGE == 0) {
                    $content = $smarty->fetch($themes . "/msgbox/email_accept_order.html");
                    $function->smtpmailer_request($to, $from, $FromName, $title, $content);
                } else {
                    if (LANG_AUGE == 1) {
                        $content = $smarty->fetch($themes . "/msgbox/email_accept_order_en.html");
                        $function->smtpmailer_request($to, $from, $FromName, $title, $content);
                    }
                }

                // Add notices for translate
                $coupon_code = $coupons_code_id;
                $user_id = $translater_id;
                $contentNotices = "You received this order. <strong>ID Project:</strong> " . $coupon_code . "; ";

                $contentNotices .= "<strong>Translate From:</strong>";
                foreach ($order_language as $order_language_child) {
                    foreach ($order_language_child as $key => $value) {
                        $contentNotices .= $value['from_language_name'] . ",";
                    }
                }

                $contentNotices .= "<strong>Translate To:</strong>";

                foreach ($order_language as $order_language_child) {
                    foreach ($order_language_child as $key => $value) {
                        $contentNotices .= $value['to_language_name'] . ",";
                    }
                }

                $contentNotices .= " <strong>Words:</strong> " . $rs_detail[0]['total_words'] . "  <strong>Created Date:</strong> " . $rs_detail[0]['ngay_mua'] . "; <strong>Estimated Delivery:</strong> " . $rs_detail[0]['estimate'] . " (hours); <strong>Amount:</strong> $ " . $rs_detail[0]['price'] . "";

                $oCart->add_notices_trans_order($coupon_code, $user_id, $contentNotices);

                // Redirect to accept success
                $function->goto_url(URL_HOMEPAGE . "accept-waiting.html");
            }

            return $smarty->fetch($themes . "/user/info-cv.html");
            break;

        case 'accept-waiting':
            if (LANG_AUGE == 0) {
                return $function->msg_box_new($smarty->fetch($themes . "/msgbox/msgbox_accept_waiting.html"), 500,
                    $_SESSION[URL_HOME]['tinseo']);
            } else {
                return $function->msg_box_new($smarty->fetch($themes . "/msgbox/msgbox_accept_waiting_en.html"), 500,
                    $_SESSION[URL_HOME]['tinseo']);
            }
            break;

        case 'accept-success':
            $translater_id = $_SESSION[URL_HOME]['translater_id'];
            $coupons_code_id = $_SESSION[URL_HOME]['coupons_code_id'];
            $rs_detail = $oMember->show_order_active_by_translater_id($translater_id, $coupons_code_id);
            $smarty->assign("rs_detail", $rs_detail);

            foreach ($rs_detail as $key => $value) {
                $order_language[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("order_language", $order_language);

            if (LANG_AUGE == 0) {
                return $function->msg_box_new($smarty->fetch($themes . "/msgbox/msgbox_accept_order.html"), 500,
                    $_SESSION[URL_HOME]['tinseo']);
            } else {
                return $function->msg_box_new($smarty->fetch($themes . "/msgbox/msgbox_accept_order_en.html"), 500,
                    $_SESSION[URL_HOME]['tinseo']);
            }
            break;

        case 'confirm-accept-translate':
            if ($_SESSION[URL_HOME]['logined_user_cv']) {
                if ($b) {
                    $orderHash = $b;
                    $newOrder = explode('-', $b);
                    $checkOrderTranslate = $oMember->check_order_translate_active($newOrder[0]);
                    if ($checkOrderTranslate > 0) {
                        $acceptTranslate = 2;
                        $isUpdate = $oMember->accept_order_translate_active($newOrder[0], $acceptTranslate);

                        $pricePercent = $oMember->get_order_translate_active($newOrder[0]);

                        // Add notices for translate after confirm
                        $coupon_code = $_SESSION[URL_HOME]['coupons_code_id'];
                        $user_id = $_SESSION[URL_HOME]['userid_cv_u'];
                        $contentNotices = "Your income - <strong>ID Project:</strong> " . $coupon_code . " - Total: $ " . $pricePercent['price_percent'];
                        $oCart->add_notices_trans_order($coupon_code, $user_id, $contentNotices);

                        if ($isUpdate) {
                            $function->goto_url(URL_HOMEPAGE . "accept-success.html");
                        }
                    }

                } else {
                    $function->goto_url(URL_HOMEPAGE . "info-cv.html");
                }
            } else {
                $function->goto_url(URL_HOMEPAGE . "index.html");
            }

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
        case "order-detail":
            $arr_detail = explode("-", $b);
            $b = $function->sql_injection($arr_detail[0]);

            $order_detail = $oMember->show_coupons_orders_detail_by_id($b);
            $smarty->assign("order_detail", $order_detail);

            // Get all latest order
            $latest_order = $oMember->show_all_latest_order(0, 10);
            $smarty->assign("latest_order", $latest_order);

            foreach ($latest_order as $value) {
                $fromTolanguage[] = $oMember->get_order_language_by_id($value['translate_id']);
            }
            $smarty->assign("fromTolanguage", $fromTolanguage);

// preview file
            $file = $order_detail[0]['file_translate'];
            $fileType = end(explode('.', $file));

            if (preg_match_all('/images_file_/s', $file)) {
                $urlFile = URL_HOMEPAGE . PREVIEW_IMG_FILE . $file;
            } else {
                $urlFile = URL_HOMEPAGE . PREVIEW_FILE . $file;
            }

            if ($fileType == 'txt') {

                $originFile = file_get_contents($urlFile);
                $filepath = htmlentities($originFile);

            } elseif ($fileType == 'pdf') {

                $filepath = '<iframe src="https://docs.google.com/viewer?url=' . $urlFile . '&embedded=true" style="width:738px; height:500px;" frameborder="0"></iframe>';

            } elseif ($fileType == 'doc' || $fileType == 'docx') {

                $filepath = '<iframe src="https://docs.google.com/viewer?url=' . $urlFile . '&embedded=true"  width="738" height="500"></iframe>';

            }

            $previewFile = '<pre>';
            $previewFile .= $filepath;
            $previewFile .= '</pre>';

            $smarty->assign("previewFile", $previewFile);

            $fromTolanguage = $oMember->get_order_language_by_id($order_detail[0]['translate_id']);
            $smarty->assign("fromTolanguage", $fromTolanguage);

            $rs_news_industry = $oMember->show_all_industry(10);
            $smarty->assign("rs_news_industry", $rs_news_industry);

            return $smarty->fetch($themes . "/web/detail_order.html");
            break;

////////////////////////////////////////////////////////////////////////////////
        case "detail":
            $arr_detail = explode("-", $b);
            $b = $function->sql_injection($arr_detail[0]);

            $order_detail = $oMember->show_coupons_orders_detail_by_id($b);
            $smarty->assign("order_detail", $order_detail);

// preview file
            $file = $order_detail[0]['file_translate'];
            $fileType = end(explode('.', $file));

            if (preg_match_all('/images_file_/s', $file)) {
                $urlFile = URL_HOMEPAGE . PREVIEW_IMG_FILE . $file;
            } else {
                $urlFile = URL_HOMEPAGE . PREVIEW_FILE . $file;
            }

            if ($fileType == 'txt') {

                $originFile = file_get_contents($urlFile);
                $filepath = htmlentities($originFile);

            } elseif ($fileType == 'pdf') {

                $filepath = '<iframe src="https://docs.google.com/viewer?url=' . $urlFile . '&embedded=true" style="width:738px; height:500px;" frameborder="0"></iframe>';

            } elseif ($fileType == 'doc' || $fileType == 'docx') {

                $filepath = '<iframe src="https://docs.google.com/viewer?url=' . $urlFile . '&embedded=true"  width="738" height="500"></iframe>';

            }

            $previewFile = '<pre>';
            $previewFile .= $filepath;
            $previewFile .= '</pre>';

            $smarty->assign("previewFile", $previewFile);

            $fromTolanguage = $oMember->get_order_language_by_id($order_detail[0]['translate_id']);
            $smarty->assign("fromTolanguage", $fromTolanguage);

            $rs_news_industry = $oMember->show_all_industry(10);

            $smarty->assign("rs_news_industry", $rs_news_industry);

            return $smarty->fetch($themes . "/user/detail_order.html");
            break;

        case 'trans_notices':
            $smarty->assign("notices", 1);
            $rs_notices = $oMember->show_all_coupons_trans_notices($_SESSION[URL_HOME]["userid_cv_u"], 8);
            $smarty->assign("rs_notices", $rs_notices);
            return $smarty->fetch($themes . "/user/trans_notices.html");
            break;

        case 'trans_notices_readed':
            $smarty->assign("notices", 1);
            $oMember->update_trans_notices($_SESSION[URL_HOME]["userid_cv_u"]);
            $rs_notices = $oMember->show_all_coupons_trans_notices($_SESSION[URL_HOME]["userid_cv_u"], 100);
            $smarty->assign("rs_notices", $rs_notices);

            $number_trans_notices = $oMember->show_number_trans_notices($_SESSION[URL_HOME]["userid_cv_u"]);
            $smarty->assign("number_trans_notices", $number_trans_notices);

            return $smarty->fetch($themes . "/user/trans_notices.html");
            break;

////////////////////////////////////////////////////////////////////////////////////////////////////////
        case "news":
            $smarty->assign("news", 1);
            $spr_bo = $oNews->category_all_home(LANG_IDSERVICE, 0, 0, 10);
            for ($i = 0; $i < count($spr_bo); $i++) {

                $spr_con[$i] = $oNews->show_news_category(14, 0, 0, 100);

            }

            $smarty->assign("spr_bo", $spr_bo);
            $smarty->assign("spr_con", $spr_con);

            return $smarty->fetch($themes . "/web/news.html");
            break;

        case "search":
            $smarty->assign("name_home", lang_search_product);
            $arr_str = explode("-", $b);
            $paramSearch = $arr_str[0];
            $valueSearch = $arr_str[1];
            $_SESSION[URL_HOME]['param_search'] = $function->sql_injection($paramSearch);
            $_SESSION[URL_HOME]['value_search'] = $function->sql_injection($valueSearch);
            $function->goto_url(URL_HOMEPAGE . "search_detail.html");
            break;
        //////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////search detail/////////////////////////////////
        case "search_detail":
            $smarty->assign("name_home", lang_search_product);
            $param_search = $_SESSION[URL_HOME]['param_search'];
            $value_search = $_SESSION[URL_HOME]['value_search'];

// Search job
            $result = $oNews->search_coupons_coupons($param_search, $value_search);
//$function->debugPrint($result);
            $smarty->assign("result", $result);

            $rs_news_industry = $oMember->show_all_industry(10);
            $smarty->assign("rs_news_industry", $rs_news_industry);

            return $smarty->fetch($themes . "/user/search_order.html");
            break;

        //////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////Email //////////////////////////////////////
        case "email-add":
            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);
            global $db, $smarty, $function, $general;

            $txt_email = $function->sql_injection($_POST["txt_email"]);
            $txt_name = $function->sql_injection($_POST["txt_name"]);
            $txt_tel = $function->sql_injection($_POST["txt_tel"]);
            $txt_address = $function->sql_injection($_POST["txt_address"]);
            $txt_content = "Email";

            if ($_POST["button"]) {
                $oNews->add_table_support($txt_email, $txt_name, $txt_tel, $txt_address, $txt_content);
                $function->goto_url(URL_HOMEPAGE . "email-thanks.html");
            } else {
                $function->goto_url(URL_HOMEPAGE);
            }
            break;
        case "email-thanks":
            $smarty->assign("name_home", lang_thongbao);
            $smarty->assign("category_hover", "support");

            return $function->msg_box_new(lang_main_support, 3, URL_HOMEPAGE);
            break;
        ///////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        case 'all-location':

            $cateLocation = $oNews->filter_priority(0, 100);
            $smarty->assign("cateLocation", $cateLocation);

            return $smarty->fetch($themes . "/public/content/all_location.html");
            break;

        ///////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////Product new link/////////////////////////////
        case $url_category:

            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);
            //Seo google
            $smarty->assign("seo_title", $function->sql_injection($rs_category["seo_title"]));
            $smarty->assign("seo_key", $function->sql_injection($rs_category["seo_key"]));
            $smarty->assign("seo_desc", $function->sql_injection($rs_category["seo_desc"]));
            $rs_key = $oNews->show_keyword(0, 5, $category_id);
            $smarty->assign("rs_key", $rs_key);

            //Category hien tai
            $_SESSION[URL_HOME]["category_id"] = $category_id;
            $smarty->assign("category_hover", $category_url);
            $smarty->assign("category_name", $category_name);
            $smarty->assign("category_id", $category_id);
            $smarty->assign("category_content", $category_content);
            $smarty->assign("category_img", $category_img);
            $smarty->assign("category_color", $category_color);

            //Category cha
            $new_cat_name_con = $oNews->category_all_parent_id($parent_id);
            $smarty->assign("new_cat_name_con", $new_cat_name_con);
            $smarty->assign("supcate_hover", $new_cat_name_con["category_url"]);
            $smarty->assign("supcate_name", $new_cat_name_con["category_name"]);
            $smarty->assign("supcate_content", $new_cat_name_con["category_content"]);
            $_SESSION[URL_HOME]["category_id"] = $new_cat_name_con["category_id"];

            //menu left
            $smarty->assign("catename_left", $category_name);
            $category_left = $oNews->category_all_home(0, $category_id, 0, 20);
            $smarty->assign("category_left", $category_left);

            //Section Product
            $cate_bo = $oNews->category_all_home(0, $category_id, 0, 10);
            for ($i = 0; $i < count($cate_bo); $i++) {
                $cate_pro[$i] = $oNews->show_all_coupons_coupons($cate_bo[$i]["category_id"], 0, 1, 0, 0, 10, 'pos');
            }
            $smarty->assign("cate_bo", $cate_bo);
            $smarty->assign("cate_pro", $cate_pro);

            ///////////////////////////////////////////////////////////////////////////////
            ////////////////////////////// bo loc san pham ////////////////////////////////
            $smarty->assign("cate_filter", $a);
            $smarty->assign("url_filter", $category_url);
            $category_id = $category_id;
            $parent_id = $parent_id;
            $key_cty = '';
            $key_dis = '';
            $key_one = '';
            $key_two = '';
            $key_three = '';
            $key_four = '';
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
                $seo_cty = $oNews->seo_filter_cities($fil_cty);
                $key_cty = $seo_cty["cityname"];
            }
            $smarty->assign("fil_cty", $fil_cty);

            // bo loc quan huyen
            $rs_district = $oNews->filter_district(0, 100, $fil_cty);
            $smarty->assign("rs_district", $rs_district);
            if ($arr_fil[6] == "" or $arr_fil[6] == "all") {
                $fil_dis = 'all';
            } else {
                $fil_dis = $arr_fil[6];
                $seo_dis = $oNews->seo_filter_district($fil_dis);
                $key_dis = $seo_dis["district_name"];
            }
            $smarty->assign("fil_dis", $fil_dis);

            //Seo google filter
            if ($key_cty != "") {
                $key_cty = " " . $key_cty;
            } else {
                $key_cty = "";
            }
            if ($key_dis != "") {
                $key_dis = " " . $key_dis;
            } else {
                $key_dis = "";
            }

            if ($key_one != "") {
                $key_one = " " . $key_one;
            } else {
                $key_one = "";
            }
            if ($key_two != "") {
                $key_two = " " . $key_two;
            } else {
                $key_two = "";
            }
            if ($key_three != "") {
                $key_three = " " . $key_three;
            } else {
                $key_three = "";
            }
            if ($key_four != "") {
                $key_four = " " . $key_four;
            } else {
                $key_four = "";
            }

            $key_filter = $key_cty . $key_dis . $key_one . $key_two . $key_three . $key_four;
            $smarty->assign("key_filter", $key_filter);

            ////////////////////////////////// ORDER BY ///////////////////////////////////
            $get_order = $function->sql_injection($arr_str[1]);
            if ($get_order == "") {
                $get_order = '0';
            }
            if ($get_order == '0') {
                $order_by = 'ORDER BY cc.pos desc, cc.created_date desc';
            }
            if ($get_order == 'priceasc') {
                $order_by = 'ORDER BY cc.price_new asc';
                $smarty->assign("hover_gia", "priceasc");
            }
            if ($get_order == 'pricedesc') {
                $order_by = 'ORDER BY cc.price_new desc';
                $smarty->assign("hover_gia", "pricedesc");
            }
            if ($get_order == 'saledesc') {
                $order_by = 'ORDER BY giam_gia desc';
                $smarty->assign("hover_gia", "saledesc");
            }
            if ($get_order == 'viewsdesc') {
                $order_by = 'ORDER BY cc.views desc';
                $smarty->assign("hover_gia", "viewsdesc");
            }

            $page = $function->sql_injection($arr_str[2]);
            if ($page == "") {
                $page = 0;
            }
            $numf = $oNews->num_all_filter(0, $category_id, 1, 0, $fil_one, $fil_two, $fil_three, $fil_four, $fil_cty,
                $fil_dis);

            if ($layout_home == '_NT01') {
                $per_page = 10;
            } else {
                $per_page = 12;
            }

            $all_page = $numf ? $numf : 1;
            $base_url = URL_HOMEPAGE . "{$a}/{$get_order}";
            $url_last = ".html?search" . "_{$fil_one}_{$fil_two}_{$fil_three}_{$fil_four}";
            $paging = $function->generate_page_news($base_url, $url_last, $all_page, $per_page, $page);
            $smarty->assign("paging", $paging);
            $rs = $oNews->show_all_filter($page, $per_page, 0, $category_id, 1, 0, $fil_one, $fil_two, $fil_three,
                $fil_four, 0, 0, $order_by);
            $smarty->assign("rs", $rs);

            //////////////////////////////////Giao dien hien thi //////////////////////////
            $layout = $layout_home;

            return $smarty->fetch($themes . "/web/category.html");
            break;

        ///////////////////////////////////////////////////////////////////////////////////
        // Job of category
        ///////////////////////////////////////////////////////////////////////////////////
        case $url_supcate:
            $_SESSION[URL_HOME]['tinseo'] = $function->sql_injection($_SERVER['REQUEST_URI']);
            //Seo google
            $smarty->assign("seo_title", $function->sql_injection($rs_category["seo_title"]));
            $smarty->assign("seo_key", $function->sql_injection($rs_category["seo_key"]));
            $smarty->assign("seo_desc", $function->sql_injection($rs_category["seo_desc"]));
            $rs_key = $oNews->show_keyword(0, 5, $category_id);
            $smarty->assign("rs_key", $rs_key);

            //Category hien tai
            $smarty->assign("category_hover", $category_url);
            $smarty->assign("category_name", $category_name);
            $smarty->assign("category_id", $category_id);
            $smarty->assign("category_content", $category_content);
            $smarty->assign("category_img", $category_img);

            //Category cha
            $new_cat_name = $oNews->category_all_parent_id($category_id);

            $countProduct = $oNews->check_category_id($category_id);
            $smarty->assign("new_cat_name", $new_cat_name);
            $smarty->assign("new_product_count", $countProduct);
            $smarty->assign("supcate_hover", $new_cat_name_con["category_url"]);
            $smarty->assign("supcate_name", $new_cat_name_con["category_name"]);
            $smarty->assign("supcate_content", $new_cat_name_con["category_content"]);
            $_SESSION[URL_HOME]["category_id"] = $new_cat_name_con["category_id"];

            //category ong noi
            $category_parent_id = $oNews->category_all_parent_id($new_cat_name_con["parent_id"]);
            $smarty->assign("category_parent_id", $category_parent_id);
            $smarty->assign("home_hover", $category_parent_id["category_url"]);
            $smarty->assign("name_home", $category_parent_id["category_name"]);

            //menu left
            $smarty->assign("catename_left", $new_cat_name_con["category_name"]);
            $category_left = $oNews->category_all_home(0, $new_cat_name_con["category_id"], 0, 20);
            $smarty->assign("category_left", $category_left);

            $numf = $oNews->num_ckeck_category($category_id);
            $smarty->assign("numf", $numf);
            if ($numf == '1') {
                $new_detail = $oNews->show_coupons_products_detail($category_id);
                $function->goto_url(URL_HOMEPAGE . $new_detail["news_id"] . "-" . $new_detail["news_url"] . ".html");
            } else {
                ///////////////////////////////////////////////////////////////////////////////
                ////////////////////////////// bo loc san pham ///////////////////////////////
                $smarty->assign("cate_filter", $a);
                $smarty->assign("url_filter", $category_url);
                $category_id = $category_id;
                $parent_id = $parent_id;
                $key_cty = '';
                $key_dis = '';
                $key_one = '';
                $key_two = '';
                $key_three = '';
                $key_four = '';
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
                    $seo_cty = $oNews->seo_filter_cities($fil_cty);
                    $key_cty = $seo_cty["cityname"];
                }
                $smarty->assign("fil_cty", $fil_cty);

                // bo loc quan huyen
                $rs_district = $oNews->filter_district(0, 100, $fil_cty);
                $smarty->assign("rs_district", $rs_district);
                if ($arr_fil[6] == "" or $arr_fil[6] == "all") {
                    $fil_dis = 'all';
                } else {
                    $fil_dis = $arr_fil[6];
                    $seo_dis = $oNews->seo_filter_district($fil_dis);
                    $key_dis = $seo_dis["district_name"];
                }
                $smarty->assign("fil_dis", $fil_dis);

                //Seo google filter
                if ($key_cty != "") {
                    $key_cty = " " . $key_cty;
                } else {
                    $key_cty = "";
                }
                if ($key_dis != "") {
                    $key_dis = " " . $key_dis;
                } else {
                    $key_dis = "";
                }

                if ($key_one != "") {
                    $key_one = " " . $key_one;
                } else {
                    $key_one = "";
                }
                if ($key_two != "") {
                    $key_two = " " . $key_two;
                } else {
                    $key_two = "";
                }
                if ($key_three != "") {
                    $key_three = " " . $key_three;
                } else {
                    $key_three = "";
                }
                if ($key_four != "") {
                    $key_four = " " . $key_four;
                } else {
                    $key_four = "";
                }

                $key_filter = $key_cty . $key_dis . $key_one . $key_two . $key_three . $key_four;
                $smarty->assign("key_filter", $key_filter);
                ////////////////////////////////// end bo loc /////////////////////////////////

                ////////////////////////////////// ORDER BY ///////////////////////////////////
                $get_order = $function->sql_injection($arr_str[1]);
                if ($get_order == "") {
                    $get_order = '0';
                }
                if ($get_order == '0') {
                    $order_by = 'ORDER BY cc.pos desc, cc.created_date desc';
                }
                if ($get_order == 'priceasc') {
                    $order_by = 'ORDER BY cc.price_new asc';
                    $smarty->assign("hover_gia", "priceasc");
                }
                if ($get_order == 'pricedesc') {
                    $order_by = 'ORDER BY cc.price_new desc';
                    $smarty->assign("hover_gia", "pricedesc");
                }
                if ($get_order == 'saledesc') {
                    $order_by = 'ORDER BY giam_gia desc';
                    $smarty->assign("hover_gia", "saledesc");
                }
                if ($get_order == 'viewsdesc') {
                    $order_by = 'ORDER BY cc.views desc';
                    $smarty->assign("hover_gia", "viewsdesc");
                }

                $page = $function->sql_injection($arr_str[2]);

                if ($page == "") {
                    $page = 0;
                }
                $numf = $oNews->num_all_filter($category_id, 0, 1, 0, $fil_one, $fil_two, $fil_three, $fil_four,
                    $fil_cty, $fil_dis);

                if ($layout_home == '_NT01') {
                    $per_page = 10;
                } else {
                    $per_page = 10;
                }

                $all_page = $numf ? $numf : 1;
                $base_url = URL_HOMEPAGE . "{$a}/{$get_order}";
                $url_last = ".html?search" . "_{$fil_one}_{$fil_two}_{$fil_three}_{$fil_four}";
                $paging = $function->generate_page_news($base_url, $url_last, $all_page, $per_page, $page);
                $smarty->assign("paging", $paging);

                // Du lieu category
                $rs = $oNews->show_all_filter_detail($page, $per_page, $category_id, 0, 1, 0, $fil_one, $fil_two,
                    $fil_three, $fil_four, 0, 0, $order_by);
                $smarty->assign("rs", $rs);
                //////////////////////////////////Giao dien hien thi /////////////////////////////
                //$layout = $layout_home;
                return $smarty->fetch($themes . "/public/content/all_jobs_cate.html");
            }
            break;

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
}

?>
