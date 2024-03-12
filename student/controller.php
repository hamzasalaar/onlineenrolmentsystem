<?php
require_once ("../include/initialize.php");

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

	case 'validate':
		# code...
	dovalidate();
		break;
	case 'drop':
		# code...
	dodrop();
		break;
 

	case 'processorder' :
	processorder();
	break;

	case 'photos' :
	doupdateimage();
	break;

	}

   
function doInsert(){
	if(isset($_POST['submit'])){


			@$errofile = $_FILES['image']['error'];
			@$type = $_FILES['image']['type'];
			@$temp = $_FILES['image']['tmp_name'];
			@$myfile =$_FILES['image']['name'];
		 	@$location="customer_image/".$myfile;
 
			@$file=$_FILES['image']['tmp_name'];
			@$image= addslashes(file_get_contents($_FILES['image']['tmp_name']));
			@$image_name= addslashes($_FILES['image']['name']); 
			@$image_size= getimagesize($_FILES['image']['tmp_name']);

			if (@$_FILES["image"]["size"] > 5000000) {
			    message("Your file is too large. The image cannot be uploaded. You can set or upload an image in your profile", "error");
			    // $uploadOk = 0;
			// }elseif ($image_size==FALSE ) {
			// 	message("Uploaded file is not an image!", "error");
				// redirect(web_root."index.php?page=6");
			}else{
					//uploading the file
					move_uploaded_file($temp,"customer_image/" . $myfile);
				}
						$customer = New Customer();
						// $customer->CUSTOMERID 		= $_POST['CUSTOMERID'];
						$customer->FNAME 			= $_POST['FNAME'];
						$customer->LNAME 			= $_POST['LNAME'];
						// $customer->MNAME 			= $_POST['MNAME'];
						$customer->CUSHOMENUM 		= $_POST['CUSHOMENUM'];
						$customer->STREETADD		= $_POST['STREETADD'];
						$customer->BRGYADD 			= $_POST['BRGYADD'] ;			
						$customer->CITYADD  		= $_POST['CITYADD'];
						$customer->PROVINCE 		= $_POST['PROVINCE'];
						$customer->COUNTRY 			= $_POST['COUNTRY'];
						$customer->GENDER 			= $_POST['GENDER'];
					 	$customer->PHONE 			= $_POST['PHONE'];
						$customer->ZIPCODE 			= $_POST['ZIPCODE'];
						$customer->CUSPHOTO 		= $location;
						$customer->CUSUNAME			= $_POST['CUSUNAME'];
						$customer->CUSPASS			= sha1($_POST['CUSPASS']);	
						$customer->DATEJOIN 		= date('Y-m-d h-i-s');
						$customer->TERMS 			= 1;
						$customer->create();
   

						$email = trim($_POST['CUSUNAME']);
						$h_upass = sha1(trim($_POST['CUSPASS']));


						//it creates a new objects of member
					    $user = new Customer();
					    //make use of the static function, and we passed to parameters
					    $res = $user::cusAuthentication($email, $h_upass); 

					 
						
			// 			if(isset($_POST['savecustomer'])){
						 echo "<script> alert('You are now successfully registered. It will redirect to your order details.'); </script>";
						redirect(web_root."index.php?q=orderdetails");
			// 			}else{
							// redirect(web_root."index.php?q=profile");

						// echo  "<script> alert('" .$_POST['FNAME']."'); </script>";
					
			// 			}
		

	  }
	}
 
	function doEdit(){
		if(isset($_POST['save'])){

			$age = date_diff(date_create($_POST['BIRTHDATE']),date_create('today'))->y;

			if ($age < 15){
			message("Invalid age. 15 years old and above is allowed.", "error");
		    redirect(web_root.'index.php?q=profile');

			}else{
			$stud = New Student();
			$stud->FNAME 				= $_POST['FNAME'];
			$stud->LNAME 				= $_POST['LNAME'];
			$stud->MNAME 				= $_POST['MI'];
			$stud->SEX 					= $_POST['optionsRadios'];
			$stud->BDAY 				= date_format(date_create($_POST['BIRTHDATE']),'Y-m-d');
			$stud->BPLACE 				= $_POST['BIRTHPLACE'];
			$stud->STATUS 				= $_POST['CIVILSTATUS'];
			$stud->NATIONALITY			= $_POST['NATIONALITY'];
			$stud->RELIGION 			= $_POST['RELIGION'];
			$stud->CONTACT_NO 			= $_POST['CONTACT'];
			$stud->HOME_ADD 			= $_POST['PADDRESS'];
			$stud->ACC_USERNAME 		= $_POST['USER_NAME']; 
			$stud->update($_SESSION['IDNO']);


			$studetails = New StudentDetails();
			$studetails->GUARDIAN	 	= $_POST['GUARDIAN'];
			$studetails->GCONTACT 		= $_POST['GCONTACT'];
			$studetails->update($_SESSION['IDNO']);

			message("Accounts has been updated!", "success");
			redirect(web_root.'index.php?q=profile');
			}

 
			
		}
	}


	function doDelete(){

		if(isset($_SESSION['U_ROLE'])=='Customer'){

			if (isset($_POST['selector'])==''){
			message("Select the records first before you delete!","error");
			redirect(web_root.'index.php?page=9');
			}else{
		
			$id = $_POST['selector'];
			$key = count($id);

			for($i=0;$i<$key;$i++){ 

			$order = New Order();
			$order->delete($id[$i]);
 
			message("Order has been Deleted!","info");
			redirect(web_root."index.php?q='product'"); 


		} 


		}
	}else{

		if (isset($_POST['selector'])==''){
			message("Select the records first before you delete!","error");
			redirect('index.php');
			}else{

			$id = $_POST['selector'];
			$key = count($id);

			for($i=0;$i<$key;$i++){ 

			$customer = New Customer();
			$customer->delete($id[$i]);

			$user = New User();
			$user->delete($id[$i]);

			message("Customer has been Deleted!","info");
			redirect('index.php');

			}
		}

	}
		
	}

	  	function doupdateimage(){
 
			$errofile = $_FILES['photo']['error'];
			$type = $_FILES['photo']['type'];
			$temp = $_FILES['photo']['tmp_name'];
			$myfile =$_FILES['photo']['name'];
		 	$location="student_image/".$myfile;


		if ( $errofile > 0) {
				message("No Image Selected!", "error");
				redirect(web_root. "index.php?q=profile");
		}else{
	 
				@$file=$_FILES['photo']['tmp_name'];
				@$image= addslashes(file_get_contents($_FILES['photo']['tmp_name']));
				@$image_name= addslashes($_FILES['photo']['name']); 
				@$image_size= getimagesize($_FILES['photo']['tmp_name']);

			if ($image_size==FALSE ) {
				message(web_root. "Uploaded file is not an image!", "error");
				redirect(web_root. "index.php?q=profile");
			}else{
					//uploading the file
					move_uploaded_file($temp,"student_image/" . $myfile);
		 	
					 
						$stud = New Student(); 
						$stud->STUDPHOTO 		= $location; 
						$stud->update($_SESSION['IDNO']); 

						redirect(web_root. "index.php?q=profile");
						 
							
					}
			}
			 
		}


