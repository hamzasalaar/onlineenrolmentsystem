<?php
	 if (!isset($_SESSION['ACCOUNT_ID'])){
      redirect(web_root."admin/index.php");
     }

?>

<div class="row">
      <div class="col-lg-12">
       	 <div class="col-lg-6">
            <h1 class="page-header">List of Schedule  <a href="index.php?view=add" class="btn btn-primary btn-xs  ">  <i class="fa fa-plus-circle fw-fa"></i> Set New Schedule</a>  </h1>
       		</div>
       		<div class="col-lg-6" >
       			<img style="float:right;" src="<?php echo web_root; ?>img/school_seal_100x100.jpg" >
       		</div>
       		</div>
        	<!-- /.col-lg-12 -->
   		 </div>
	 		    <form action="controller.php?action=delete" Method="POST">  
			      <div class="table-responsive">			
				<table id="dash-table" class="table table-striped table-bordered table-hover table-responsive" style="font-size:12px" cellspacing="0">
				
				  <thead>
				  	<tr>
				  		<!-- <th>#</th> -->
				  		<th>
				  		 <!-- <input type="checkbox" name="chkall" id="chkall" onclick="return checkall('selector[]');">  -->
				  		 Time</th>
				  		<th>Days</th> 
				  		<th>Subject</th>
				  		<th>Semester</th>
				  		<th>School Year</th>
				  		<th>Course and Year</th>
				  		<th>Room</th> 
				  		<th>Section</th>
				  		<th>Instructor</th>
				  		<th width="10%" >Action</th>
				 
				  	</tr>	
				  </thead> 
				  <tbody>
				  	<?php  // ``, ``, ``, ``, ``, ``, `empid`, `crs_yr`, `sched_room`
				  		// $mydb->setQuery("SELECT * 
								// 			FROM  `tblusers` WHERE TYPE != 'Customer'");
				  		// $sql="SELECT * FROM `tblschedule` s, `course` c, subject subj WHERE s.`COURSE_ID`=c.`COURSE_ID` AND s.SUBJ_ID=subj.SUBJ_ID";
				  	$sql="SELECT * FROM tblinstructor i,`tblschedule` s, `course` c, subject subj WHERE i.INST_ID=s.INST_ID AND s.`COURSE_ID`=c.`COURSE_ID` AND s.SUBJ_ID=subj.SUBJ_ID";
				  		// $mydb->setQuery("SELECT * FROM `tblschedule`");
				  		$mydb->setQuery($sql);

				  		$cur = $mydb->loadResultList();

						foreach ($cur as $result) {
				  		echo '<tr>';
				  		// echo '<td width="5%" align="center"></td>';
				  		echo '<td>' . $result->sched_time.'</a></td>';
				  		// echo '<td>'. time($result->TIME_FROM).'-'.time($result->TIME_TO).$result->AMPM.'</td>';
				  		echo '<td>'. $result->sched_day.'</td>';
				  		echo '<td>' . $result->SUBJ_CODE.'</a></td>';
				  		echo '<td>'. $result->sched_semester.'</td>';
				  		echo '<td>'. $result->sched_sy.'</td>';
				  		echo '<td>' . $result->COURSE_NAME.'-' . $result->COURSE_LEVEL.'</td>';
				  		echo '<td>'. $result->sched_room.'</td>'; 
				  		echo '<td>'. $result->SECTION.'</td>'; 
				  		echo '<td>'. $result->INST_NAME.'</td>';
				  		 
				  		echo '<td align="center" > <a title="Edit" href="index.php?view=edit&id='.$result->schedID.'"  class="btn btn-primary btn-xs  ">  <span class="fa fa-edit fw-fa"></span></a>
				  					 <a title="Delete" href="controller.php?action=delete&id='.$result->schedID.'" class="btn btn-danger btn-xs" ><span class="fa fa-trash-o fw-fa"></span> </a>
				  					 </td>';
				  		echo '</tr>';
				  	} 
				  	?>
				  </tbody>
					
				</table>
 
				<!-- <div class="btn-group">
				  <a href="index.php?view=add" class="btn btn-default">New</a>
				  <button type="submit" class="btn btn-default" name="delete"><span class="glyphicon glyphicon-trash"></span> Delete Selected</button>
				</div>
 -->
			</div>
				</form>
	

</div> <!---End of container-->