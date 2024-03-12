<?php
require_once("../../include/initialize.php");
if(!isset($_SESSION['ACCOUNT_ID'])){
	redirect(web_root."admin/index.php");
}

$view = (isset($_GET['view']) && $_GET['view'] != '') ? $_GET['view'] : '';
 $title="Classroom Utilization"; 
 $header=$view; 
switch ($view) {
	case 'list' :
		$content    = 'schedules.php';		
		break;

	 
	default :
		$content    = 'schedules.php';		
}
require_once ("../theme/templates.php");
?>
  
