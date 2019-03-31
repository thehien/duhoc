<?php
// error_reporting(0);
// ini_set('display_errors',1);
// ini_set('display_startup_errors',1);
// error_reporting(-1);
error_reporting(0);
@ini_set('display_errors', 0);
include_once("config.inc.php");

// Main process
if ($_GET) {
    $cate_id = $_GET['category_id'];
    $sql = "select news_id, news_url, news_name, news_img, news_content, FROM_UNIXTIME(created_date,'%d/%m/%Y %h:%i') as time_news  ";
    $sql .= "from coupons_news where status = '1' and news_category =:category_id and language = 0 order by news_id asc";
    $stmt = $db_con->prepare($sql);
    $stmt->execute([":category_id" => (int)$cate_id]);

    $newsData = $stmt->fetchAll();
    $json = "";
    foreach ($newsData as $value) {
        $json .= "<div class=\"col-md-3 col-sm-6 col-xs-12\">
            <div class=\"featured-item\">
                    <div class=\"featured-wrap\">
                    <div class=\"featured-inner\">
                    <figure class=\"item-thumb\">";
        $json .= "<a href='" . URL_HOMEPAGE . "detail/" . $cate_id . "-" . $value['news_id'] . "-" . $value['news_url'] . ".html'>";
        if ($value['news_img']) {
            $json .= " <img width='100%' height='160' src='" . URL_HOME . "/upload/news/" . $value['news_img'] . "'/> ";
        } else {
            $json .= "<img width='100%' height='30' src='" . URL_HOME . "/assets/img/about/img_1.jpg' />";
        }
        $json .= "</a>";
        $json .= "</figure>";
        $json .= "<div class=\"item-body\"><span class=\"job-title\">";
        $json .= "<a href='" . URL_HOMEPAGE . "detail/" . $cate_id . "-" . $value['news_id'] . "-" . $value['news_url'] . ".html'>";
        $json .= $value['news_name'];
        $json .= "</a>
                    </span>
                  </div>
                </div>
            </div>
           <div class=\"item-foot\">
                <span><i class=\"ti-calendar\"></i>";
        $json .= $value['time_news'];
        $json .= "</span>
                <div class=\"view-iocn\">";
        $json .= "<a href='" . URL_HOMEPAGE . "detail/" . $cate_id . "-" . $value['news_id'] . "-" . $value['news_url'] . ".html'>";
        $json .= "<i class=\"ti-arrow-right\"></i></a>";
        $json .= "</div>
            </div>
        </div>
    </div>";
    }
    echo json_encode($json);
}
