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
		if(isset($_POST['save'])){
 // `schedID`, `sched_time`, `sched_day`, `sched_subject`, `sched_semester`, `sched_sy`, `empid`, `crs_yr`, `sched_room`
// `CLASS_CODE`, `SUBJ_ID`, `INST_ID`, `SYID`, `AY`, `DAY`, `C_TIME`, `IDNO`, `ROOM`, `SECTION`
		if ($_POST['C_TIME'] == "" OR $_POST['DAY'] == ""   OR $_POST['ROOM'] == "" ) {
			$messageStats = false;
			message("All field is required!","error");
			redirect('index.php?view=add');
		}else{	
			$sched = New StudentClass();
			// $subj->USERID 		= $_POST['user_id'];
			$sched->C_TIME 		= $_POST['C_TIME'];
			$sched->DAY		= $_POST['DAY']; 
			$sched->SUBJ_ID			= $_POST['SUBJ_ID'];
			$sched->SEMESTER 	= $_POST['SEMESTER'];
			// $sched->sched_sy		= $_POST['sched_sy']; 
			// $sched->crs_yr		= $_POST['crs_yr']; 
			$sched->ROOM		= $_POST['ROOM'];
			$sched->COURSE_ID		= $_POST['COURSE_ID'];
			$sched->create();

						// $autonum = New Autonumber();  `schedID`, `C_TIME`, `DAY`, `sched_subject`, `sched_semester`, `sched_sy`, `AY`, `SEMESTER`
						// $autonum->auto_update(2);

			message("New [". $_POST['C_TIME'] ."] created successfully!", "success");
			redirect("index.php");
			
		}
		}

	}

	function doEdit(){
	if(isset($_POST['save'])){

			$sched = New StudentClass(); 
			$sched->C_TIME 			= $_POST['C_TIME'];
			$sched->DAY				= $_POST['DAY']; 
			$sched->SUBJ_ID			= $_POST['SUBJ_ID'];
			$sched->SEMESTER 		= $_POST['SEMESTER'];
			// $sched->sched_sy		= $_POST['sched_sy']; 
			$sched->COURSE_ID		= $_POST['COURSE_ID']; 
			$sched->ROOM		= $_POST['ROOM'];
			$sched->update($_POST['CLASS_ID']);

			  message("[". $_POST['C_TIME'] ."] has been updated!", "success");
			redirect("index.php");
		}
	}


	function doDelete(){
		
		// if (isset($_POST['selector'])==''){
		// message("Select the records first before you delete!","info");
		// redirect('index.php');
		// }else{

		// $id = $_POST['selector'];
		// $key = count($id);

		// for($i=0;$i<$key;$i++){

		// 	$subj = New User();
		// 	$subj->delete($id[$i]);

		
				$id = 	$_GET['id'];

				$sched = New StudentClass();
	 		 	$sched->delete($id);
			 
			message("Schedule already Deleted!","info");
			redirect('index.php');
		// }
		// }

		
	}
 
 
?>