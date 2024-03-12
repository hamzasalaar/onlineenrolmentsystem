 <div class="panel">            
  <div class="panel-body">

   <ul class="nav nav-tabs" id="myTab">
    <li class="active"><a href="#Adding" data-toggle="tab">Adding</a></li> 
    <li><a href="#dropping" data-toggle="tab">Dropping</a></li> 
  </ul>

   <div class="tab-content">
    <div class="tab-pane active" id="Adding">
    	<div class="table-responsive" style="margin-top:5%;"> 
             <form action="customer/controller.php?action=delete" Method="POST">  					
            				<table id="example"  class="table table-striped table-bordered table-hover "  style="font-size:12px" cellspacing="0"  > 
            				  <thead>
            				  	<tr> 
                          <th rowspan="2">Subject</th> 
                          <th rowspan="2">Unit</th> 
                          <th rowspan="2">Pre-Requisite</th>
                          <th rowspan="2">Course</th>
                          <th colspan="4">Schedule</th> 
            				  </tr>	
                        <tr> 
                          <th>Day</th> 
                          <th>Time</th>
                          <th>Room</th> 
                          <th>Section</th>  
                          <th>Action</th>  
                        </tr>
            				  </thead> 	 
            			  <tbody>
                   	<?php   

            $sql = "SELECT * FROM `tblstudent` s,`course` c WHERE s.`COURSE_ID`=c.`COURSE_ID` AND IDNO=".$_SESSION['IDNO'];
            $mydb->setQuery($sql);
            $courseres = $mydb->loadSingleResult();
          
            

            $sql = "SELECT * FROM course c ,tblstudent s,grades g,subject sub
            WHERE c.COURSE_ID=s.COURSE_ID AND s.IDNO=g.IDNO 
            AND g.SUBJ_ID=sub.SUBJ_ID AND  s.IDNO =" .$_SESSION['IDNO'];
            $mydb->setQuery($sql);
            $cur = $mydb->loadResultList();
         
           while (@$row = mysql_fetch_array($result)) {
             # code...
                $query = "SELECT * FROM `course` c,`subject` s, tblschedule sc  WHERE c.COURSE_ID=s.COURSE_ID 
                          AND s.SUBJ_ID=sc.SUBJ_ID AND COURSE_NAME='".$row['COURSE_NAME']."' AND s.SUBJ_ID !='".$row['SUBJ_ID']."' 
                          AND SEMESTER='".$_SESSION['SEMESTER']."' AND PRE_REQUISITE='NONE'";
                $mydb->setQuery($query);
                $cur = $mydb->loadResultList(); 
                foreach ($cur as $result) { 
 
              echo '<tr>'; 
              echo '<td>'. $result->SUBJ_CODE.' ['. $result->SUBJ_DESCRIPTION.']</td>'; 
              echo '<td>'. $result->UNIT.'</a></td>';
              echo '<td>'. $result->PRE_REQUISITE.'</td>';
              echo '<td>'. $result->COURSE_NAME.'-'.$result->COURSE_LEVEL.'</td>'; 
              echo '<td>'. $result->sched_day  .'</td>';
              echo '<td>'. $result->sched_time  .'</td>';
              echo '<td>'. $result->sched_room .'</td>';
              echo '<td>'. $result->SECTION .'</td>'; 

              // echo '<td align="center" > <a title="Add" href="validatingsubject.php?id='.$result->SUBJ_ID.'"  class="btn btn-primary btn-xs  ">  Add <span class="fa fa-plus fw-fa"></span></a>
              // </td>';
              
              echo '<td align="center" >
              <a title="Add" href="student/controller.php?action=validate&id='.$result->SUBJ_ID.'&level='.$resCourse->COURSE_LEVEL.'&TIME_FROM='.$result->TIME_FROM.'&TIME_TO='.$result->TIME_TO.'&sched_day='.$result->sched_day.'&sched_room='.$result->sched_room.'"  class="btn btn-primary btn-xs ">  Add <span class="fa fa-plus fw-fa"></span></a>
              </td>';
              echo '</tr>';

                    
                }

           }



      //       	$mydb->setQuery("SELECT * FROM `subject` s, `course` c, tblschedule sc WHERE s.COURSE_ID=c.COURSE_ID AND s.SUBJ_ID=sc.SUBJ_ID 
      //         AND COURSE_NAME='".$resCourse->COURSE_NAME."' AND SEMESTER='".$_SESSION['SEMESTER']."'");

				  // 		$cur = $mydb->loadResultList();

						// foreach ($cur as $result) {
				  // 		echo '<tr>';
				  // 		// echo '<td width="5%" align="center"></td>';
				  // 		// echo '<td>' . $result->SUBJ_ID.'</a></td>';
				  // 		echo '<td>'. $result->SUBJ_CODE.' ['. $result->SUBJ_DESCRIPTION.']</td>'; 
				  // 		echo '<td>' . $result->UNIT.'</a></td>';
				  // 		echo '<td>'. $result->PRE_REQUISITE.'</td>';
				  // 		echo '<td>'. $result->COURSE_NAME.'-'.$result->COURSE_LEVEL.'</td>'; 
      //         echo '<td>'.$result->sched_day  .'</td>';
      //         echo '<td>'.$result->sched_time  .'</td>';
      //         echo '<td>'.$result->sched_room .'</td>';
      //         echo '<td>'.$result->SECTION .'</td>'; 
				  		 
				  // 		echo '<td align="center" > 
				  // 		<a title="Add" href="student/controller.php?action=validate&id='.$result->SUBJ_ID.'&level='.$resCourse->COURSE_LEVEL.'&TIME_FROM='.$result->TIME_FROM.'&TIME_TO='.$result->TIME_TO.'&sched_day='.$result->sched_day.'&sched_room='.$result->sched_room.'"  class="btn btn-primary btn-xs ">  Add <span class="fa fa-plus fw-fa"></span></a>
				  // 					  </td>';
				  // 		echo '</tr>';
				  // 	} 
				  	?>
            				</tbody>
            					
            				 	
            				</table>
            		 </form>
                         
         
              </div><!--/table-resp--> 
    	</div>
     
		<div class="tab-pane" id="dropping">
				  <div class="table-responsive" style="margin-top:5%;"> 
             <form action="customer/controller.php?action=delete" Method="POST">  					
            				<table  class="table table-striped table-bordered table-hover "  style="font-size:12px" cellspacing="0"  > 
            				  <thead>
            				  	<tr> 
                          <th rowspan="2">Subject</th>
                          <th rowspan="2">Description</th>  
                          <th rowspan="2">Unit</th>
                          <th colspan="4">Schedule</th> 
            				  	</tr>	
                        <tr> 
                          <th>Day</th> 
                          <th>Time</th>
                          <th>Room</th> 
                          <th>Section</th> 
                          <th>Action</th>   
                        </tr>
            				  </thead> 	 
            			  <tbody>
                    <?php
                    $sql ="SELECT * 
                          FROM  tblstudent st, grades g, `subject` sub, `tblschedule` s
                          WHERE  st.IDNO=g.IDNO AND g.`SUBJ_ID` = sub.`SUBJ_ID` AND sub.`SUBJ_ID` = s.`SUBJ_ID`
                          AND STUDSECTION=SECTION AND REMARKS !='Drop'  
                          AND st.`IDNO`=" .$_SESSION['IDNO']." AND SECTION='".$courseres->STUDSECTION."'
                          AND s.sched_semester = '".$_SESSION['SEMESTER']."' AND YEARLEVEL='".$courseres->YEARLEVEL."'";

                      $mydb->setQuery($sql);
                      $cur = $mydb->loadResultList();

                      foreach ($cur as $result) {
                        echo '<tr>'; 
                        echo '<td>'.$result->SUBJ_CODE.'</td>';
                        echo '<td>'.$result->SUBJ_DESCRIPTION.'</td>';
                        echo '<td>'.$result->UNIT.'</td>';
                        echo '<td>'.$result->sched_day  .'</td>';
                        echo '<td>'.$result->sched_time  .'</td>';
                        echo '<td>'.$result->sched_room .'</td>';
                        echo '<td>'.$result->SECTION .'</td>';
                       echo '<td align="center" >
                        <a title="Add" href="student/controller.php?action=drop&id='.$result->SUBJ_ID.'&gid='.$result->GRADE_ID.'&level='.$result->YEARLEVEL.'"  class="btn btn-danger btn-xs  "><span class="fa fa-trash-o fw-fa"></span> Drop</a>
                        </td>';
                        echo '</tr>';
                      }



             //        $sql ="SELECT * 
             //              FROM  `subject` sub, `grades` ss, `tblschedule` s, tblstudent st
             //              WHERE  sub.`SUBJ_ID` = ss.`SUBJ_ID`  AND ss.`SUBJ_ID`=s.`SUBJ_ID` AND REMARKS !='Drop' AND AVE = 0  
             //              AND ss.`IDNO`=st.`IDNO` AND ss.`IDNO`=" .$_SESSION['IDNO']."
             //              AND s.sched_semester = '".$_SESSION['SEMESTER']."'";

             //          $mydb->setQuery($sql);
             //          $cur = $mydb->loadResultList();

             //          foreach ($cur as $result) {
             //            echo '<tr>'; 
             //            echo '<td>'.$result->SUBJ_CODE.'</td>';
             //            echo '<td>'.$result->SUBJ_DESCRIPTION.'</td>';
             //            echo '<td>'.$result->UNIT.'</td>';
             //            echo '<td>'.$result->sched_day  .'</td>';
             //            echo '<td>'.$result->sched_time  .'</td>';
             //            echo '<td>'.$result->sched_room .'</td>';
             //            echo '<td>'.$result->SECTION .'</td>';
             //          echo '<td align="center" >
             //           <a title="Add" href="student/controller.php?action=drop&id='.$result->SUBJ_ID.'&gid='.$result->GRADE_ID.'&level='.$result->YEARLEVEL.'"  class="btn btn-danger btn-xs  "><span class="fa fa-trash-o fw-fa"></span> Drop</a>
				  					  // </td>';
				  		
             //            echo '</tr>';
             //          }
                    ?> 
            				</tbody>
            					
            				 	
            				</table>
            		 </form>
                         
         
              </div><!--/table-resp-->
    		</div>
    </div>
</div>
</div>

 