<?php
function purchases_process()
{
	global $db, $smarty, $function;
	global $module,$action_views,$action_insert,$action_edit,$action_delete,$main_url,$main_name,$main_content,$msg_time;
	$main = $function->sql_injection(isset($_GET['main'])? $_GET['main']:"");
	$page = $function->sql_injection(isset($_GET['page'])? $_GET['page']:"");
	$id = $function->sql_injection(isset($_GET['id'])? $_GET['id']:""); $smarty->assign("id",$id);
	$limit = $function->sql_injection(isset($_GET['limit'])? $_GET['limit']:""); $smarty->assign("limit",$limit);
	$order = $function->sql_injection(isset($_GET['order'])? $_GET['order']:""); $smarty->assign("order",$order);
	$sc = $function->sql_injection(isset($_GET['sc'])? $_GET['sc']:""); $smarty->assign("sc",$sc);
	$id_edit = $function->sql_injection(isset($_GET['id_edit'])? $_GET['id_edit']:""); $smarty->assign("id_edit",$id_edit);
	$submit = $function->sql_injection(isset($_POST['submit']) ? $_POST['submit'] : "");
	$status = $function->sql_injection(isset($_GET['status'])? $_GET['status']:""); $smarty->assign("status",$status);
	$cities = $function->sql_injection(isset($_GET['cities'])? $_GET['cities']:""); $smarty->assign("cities",$cities);
	
	$Process = new Purchases_class;
	$url = $function->sql_injection($main_url);
	$file =  $function->sql_injection($main_url);
	$smarty->assign("url",$url);
	$smarty->assign("main_name",$main_name);
	$smarty->assign("main_content",$main_content);
	
	// Status
	$rs_status = $Process->show_coupons_status(1);			
	$smarty->assign("rs_status", $rs_status);
	// City
	$rs_city = $Process->show_all_city(1);			
	$smarty->assign("rs_city", $rs_city);
	
	switch($main)
	{
		case "search":
			$name_search = $function->sql_injection(isset($_POST['name_search']) ? $_POST['name_search'] : "");
			$startdate = $function->sql_injection(isset($_POST['startdate']) ? $_POST['startdate'] : "");
			$enddate = $function->sql_injection(isset($_POST['enddate']) ? $_POST['enddate'] : "");
			if($name_search !="" or $startdate !="" or $enddate !="")
			{
				$_SESSION['search']['name_search'] = $name_search;
				$_SESSION['search']['startdate'] = $startdate;
				$_SESSION['search']['enddate'] = $enddate;
			}
			else
			{
				unset($_SESSION["search"]);
			}
			
			$smarty->assign("main_search",$main);
			if($_SESSION[$module]['url_views']){$function->goto_url($_SESSION[$module]['url_views']);}
			else{$function->goto_url(URL_ADMIN."?module={$url}&main=views");}
		break;	
		case "unsession":
			unset($_SESSION["search"]);
			$smarty->assign("main_search","search");
			$function->goto_url($_SESSION[$module]['url_views']);
		break;	
		case "views":
		default:
		if($action_views == ''){return $function->msg_box_status(msg_box_action,$msg_time,URL_ADMIN."?module=homes",2);}
			$_SESSION[$module]['url_views'] =$function->FixQuotes($_SERVER['REQUEST_URI']);
			$smarty->assign("url_views", URL_ADMIN."?module={$url}&main=views");
			// Tim kiem 
			$name_search = $function->sql_injection(isset($_SESSION['search']['name_search']) ? $_SESSION['search']['name_search'] : "");
			$smarty->assign("name_search",$name_search);
			if($name_search){$smarty->assign("url_search","&name_search=$name_search");}
			
			$startdate = $function->sql_injection(isset($_SESSION['search']['startdate']) ? $_SESSION['search']['startdate'] : "");
			$smarty->assign("startdate",$startdate);
			if($startdate){$smarty->assign("url_start","&startdate=$startdate");}
		
			$enddate = $function->sql_injection(isset($_SESSION['search']['enddate']) ? $_SESSION['search']['enddate'] : "");
			$smarty->assign("enddate",$enddate);
			if($enddate){$smarty->assign("url_end","&enddate=$enddate");}
			
			// Tim url
			$url_limit = ''; $url_order = ''; $url_status = ''; $url_cities = '';
			if($id_edit){$smarty->assign("url_edit","&id_edit=$id_edit");}
			if($limit){$smarty->assign("url_limit","&limit=$limit"); $url_limit ="&limit=$limit";}
			if($order){$smarty->assign("url_order","&order=$order&sc=$sc"); $url_order="&order=$order&sc=$sc";}
			if($status){$smarty->assign("url_status","&status=$status"); $url_status="&status=$status";}
			if($cities){$smarty->assign("url_cities","&cities=$cities"); $url_cities="&cities=$cities";}
			
			$numf = $Process->num_views($name_search,$startdate,$enddate,$status,$cities);
			//print_r($numf);
			unset($_SESSION['search']);
			if($numf) {
				if($page ==""){$page =0;}
				if($limit==""){$limit=10;}
				$per_page = $limit;
				$all_page = $numf ? $numf : 1; 			
				$base_url = URL_ADMIN."?module={$url}&main=views{$url_status}{$url_cities}{$url_limit}{$url_order}";
				$url_last = "";		
				$paging = $function->generate_page_cms($base_url,$url_last,$all_page,$per_page,$page);
				$rs = $Process->views_table($page,$per_page,$order,$sc,$name_search,$startdate,$enddate,$status,$cities);			
				$smarty->assign("paging",$paging);
				$smarty->assign("numf",$numf);
				$smarty->assign("rs",$rs);
			}
			
			$rs_edit = $Process->get_id($id_edit);								
			$smarty->assign("rs_edit",$rs_edit);
			
			$check_shop = $Process->check_user_purchase($id_edit);
			$smarty->assign("check_shop",$check_shop);

			return $smarty->fetch("{$file}/views.html");
		break;	
		case "status": 
		$check_shop = $Process->check_user_purchase($id);
		if($action_edit == '' or $check_shop == "0"){return $function->msg_box_status(msg_box_action,$msg_time,URL_ADMIN."?module=homes",2);}
			$id = $function->sql_injection($_GET['id']);
			$status = $function->sql_injection($_GET['status']);
			$check_time = $Process->check_time_update($id);
			if ($check_time > 0){return $function->msg_box_status(msg_box_action,$msg_time,$_SESSION[$module]['url_views'],2);}
			else
			{										
				$Process->status_table($id,$status);
				return $function->msg_box_status(msg_box_status_succ,$msg_time,$_SESSION[$module]['url_views'],1);		
			}
		break;		
		case "insert":
		if($action_insert == '' and $action_edit == ''){return $function->msg_box_status(msg_box_action,$msg_time,URL_ADMIN."?module=homes",2);}
			if($submit)
			{
				$data['info']['name'] = $function->sql_injection(isset($_POST['name']) ? $_POST['name'] : "");
				$data['info']['mobile'] = $function->sql_injection(isset($_POST['mobile']) ? $_POST['mobile'] : "");
				$data['info']['email'] = $function->sql_injection(isset($_POST['email']) ? $_POST['email'] : "");
				$data['info']['address'] = $function->sql_injection(isset($_POST['address']) ? $_POST['address'] : "");
				$data['info']['coupon_status'] = $function->sql_injection(isset($_POST['coupon_status']) ? $_POST['coupon_status'] : "");
				$data['info']['message'] = $function->sql_injection(isset($_POST['message']) ? $_POST['message'] : "");
				
				//Price
				$data['info']['shipping'] = $function->to_character_price(isset($_POST['shipping']) ? $_POST['shipping'] : 0);
				$data['info']['cod'] = $function->to_character_price(isset($_POST['cod']) ? $_POST['cod'] : 0);
				$data['info']['quality'] = $function->to_character_price(isset($_POST['quality']) ? $_POST['quality'] : 0);
				$data['info']['money'] = $function->to_character_price(isset($_POST['money']) ? $_POST['money'] : 0);
				if(LANG_AUGE_CMS == 0)
				{
					$data['info']['shipping'] = round($data['info']['shipping']+499,-3);
					$data['info']['cod'] = round($data['info']['cod']+499,-3);
					$data['info']['money'] = round($data['info']['money']+499,-3);
				}
				$data['info']['language'] = LANG_AUGE_CMS;
				if($data['info']['firstname']=="")
				{return $function->msg_box_status(msg_box_erro_info,$msg_time,$_SESSION[$module]['url_views'],2);}											
				else
				{	
					if($id_edit)
					{
						$Process->edit_table($id_edit,$data['info']);
						return $function->msg_box_status(msg_box_edit_succ,$msg_time,$_SESSION[$module]['url_views'],1);
					}
					else
					{
						return $function->msg_box_status(msg_box_insert_succ,$msg_time,$_SESSION[$module]['url_views'],1);	
					}
				}
			}
			else	
			{
				$function->goto_url($_SESSION[$module]['url_views']);
			}
		break;
		case "update_order":
		if($action_edit == ''){return $function->msg_box_status(msg_box_action,$msg_time,URL_ADMIN."?module=homes",2);}
			$check = $_POST['checkbox_id'];
			if($check != null){
				foreach($check as $id){										
					$data['info']['name'] = $function->sql_injection($_POST['name'.$id]); 
					$data['info']['mobile'] = $function->sql_injection($_POST['mobile'.$id]); 
					$data['info']['email'] = $function->sql_injection($_POST['email'.$id]); 
					$data['info']['address'] = $function->sql_injection($_POST['address'.$id]); 
					$data['info']['coupon_status'] = $function->sql_injection($_POST['coupon_status'.$id]);
					$data['info']['message'] = $function->sql_injection($_POST['message'.$id]); 
					
					$data['info']['shipping'] = $function->to_character_price($_POST['shipping'.$id]); 
					$data['info']['cod'] = $function->to_character_price($_POST['cod'.$id]); 
					$data['info']['quality'] = $function->to_character_price($_POST['quality'.$id]);
					$data['info']['money'] = $function->to_character_price($_POST['money'.$id]); 
					if(LANG_AUGE_CMS == 0)
					{
						$data['info']['shipping'] = round($data['info']['shipping']+499,-3);
						$data['info']['cod'] = round($data['info']['cod']+499,-3);
						$data['info']['money'] = round($data['info']['money']+499,-3);
					}
					$id = $function->sql_injection(intval($id));	
					$Process->update_order_table($id,$data['info']);		
				}
			}
			return $function->msg_box_status(msg_box_edit_succ,$msg_time,$_SESSION[$module]['url_views'],1);
		break;
		case "delete": 
		if($action_delete == ''){return $function->msg_box_status(msg_box_action,$msg_time,URL_ADMIN."?module=homes",2);}
			$check = $_POST['checkbox_id'];							
			if($check != null)
			{
				foreach($check as $id)
				{										
					$checks = $Process->check_delete($id);
					$check_shop = $Process->check_user_purchase($id);
					if ($checks > 0 or $check_shop == "0"){return $function->msg_box_status(msg_box_erro_status,$msg_time,$_SESSION[$module]['url_views'],2);}
					else
					{										
						$id = $function->sql_injection(intval($id));										
						$Process->delete_table($id);
					}								
				}
			}
			return $function->msg_box_status(msg_box_delete_succ,$msg_time,$_SESSION[$module]['url_views'],1);
		break;
		
	}
}
?>