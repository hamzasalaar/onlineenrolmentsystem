<?php
require_once ("../../include/initialize.php");
	 if (!isset($_SESSION['ACCOUNT_ID'])){
      redirect(web_root."admin/index.php");
     }

$action = (isset($_GET['action']) && $_GET['action'] != '') ? $_GET['action'] : '';

switch ($action) {
	
case 'confirm' :
	doConfirm();
	break;
case 'doadd' :
	doAddsubject();
	break;
case 'removed' :
	doRemoveCart();
	break;
case 'addsubjecttrans' :
	doSubmitSubject();
	break;

case 'addcreditsubject' :
	doAddCreditSubject();
	break;
}
   
function doConfirm(){
global $mydb;
$sem = new Semester();
$resSem = $sem->single_semester();
$_SESSION['SEMESTER'] = $resSem->SEMESTER; 


$currentyear = date('Y');
$nextyear =  date('Y') + 1;
$sy = $currentyear .'-'.$nextyear;
$_SESSION['SY'] = $sy;
 
		 
		 $sql = "SELECT * FROM tblstudent WHERE IDNO =" .$_GET['IDNO'];
		 $resQuery = mysqli_query($mydb->conn,$sql) or die(mysqli_error($mydb->conn));
		 $studcourse = mysqli_fetch_assoc($resQuery);

		// $student = New Student(); 
		
		// $studcourse = $student->single_student($_GET['IDNO']);
 

		 $sql = "SELECT * FROM `subject` s, `course` c 
					WHERE s.COURSE_ID=c.COURSE_ID AND s.COURSE_ID=".$studcourse['COURSE_ID']." AND SEMESTER='".$_SESSION['SEMESTER']."'";
 			$resSubject = mysqli_query($mydb->conn,$sql) or die(mysqli_error($mydb->conn));	

 			while ($row = mysqli_fetch_array($resSubject)) {

 					# code...
 					$studentsubject = New StudentSubjects();
					$studentsubject->IDNO 		= $_GET['IDNO'];
					$studentsubject->SUBJ_ID	= $row['SUBJ_ID'];
					$studentsubject->LEVEL 		= 1;
					$studentsubject->SEMESTER 	= $_SESSION['SEMESTER'];
					$studentsubject->SY 		= $_SESSION['SY'];
					$studentsubject->ATTEMP 	= 1; 
					$studentsubject->create();


					$grade = New Grade();
					$grade->IDNO = $_GET['IDNO'];
					$grade->SUBJ_ID	 = $row['SUBJ_ID'];
					$grade->create();
 				}	
 			

				$sql = "INSERT INTO `schoolyr`
				               (`AY`, `SEMESTER`, `COURSE_ID`, `IDNO`, `CATEGORY`, `DATE_RESERVED`, `DATE_ENROLLED`, `STATUS`)
				        VALUES ('".$_SESSION['SY']."','".$_SESSION['SEMESTER']."','".$studcourse['COURSE_ID']."','".$_GET['IDNO']."','ENROLLED','".date('Y-m-d')."','".date('Y-m-d')."','New');";
				$res = mysqli_query($mydb->conn,$sql) or die(mysqli_error($mydb->conn));



			$query = "SELECT * FROM `tblstudent` WHERE `COURSE_ID`=".$studcourse['COURSE_ID'];
			$result = mysqli_query($mydb->conn,$query) or die(mysqli_error($mydb->conn));
			$numrow = mysqli_num_rows($result);
			// $maxrows = count($numrow);


			if ($numrow > 40) {
				# code...
				$student = New Student();  
				$student->NewEnrollees =0;  
				$student->YEARLEVEL = 1;
				$student->STUDSECTION = 2;
				$student->update($_GET['IDNO']);
			}else{
				$student = New Student();  
				$student->NewEnrollees =0;  
				$student->YEARLEVEL = 1;
				$student->STUDSECTION = 1;
				$student->update($_GET['IDNO']);
			}

		

			unset($_SESSION['SEMESTER']);
			unset($_SESSION['SY']);

			message("Regular loads has been added to the new enrollees!", "success");
			redirect("index.php?view=success&IDNO=".$_GET['IDNO']);
			
		 
	}
	 function doAddCreditSubject(){
global $mydb;
 
	 		 
	 		$subjid  = $_POST['SUBJ_ID'];
	 		$idno    = $_POST['IDNO'];
	 		$first   = $_POST['FIRSTGRADING'];
	 		$second  = $_POST['SECONDGRADING'];
	 		$third   = $_POST['THIRDGRADING'];
	 		$fourth  = $_POST['FOURTHGRADING'];
	 		$ave 	 = $_POST['AVERAGE'];
	 		$SEMESTER = $_POST['SEMESTER'];


	 		$sql = "SELECT * FROM studentsubjects WHERE IDNO = ". $idno ." AND SUBJ_ID=".$subjid;
	 		$result = mysqli_query($mydb->conn,$sql) or die(mysqli_error($mydb->conn));
	 		$maxrows = mysqli_num_rows($result);

	 		if ($maxrows > 0) {
	 			# code...
	 			message("Subject has already credited.", "error");
				redirect("index.php?view=addCredit&IDNO=".$idno);
	 		}else{

	 			if ($ave > 74.4) {
	 			# code...
		 

				$currentyear = date('Y');
				$nextyear =  date('Y') + 1;
				$sy = $currentyear .'-'.$nextyear;
				$_SESSION['SY'] = $sy;
 
				$studentsubject = New StudentSubjects();
				$studentsubject->IDNO 		= $idno;
				$studentsubject->SUBJ_ID	= $subjid;
				$studentsubject->LEVEL 		= 1;
				$studentsubject->SEMESTER 	= $SEMESTER;
				$studentsubject->SY 		= $_SESSION['SY'];
				$studentsubject->ATTEMP 	= 1; 
				$studentsubject->create();


				$grade = New Grade();
				$grade->IDNO 	 = $idno;
				$grade->SUBJ_ID	 = $subjid;
				$grade->FIRST 	 = $first;
				$grade->SECOND 	 = $second;
				$grade->THIRD 	 = $third;
				$grade->FOURTH 	 = $fourth;
				$grade->AVE 	 = $ave;
				$grade->create();
 
				unset($_SESSION['SY']);

				message("Subject has been credited.", "success");
				redirect("index.php?view=addCredit&IDNO=".$idno);
			 	}else{

			 		$currentyear = date('Y');
					$nextyear =  date('Y') + 1;
					$sy = $currentyear .'-'.$nextyear;
					$_SESSION['SY'] = $sy;
	 
					$studentsubject = New StudentSubjects();
					$studentsubject->IDNO 		= $idno;
					$studentsubject->SUBJ_ID	= $subjid;
					$studentsubject->LEVEL 		= 1;
					$studentsubject->SEMESTER 	= $SEMESTER;
					$studentsubject->SY 		= $_SESSION['SY'];
					$studentsubject->ATTEMP 	= 1; 
					$studentsubject->create();


					$grade = New Grade();
					$grade->IDNO 	 = $idno;
					$grade->SUBJ_ID	 = $subjid;
					$grade->FIRST 	 = $first;
					$grade->SECOND 	 = $second;
					$grade->THIRD 	 = $third;
					$grade->FOURTH 	 = $fourth;
					$grade->AVE 	 = $ave;
					$grade->create();
	 
					unset($_SESSION['SY']);


			 		message("The subject does not credit.", "error");
					redirect("index.php?view=addCredit&IDNO=".$idno);
			 	}

	 		}
	 		
 
	 }



	function doAddsubject(){
global $mydb;
if (isset($_GET['id'])) { 




$subject = New Subject();
$subj = $subject->single_subject($_GET['id']); 

	$sql = "SELECT * FROM `grades` g, `subject` s WHERE g.`SUBJ_ID`=s.`SUBJ_ID` AND `SUBJ_CODE`='" .$subj->PRE_REQUISITE. "' AND AVE < 75 AND IDNO=". $_GET['IDNO'];
 	$result = mysqli_query($mydb->conn,$sql) or die(mysqli_error($mydb->conn));
 	$row = mysqli_fetch_assoc($result);

 	if (isset($row['SUBJ_CODE'])) {
 	?>
		<script type="text/javascript">
			alert('You must take the pre-requisite first before taking up this subject.')
			window.location = "index.php?view=addCredit&IDNO=<?php echo  $_GET['IDNO']; ?>";
		</script>
 	<?php
	 }else{


	$sql = "SELECT * FROM `grades`  WHERE REMARKS !='Drop' AND `SUBJ_ID`='" .$_GET['id']. "'   AND IDNO=". $_GET['IDNO'];
	$result = mysqli_query($mydb->conn,$sql) or die(mysqli_error($mydb->conn));
 	$row = mysqli_fetch_assoc($result);



 		if (isset($row['SUBJ_ID'])) {
			# code...
		if ($row['AVE'] > 0 && $row['AVE'] < 75 ) {
			# code...
			?>
			<script type="text/javascript">
				alert('This subject is under taken.')
				window.location = "index.php?view=addCredit&IDNO=<?php echo  $_GET['IDNO']; ?>";
			</script>
	 	<?php
		}elseif ($row['AVE']==0) {
			# code...
			?>
			<script type="text/javascript">
				alert('This subject is under taken.')
			window.location = "index.php?view=addCredit&IDNO=<?php echo  $_GET['IDNO']; ?>";
			</script>
	 	<?php
		}elseif ($row['AVE'] > 74) {
			# code...
		
		?>
			<script type="text/javascript">
				alert('You have already taken this subject.')
				window.location = "index.php?view=addCredit&IDNO=<?php echo  $_GET['IDNO']; ?>";
			</script>
	 	<?php
	 }
	}else{
		 
				adminaddtocart($_GET['id']);

			 	redirect(web_root."admin/enrollees/index.php?view=addCredit&IDNO=".$_GET['IDNO']);
		 
	} 
	}
 }
}

		
	 

	function doDelete(){
global $mydb;
		
		// if (isset($_POST['selector'])==''){
		// message("Select the records first before you delete!","info");
		// redirect('index.php');
		// }else{

		// $id = $_POST['selector'];
		// $key = count($id);

		// for($i=0;$i<$key;$i++){

		// 	$course = New User();
		// 	$course->delete($id[$i]);

		
			$id = 	$_GET['id'];

			$course = New Course();
 		 	$course->delete($id);
			 
			message("Course already Deleted!","info");
			redirect('index.php');
		// }
		// }

		
	}

	 function doRemoveCart(){
	 	adminremovetocart($_GET['id']);
		redirect(web_root."admin/enrollees/index.php?view=enrolledsubject&IDNO=".$_GET['IDNO']);
	 }

	 function doSubmitSubject(){
		global $mydb;

	 	 if (isset($_SESSION['admingvCart'])) {
				 	# code...
	 	 	$sql = "SELECT * FROM tblstudent WHERE IDNO=" .$_POST['IDNO'];
	 	 	$strRes = mysqli_query($mydb->conn,$sql) or die(mysqli_error($mydb->conn));
	 	 	$cid = mysqli_fetch_assoc($strRes);


	 	 	$sql = "SELECT * FROM course WHERE COURSE_ID=" . $cid['COURSE_ID'];
	 	 	$strRes = mysqli_query($mydb->conn,$sql) or die(mysqli_error($mydb->conn));
	 	 	$courseLevel = mysqli_fetch_assoc($strRes);

	 	 	$sem = new Semester();
			$resSem = $sem->single_semester();
			$_SESSION['SEMESTER'] = $resSem->SEMESTER; 


			$currentyear = date('Y');
			$nextyear =  date('Y') + 1;
			$sy = $currentyear .'-'.$nextyear;
			$_SESSION['SY'] = $sy;


		  
				
					$count_cart = count($_SESSION['admingvCart']);

			                for ($i=0; $i < $count_cart  ; $i++) {  

			                    $query = "SELECT * FROM `subject` s, `course` c WHERE s.COURSE_ID=c.COURSE_ID AND SUBJ_ID=" . $_SESSION['admingvCart'][$i]['subjectid'];
			                   	$resQuery = mysqli_query($mydb->conn,$query) or die(mysqli_error($mydb->conn));

			                   	while ($row = mysqli_fetch_array($resQuery)) {
			                   		# code...
			                   

			                     // $mydb->setQuery($query);
			                     // $cur = $mydb->loadResultList(); 
			                     //  foreach ($cur as $result) { 

			                      	$sql = "SELECT * FROM `studentsubjects` WHERE  `IDNO`=". $_POST['IDNO']." AND `SUBJ_ID`=".$row['SUBJ_ID'];
			                     	$resQuery = mysqli_query($mydb->conn,$query) or die(mysqli_error($mydb->conn));

			                   	while ($rows = mysqli_fetch_array($resQuery)) {

			                      // 	 $mydb->setQuery($query);
				                     // $cur = $mydb->loadResultList(); 
				                     //  foreach ($cur as $result) { 
				                      	
				                      	if (file_exists($rows['SUBJ_ID'])) {
				                      		# code...
				                      		$studentsubject = New StudentSubjects();
											$studentsubject->ATTEMP 	= $studentsubject->ATTEMP + 1; 
											$studentsubject->LEVEL 		= $courseLevel['COURSE_LEVEL'];
											$studentsubject->SEMESTER 	= $_SESSION['SEMESTER'];
											$studentsubject->SY 		= $_SESSION['SY'];
											$studentsubject->updateSubject($result->SUBJ_ID,$_POST['IDNO']);
				                      	}else{

				                      		$studentsubject = New StudentSubjects();
											$studentsubject->IDNO 		= $_POST['IDNO'];
											$studentsubject->SUBJ_ID	= $rows['SUBJ_ID'];
											$studentsubject->LEVEL 		= $courseLevel['COURSE_LEVEL'];
											$studentsubject->SEMESTER 	= $_SESSION['SEMESTER'];
											$studentsubject->SY 		= $_SESSION['SY'];
											$studentsubject->create();

											$grade = New Grade();
											$grade->IDNO     = $_POST['IDNO'];
											$grade->SUBJ_ID	 = $row['SUBJ_ID'];
											$grade->SEMS     = $_SESSION['SEMESTER'];
											$grade->create();

				                      	}
				                      }
 
									

									$sql = "INSERT INTO `schoolyr`
									(`AY`, `SEMESTER`, `COURSE_ID`, `IDNO`, `CATEGORY`, `DATE_RESERVED`, `DATE_ENROLLED`, `STATUS`)
									VALUES ('".$_SESSION['SY']."','".$_SESSION['SEMESTER']."','".$row['COURSE_ID']."','".$_POST['IDNO']."','ENROLLED','".date('Y-m-d')."','".date('Y-m-d')."','New');";
									$res = mysqli_query($mydb->conn,$sql) or die(mysqli_error($mydb->conn));
			                      }      
			                } 


							$query = "SELECT * FROM `tblstudent` WHERE `COURSE_ID`=". $cid['COURSE_ID'];
							$result = mysqli_query($mydb->conn,$query) or die(mysqli_error($mydb->conn));
							$numrow = mysqli_num_rows($result);
							// $maxrows = count($numrow);

			                if ($numrow > 40) {
								# code...
								$student = New Student();  
								$student->NewEnrollees =0;  
								$student->YEARLEVEL =  $courseLevel['COURSE_LEVEL'];
								$student->STUDSECTION = 2;
								$student->update($_POST['IDNO']);
							}else{
								$student = New Student();  
								$student->NewEnrollees =0;  
								$student->YEARLEVEL =  $courseLevel['COURSE_LEVEL'];
								$student->STUDSECTION = 1;
								$student->update($_POST['IDNO']);
							}

				  	// 		$student = New Student();  
							// $student->NewEnrollees =0;  
							// $student->YEARLEVEL = $courseLevel['COURSE_LEVEL'];
							// $student->update($_POST['IDNO']);
			              

			              

							message("Load has been added to the transferee enrollees!", "success");
							redirect("index.php?view=success&IDNO=".$_POST['IDNO']);
			
			              }
	 }
?>