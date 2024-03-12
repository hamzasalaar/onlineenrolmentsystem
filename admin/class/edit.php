<?php  
     if (!isset($_SESSION['ACCOUNT_ID'])){
      redirect(web_root."admin/index.php");
     }

  @$classid = $_GET['id'];
    if($classid==''){
  redirect("index.php");
}
  $studclass = New StudentClass();
  $res = $studclass->single_StudentClass($classid);

?> 

 <form class="form-horizontal span6" action="controller.php?action=edit" method="POST">

      <div class="row">
         <div class="col-lg-12">
            <h1 class="page-header">Update Schedule</h1>
          </div>
          <!-- /.col-lg-12  `schedID`, `sched_time`, `sched_day`, `sched_subject`, `sched_semester`, `sched_sy`, `empid`, `crs_yr`, `sched_room`-->
       </div> 
                   
                    <!-- <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "user_id">User Id:</label> -->

                      <!-- <div class="col-md-8"> -->
                        
                         <input class="form-control input-sm" id="CLASS_ID" name="CLASS_ID" placeholder=
                            "Account Id" type="Hidden" value="<?php echo $res->CLASS_ID; ?>">
                   <!--    </div>
                    </div>
                  </div>      -->      
                  
                  
                   
                   <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "C_TIME">Time:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="C_TIME" name="C_TIME" placeholder=
                            "Time" type="text" value="<?php echo $res->C_TIME; ?>">
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "DAY">Days:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="DAY" name="DAY" placeholder=
                            "Day" type="text" value="<?php echo $res->DAY; ?>">
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "COURSE_ID">Course:</label>

                      <div class="col-md-8">
                       <select class="form-control input-sm" name="COURSE_ID" id="COURSE_ID"> 
                          <?php 

                            $mydb->setQuery("SELECT * FROM `course` WHERE COURSE_ID='".$res->COURSE_ID."'" );
                            $cur = $mydb->loadResultList();

                            foreach ($cur as $result) {
                               echo '<option value='.$result->COURSE_ID.' >'.$result->COURSE_NAME.'-'.$result->COURSE_LEVEL.' </option>';

                            }
                          ?>

                          <?php 

                            $mydb->setQuery("SELECT * FROM `course` WHERE COURSE_ID !='".$res->COURSE_ID."'"  );
                            $cur = $mydb->loadResultList();

                            foreach ($cur as $result) {
                               echo '<option value='.$result->COURSE_ID.' >'.$result->COURSE_NAME.'-'.$result->COURSE_LEVEL.' </option>';
                             }
                          ?>

                         
                        </select> 
                      </div>
                    </div>
                  </div>
                  <div id="loaddata"></div>
                  <div id="loadedit" class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_subject">Subject:</label>

                      <div class="col-md-8">
                      <select class="form-control input-sm" name="SUBJ_ID" id="SUBJ_ID"> 
                          <?php 

                            $mydb->setQuery("SELECT * FROM `subject` WHERE COURSE_ID=".$res->COURSE_ID." AND SUBJ_ID='".$res->SUBJ_ID."'" );
                            $cur = $mydb->loadResultList();

                            foreach ($cur as $result) {
                                echo '<option value='.$result->SUBJ_ID .' >'.$result->SUBJ_CODE.' </option>';


                            }
                          ?>

                          <?php 

                            $mydb->setQuery("SELECT * FROM `subject` WHERE COURSE_ID=".$res->COURSE_ID." AND SUBJ_ID !='".$res->SUBJ_ID."'"  );
                            $cur = $mydb->loadResultList();

                            foreach ($cur as $result) {
                                echo '<option value='.$result->SUBJ_ID .' >'.$result->SUBJ_CODE.' </option>';


                            }
                          ?>
                        </select>
                         <!-- <input class="form-control input-sm" id="sched_subject" name="sched_subject" placeholder=
                            "Subject" type="text" value="<?php echo $res->sched_subject; ?>" required> -->
                      </div>
                    </div>
                  </div>
 
                 
                 <!--  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_sy">Academic Year:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="sched_sy" name="sched_sy" placeholder=
                            "Academic Year" type="text" value="<?php echo $res->sched_sy; ?>" required>
                      </div>
                    </div>
                  </div> -->
                   <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "SEMESTER">Semester:</label>

                      <div class="col-md-8">
                       <select class="form-control input-sm" name="SEMESTER" id="SEMESTER"> 
                        <option value="First"  <?php echo ($res->SEMESTER=='First') ? 'selected="true"': '' ; ?>>First</option>
                         <option value="Second" <?php echo ($res->SEMESTER=='Second') ? 'selected="true"': '' ; ?> >Second</option> 
                        </select> 
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "ROOM">Room:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="ROOM" name="ROOM" placeholder=
                            "Room" type="text" value="<?php echo $res->ROOM; ?>">
                      </div>
                    </div>
                  </div>

            
             <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "idno"></label>

                      <div class="col-md-8">
                       <button class="btn btn-primary btn-sm" name="save" type="submit" ><span class="fa fa-save fw-fa"></span>  Save</button> 
                          <!-- <a href="index.php" class="btn btn-info"><span class="fa fa-arrow-circle-left fw-fa"></span></span>&nbsp;<strong>List of Users</strong></a> -->
                       </div>
                    </div>
                  </div>

          
        </form>
      

        </div><!--End of container-->