<?php
require_once ("../../include/initialize.php");
	 if (!isset($_SESSION['ACCOUNT_ID'])){
      redirect(web_root."admin/index.php");
     }

$action = (isset($_GET['action']) && $_GET['action'] != '') ? $_GET['action'] : '';

switch ($action) {
	case 'add' :
	doInsert();
	break;
	
	case 'edit' :
	doEdit();
	break;
	
	case 'delete' :
	doDelete();
	break;

	case 'photos' :
	doupdateimage();
	break;

 
	}
   
	function doInsert(){
		global $mydb;
		if(isset($_POST['save'])){
  // `sched_time`, `sched_day`, `sched_semester`, `sched_sy`, `sched_room`, `COURSE_ID`, `SUBJ_ID`

		// if ($_POST['sched_time'] == "" OR 
		// 	$_POST['sched_day'] == ""  OR
		// 	$_POST['sched_semester'] == ""
		//     OR $_POST['COURSE_ID'] == ""  
		// 	OR $_POST['sched_room'] == "" ) {
		// 	$messageStats = false;
		// 	message("All field is required!","error");
		// 	redirect('index.php?view=add');

   		if ($_POST['TIME_FROM'] =="" OR $_POST['TIME_TO'] == "" 
	   		OR	$_POST['sched_day'] == ""  
	   		OR  $_POST['sched_semester'] == ""
		    OR $_POST['COURSE_ID'] == ""  
			OR $_POST['sched_room'] == "" ) {
		 
			message("All field is required!","error");
			redirect('index.php?view=add');
		}else{	


		$sql = "SELECT * FROM `tblschedule` 
		WHERE `SUBJ_ID`=".$_POST['SUBJ_ID']." AND `COURSE_ID`=".$_POST['COURSE_ID']." AND sched_semester='" .$_POST['sched_semester']."'";
		$result = mysqli_query($mydb->conn,$sql) or die(mysqli_error());
		$maxrows = mysqli_num_rows($result);

		if ($maxrows > 0 ) {
			# code...
			message("The subject has already a schedule.","error");
			redirect('index.php?view=add');
		}else{
			$query ="SELECT * 
		FROM  `tblschedule` 
		WHERE  `TIME_FROM` >=  '".$_POST['TIME_FROM']."'
		AND  `TIME_TO` <=  '".$_POST['TIME_TO']."'
		AND  `TIME_FROM` <=  `TIME_TO` AND sched_day='".$_POST['sched_day']."' 
		AND (sched_room ='" .$_POST['sched_room'] . "' OR INST_ID=".$_POST['INST_ID'].")";

		// 	$timefrom = $_POST['TIME_FROM'];
		// 	$timeto =$_POST['TIME_TO'];
		// 	$days = $_POST['sched_day'];

		// $query ="SELECT * 
		// FROM  `tblschedule` 
		// WHERE  (
		// 	(
		// 	TIME('$timefrom') >= TIME(`TIME_FROM`)  
		// AND  TIME('$timeto') <= TIME(`TIME_FROM`) 
		// )
		// OR  (
		// 	TIME('$timefrom') >=TIME(`TIME_TO` ) 
		// AND  ('$timeto') <= TIME(`TIME_TO` )
		// )
		// OR (
		// 	TIME(`TIME_FROM`) <=  TIME('$timefrom') 
		// AND TIME(`TIME_TO`)<=  TIME('$timeto')
		// )
		// )
		// AND `sched_day`='$days' 
		// AND sched_room ='" .$_POST['sched_room'] . "'";
		$result = mysqli_query($mydb->conn,$query) or die(mysqli_errno($mydb->conn));

 		$numrow = mysqli_num_rows($result);

 		if ($numrow > 0) {
 			# code...
 			message("Instructor is not available or Room is already occupied with the time you have set.","error");
			redirect('index.php?view=add');
 		}else{



			$nextyear =  date("Y") + 1;
			$currentyear =  date("Y");

			$sched = New Schedule(); 
			$sched->sched_time 		= $_POST['TIME_FROM'] .'-'.$_POST['TIME_TO'];
			$sched->TIME_FROM 		= $_POST['TIME_FROM'];
			$sched->TIME_TO 		= $_POST['TIME_TO'];
			// $sched->AMPM 			= $_POST['AMPM'];
			$sched->sched_day		= $_POST['sched_day']; 
			$sched->sched_semester 	= $_POST['sched_semester'];
			$sched->sched_sy		= $currentyear . '-'.$nextyear;  
			$sched->sched_room		= $_POST['sched_room'];
			$sched->SUBJ_ID			= $_POST['SUBJ_ID'];
			$sched->SECTION			= $_POST['SECTION'];
			$sched->COURSE_ID		= $_POST['COURSE_ID'];
			$sched->INST_ID 		= $_POST['INST_ID'];
			$sched->create();
 			message("New Schedule has been created successfully!", "success");
			redirect("index.php");

 		}


		}



		}


		

		

	 //   if ($_POST['TIME_FROM'] =="" OR $_POST['TIME_TO'] == "" 
	 //   		OR	$_POST['sched_day'] == ""  
	 //   		OR  $_POST['sched_semester'] == ""
		//     OR $_POST['COURSE_ID'] == ""  
		// 	OR $_POST['sched_room'] == "" ) {
		// 	$messageStats = false;
		// 	message("All field is required!","error");
		// 	redirect('index.php?view=add');
		// }else{	

		// 	$nextyear =  date("Y") + 1;
		// 	$currentyear =  date("Y");

		// 	$sched = New Schedule(); 
		// 	$sched->sched_time 		= $_POST['TIME_FROM'] .'-'.$_POST['TIME_TO'].$_POST['AMPM'];
		// 	$sched->TIME_FROM 		= $_POST['TIME_FROM'];
		// 	$sched->TIME_TO 		= $_POST['TIME_TO'];
		// 	// $sched->AMPM 			= $_POST['AMPM'];
		// 	$sched->sched_day		= $_POST['sched_day']; 
		// 	$sched->sched_semester 	= $_POST['sched_semester'];
		// 	$sched->sched_sy		= $currentyear . '-'.$nextyear;  
		// 	$sched->sched_room		= $_POST['sched_room'];
		// 	$sched->SUBJ_ID			= $_POST['SUBJ_ID'];
		// 	$sched->SECTION			= $_POST['SECTION'];
		// 	$sched->COURSE_ID		= $_POST['COURSE_ID'];
		// 	$sched->INST_ID 		= $_POST['INST_ID'];
		// 	$sched->create();

					 

		// 	message("New Schedule has been created successfully!", "success");
		// 	redirect("index.php");
			
		// }
		}

	}

	function doEdit(){
		global $mydb;

	if(isset($_POST['save'])){

			$nextyear =  date("Y") + 1;
			$currentyear =  date("Y");

			$sched = New Schedule(); 
			$sched->sched_time 		= $_POST['TIME_FROM'] .'-'.$_POST['TIME_TO'];
			$sched->TIME_FROM 		= $_POST['TIME_FROM'];
			$sched->TIME_TO 		= $_POST['TIME_TO']; 
			$sched->sched_day		= $_POST['sched_day']; 
			$sched->sched_semester 	= $_POST['sched_semester'];  
			$sched->sched_room		= $_POST['sched_room'];
			$sched->SECTION			= $_POST['SECTION'];  
			$sched->SUBJ_ID			= $_POST['SUBJ_ID'];
			$sched->COURSE_ID		= $_POST['COURSE_ID'];
			$sched->INST_ID 		= $_POST['INST_ID'];
			$sched->update($_POST['schedID']);

			  message("Schedule has been updated!", "success");
			redirect("index.php");
		}
	}


	function doDelete(){
		global $mydb;

	 
		
				$id = 	$_GET['id'];

				$sched = New Schedule();
	 		 	$sched->delete($id);
			 
			message("Schedule already Deleted!","info");
			redirect('index.php');
		 
		
	}
 
 
?>