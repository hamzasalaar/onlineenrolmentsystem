<?php 
require_once '../include/initialize.php';
// Four steps to closing a session
// (i.e. logging out)

// 1. Find the session
@session_start();

 $sql="INSERT INTO `tbllogs` (`USERID`, `LOGDATETIME`, `LOGROLE`, `LOGMODE`) 
          VALUES (".$_SESSION['ACCOUNT_ID'].",'".date('Y-m-d H:i:s')."','".$_SESSION['ACCOUNT_TYPE']."','Logged out')";
         $mydb->setQuery($sql);
          $mydb->executeQuery();

// 2. Unset all the session variables
unset($_SESSION['ACCOUNT_ID']);
unset($_SESSION['ACCOUNT_NAME']);   
unset($_SESSION['ACCOUNT_USERNAME']);  
unset($_SESSION['ACCOUNT_PASSWORD']); 	 
unset($_SESSION['ACCOUNT_TYPE'] );		 
// 4. Destroy the session
// session_destroy();
redirect(web_root."admin/login.php?logout=1");
?>