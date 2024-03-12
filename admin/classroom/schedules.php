 <!-- Main content --> 
        <!-- title row -->
    <form action="" method="POST"> 
       
      <!-- info row -->
      <div class="row invoice-info">
      <div class="col-sm-3 invoice-col">
        
      </div>
        
        <div class="col-sm-2 invoice-col">
         Day(s)
          <address>
            <div class="form-group">
			  <select name="sched_day" class="form-control">  
			  	 <?php 
                $mydb->setQuery("SELECT distinct(sched_day) FROM `tblschedule` ");
                $cur = $mydb->loadResultList();

                foreach ($cur as $result) {
                  echo '<option value="'.$result->sched_day.'"">'.$result->sched_day.' </option>';

                }
                ?>
			  </select>
		  </div>
          </address>
        </div>

        <!-- /.col -->
        <div class="col-sm-2 invoice-col">
         Semester
          <address> 
		         <select name="Semester" class="form-control">
              <option value="First">First</option>
              <option value="Second">Second</option> 
            </select>
          </address>
        </div>
       <div class="col-sm-3 invoice-col">
         Time
          <address>
            <div class="form-group">
			  <select name="sched_time" class="form-control">  
			  	 <?php 
                $mydb->setQuery("SELECT distinct(sched_time) FROM `tblschedule` ");
                $cur = $mydb->loadResultList();

                foreach ($cur as $result) {
                  echo '<option value="'.$result->sched_time.'"">'.$result->sched_time.' </option>';

                }
                ?>
			  </select>
		  </div>
          </address>
        </div>
        <!-- /.col -->
           <!-- /.col -->
        <div class="col-sm-2 invoice-col"> 
        <br/>
        <address>
        <div class="form-group"> 
        <button type="submit" name="submit" class="btn btn-primary">Submit</button>
		  </div>
		  
        </address>

        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      <div class="row">
        <div class="col-xs-12">
          <h2 class="page-header">
            <i  class="fa fa-globe">List Of Schedules</i>
              <small class="pull-right"> <?php echo (isset($_POST['sched_day'])) ? 'Time :'.$_POST['sched_time']. ' - Days :' .$_POST['sched_day'] .'||' : ''; ?> 
               <?php echo (isset($_POST['Semester'])) ? ' Semester :' .$_POST['Semester'] : ''; ?> </small>
          </h2>
        </div> 
      </div> 
    
       
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

				  		if (isset($_POST['submit'])) {
				  			 
								$sql="SELECT * FROM `tblschedule` s, `course` c, subject subj
								WHERE s.`COURSE_ID`=c.`COURSE_ID` AND s.SUBJ_ID=subj.SUBJ_ID 
								AND sched_day = '" . $_POST['sched_day'] ."'  AND sched_time='".$_POST['sched_time']."'
								AND sched_semester  = '" . $_POST['Semester'] ."' ORDER BY sched_room asc";
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
				  		} 
				  		
				  	?>
				  </tbody>
					
				</table>
 
				<!-- <div class="btn-group">
				  <a href="index.php?view=add" class="btn btn-default">New</a>
				  <button type="submit" class="btn btn-default" name="delete"><span class="glyphicon glyphicon-trash"></span> Delete Selected</button>
				</div>
 --> 
	</form>
	<form action="schedulesPrint.php" method="POST" target="_blank">
	<input type="hidden" name="sched_day" value="<?php echo (isset($_POST['sched_day'])) ? $_POST['sched_day'] : ''; ?>">
	 <input type="hidden" name="Semester" value="<?php echo (isset($_POST['Semester'])) ? $_POST['Semester'] : ''; ?> "> 
	<input type="hidden" name="sched_time" value="<?php echo (isset($_POST['sched_time'])) ? $_POST['sched_time'] : ''; ?>">
      <!-- this row will not appear when printing -->
      <div class="row no-print">
        <div class="col-xs-12">
         <span class="pull-right"> <button type="submit" name="submit" class="btn btn-primary"  ><i class="fa fa-print"></i> Print</button></span>  
      </div>
      </div>
    </section>
    </form>
    <!-- /.content -->
    <div class="clearfix"></div>
	

 