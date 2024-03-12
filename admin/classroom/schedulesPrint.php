 
 <?php
require_once("../../include/initialize.php");
  if(!isset($_SESSION['ACCOUNT_ID'])){
  redirect(web_root."admin/index.php");
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Green Valley Foundation College INC.  </title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link href="<?php echo web_root; ?>admin/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?php echo web_root; ?>admin/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="<?php echo web_root; ?>admin/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo web_root; ?>admin/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
 
   <link href="<?php echo web_root; ?>admin/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo web_root; ?>admin/font/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  <link href="<?php echo web_root; ?>admin/font/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- DataTables CSS -->
    <link href="<?php echo web_root; ?>admin/css/dataTables.bootstrap.css" rel="stylesheet">
 
     <!-- datetime picker CSS -->
<link href="<?php echo web_root; ?>css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
 <link href="<?php echo web_root; ?>css/datepicker.css" rel="stylesheet" media="screen">
 
 <link href="<?php echo web_root; ?>admin/css/costum.css" rel="stylesheet">
</head>
<body onload="window.print();">
<div class="wrapper">
  <!-- Main content -->
  <section class="invoice">
      <div class="row">
        <div class="col-xs-12">
          <h3 class="page-header">
            <i class="fa fa-globe"></i>Green Valley College Foundation INC.
            <small class="pull-right">Date: <?php echo date('m/d/Y'); ?></small>
          </h3>
        </div>
        <!-- /.col -->
      </div>
     
      <!-- /.row -->
			<div class="row">
				<h2 align="center">List Of Schedules</h2>
				<h4 align="center">  <?php echo (isset($_POST['sched_day'])) ? 'Time :'.$_POST['sched_time']. ' - Days :' .$_POST['sched_day'] .'||' : ''; ?> 
               <?php echo (isset($_POST['Semester'])) ? ' Semester :' .$_POST['Semester'] : ''; ?> </h4>
			</div>
     
    
       
	 		     <table  class="table table-striped table-bordered table-hover table-responsive" style="font-size:12px" cellspacing="0">
				
				 	  <table  class="table table-striped table-bordered table-hover table-responsive" style="font-size:11px" cellspacing="0">
				
				  <thead>
				  	<tr>
				  		<!-- <th>ID</th> -->
				  		<th>
				  		 <!-- <input type="checkbox" name="chkall" id="chkall" onclick="return checkall('selector[]');">  -->
				  		 Time</th>
				  		<th>Days</th> 
				  		<th>Subject</th>
				  		<th>Semester</th>
				  		<th>School Year</th>
				  		<th>Course and Year</th>
				  		<th>Room</th> 
				 
				  	</tr>	
				  </thead> 
				  <tbody>
				  	<?php    
				  			 
								$sql="SELECT * FROM `tblschedule` s, `course` c, subject subj
								WHERE s.`COURSE_ID`=c.`COURSE_ID` AND s.SUBJ_ID=subj.SUBJ_ID 
								AND sched_day = '" . $_POST['sched_day'] ."'  AND sched_time='".$_POST['sched_time']."'
								AND sched_semester  = '" . $_POST['Semester'] ."' ORDER BY sched_room asc";;
								// $mydb->setQuery("SELECT * FROM `tblschedule`");
								$mydb->setQuery($sql);

								$cur = $mydb->loadResultList();

								foreach ($cur as $result) {
								echo '<tr>';
								// echo '<td width="5%" align="center"></td>';
								// echo '<td>' . $result->schedID.'</a></td>';
								echo '<td>'. $result->sched_time.'</td>';
								echo '<td>'. $result->sched_day.'</td>';
								echo '<td>' . $result->SUBJ_CODE.'</a></td>';
								echo '<td>'. $result->sched_semester.'</td>';
								echo '<td>'. $result->sched_sy.'</td>';
								echo '<td>' . $result->COURSE_NAME.'-' . $result->COURSE_LEVEL.'</a></td>';
								echo '<td>'. $result->sched_room.'</td>'; 
								echo '</tr>'; 
					  		}  
				  	?>
				  </tbody>
					
				</table>
  </section>
  <!-- /.content -->
</div>
<!-- ./wrapper -->
</body>
</html>