function dovalidate(){ 

if (isset($_GET['id'])) { 


	$query ="SELECT * FROM `studentsubjects` ss, `tblschedule` s 
	    WHERE ss.`SUBJ_ID`=s.`SUBJ_ID` AND IDNO=".$_SESSION['IDNO']." AND SEMESTER='".$_SESSION['SEMESTER']."'
	    AND `TIME_FROM` >=  '".$_GET['TIME_FROM']."'
		AND  `TIME_TO` <=  '".$_GET['TIME_TO']."'
		AND  `TIME_FROM` <=  `TIME_TO` AND sched_day='".$_GET['sched_day']."'";
		// AND sched_room ='" .$_GET['sched_room'] . "'";
		$result = mysql_query($query) or die(mysql_errno());

 		$numrow = mysql_num_rows($result);

 		if ($numrow > 0) {
 			# code...
 			message("The subject that you added is conflict to your schedule","error");
			redirect(web_root.'index.php?q=profile');
 		}else{





$subject = New Subject();
$subj = $subject->single_subject($_GET['id']); 

	$sql = "SELECT * FROM `grades` g, `subject` s WHERE g.`SUBJ_ID`=s.`SUBJ_ID` AND `SUBJ_CODE`='" .$subj->PRE_REQUISITE. "' AND AVE < 75 AND IDNO=". $_SESSION['IDNO'];
 	$result = mysql_query($sql) or die(mysql_error());
 	$row = mysql_fetch_assoc($result);

 	if (isset($row['SUBJ_CODE'])) {
 	?>
		<script type="text/javascript">
			alert('You must take the pre-requisite first before taking up this subject.')
			window.location = "../index.php?q=profile";
		</script>
 	<?php
	 }else{


	$sql = "SELECT * FROM `grades`  WHERE REMARKS !='Drop' AND `SUBJ_ID`='" .$_GET['id']. "'   AND IDNO=". $_SESSION['IDNO'];
	$result = mysql_query($sql) or die(mysql_error());
 	$row = mysql_fetch_assoc($result);



 		if (isset($row['SUBJ_ID'])) {
			# code...
		if ($row['AVE'] > 0 && $row['AVE'] < 75 ) {
			# code...
			?>
			<script type="text/javascript">
				alert('This subject is under taken.')
				window.location = "../index.php?q=profile";
			</script>
	 	<?php
		}elseif ($row['AVE']==0) {
			# code...
			?>
			<script type="text/javascript">
				alert('This subject is under taken.')
				window.location = "../index.php?q=profile";
			</script>
	 	<?php
		}elseif ($row['AVE'] > 74) {
			# code...
		
		?>
			<script type="text/javascript">
				alert('You have already taken this subject.')
				window.location = "../index.php?q=profile";
			</script>
	 	<?php
	 }
	}else{
		$grade = New Grade();
		$grade->IDNO = $_SESSION['IDNO'];
		$grade->SUBJ_ID	 = $_GET['id'];
		$grade->create();

		$studsub = new StudentSubjects();
		$studsub->IDNO = $_SESSION['IDNO'];
		$studsub->LEVEL = $_GET['level'];
		$studsub->SEMESTER = $_SESSION['SEMESTER'];
		$studsub->SUBJ_ID	 = $_GET['id'];
		$studsub->create();

		message("Subject has been added","success");
	 	redirect(web_root."index.php?q=profile");
	} 
	}
 }
}
 // end  function body

}
function dodrop(){

		 	$grade = New Grade(); 
			$grade->REMARKS	 = 'Drop';
			$grade->update($_GET['gid']);

 			$sql = "DELETE FROM studentsubjects WHERE IDNO=" . $_SESSION['IDNO']. " AND SUBJ_ID=".$_GET['id'] ;
 			mysql_query($sql) or die(mysql_error());



		message("Subject has been dropped","success");
	 	redirect(web_root."index.php?q=profile");
	 
}
 
		
?>