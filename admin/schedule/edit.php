<?php  
     if (!isset($_SESSION['ACCOUNT_ID'])){
      redirect(web_root."admin/index.php");
     }

  @$schedID = $_GET['id'];
    if($schedID==''){
  redirect("index.php");
}
  $schedule = New Schedule();
  $res = $schedule->single_schedule($schedID);

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
                        
                         <input class="form-control input-sm" id="schedID" name="schedID" placeholder=
                            "Account Id" type="Hidden" value="<?php echo $res->schedID; ?>">
                   <!--    </div>
                    </div>
                  </div>      -->      
                  
                  
                   
                <!--    <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_time">Time:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="sched_time" name="sched_time" placeholder=
                            "Time" type="text" value="<?php echo $res->sched_time; ?>">
                      </div>
                    </div>
                  </div> -->
            <!--        <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_time">Time:</label>
                      <div class="col-md-8">
                        <div class="row">
                             <label class="col-md-2">From</label>
                         
                          <div class="col-md-3">
                          
                           <input class="form-control input-sm" id="TIME_FROM" name="TIME_FROM" placeholder=
                              "Time" data-mask="time" type="text" value="<?php echo $res->TIME_FROM; ?>" autocomplete="off">
                          </div>
                       
                          <label class="col-md-1">To</label>
                         
                          <div class="col-md-3">
                          
                           <input class="form-control input-sm" id="TIME_TO" name="TIME_TO" placeholder=
                              "Time" data-mask="time" type="text" value="<?php echo $res->TIME_TO; ?>" autocomplete="off">
                             
                          </div>
                            <div class="col-md-3 ">
                           <select class="form-control input-sm " name="AMPM">
                           <?php
                            // if ($res->AMPM=='am') {
                            //   # code...
                            //   echo ' <option value="am"  selected="true">am</option>
                            //    <option value="pm" >pm</option>';
                            // }else{
                            //     echo ' <option value="am" >am</option>
                            //    <option value="pm" selected="true">pm</option>';
                            // }
                           ?>
                             
                            </select>
                        </div>
                        </div> 
                        
                      </div> 
                    
                    </div>
                  </div> -->

                    <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_time">Time:</label>
                      <div class="col-md-8">
                        <div class="row">
                             <label class="col-md-2">From</label>
                         
                          <div class="col-md-4 input-group">
                           <div class="input-group-addon"> 
                            <i class="fa fa-clock-o"></i>
                          </div>
                           <input class="form-control input-sm time" id="TIME_FROM" name="TIME_FROM"  
                           type="text"  data-inputmask="'alias': 'hh:mm t'" data-mask value="<?php echo $res->TIME_FROM; ?>" >
                          </div>
                       
                          <label class="col-md-2">To</label>
                         
                          <div class="col-md-4 input-group">
                           <div class="input-group-addon"> 
                              <i class="fa fa-clock-o"></i>
                            </div>
                           <input class="form-control input-sm time" id="TIME_TO" name="TIME_TO" data-inputmask="'alias': 'hh:mm t'" 
                           type="text"  data-mask value="<?php echo $res->TIME_TO; ?>">
                             
                          </div>
                          
                        </div> 
                        
                      </div> 
                    
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_day">Days:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="sched_day" name="sched_day" placeholder=
                            "Day" type="text" value="<?php echo $res->sched_day; ?>">
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
                
                   <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_semester">Semester:</label>

                      <div class="col-md-8">
                       <select class="form-control input-sm" name="sched_semester" id="sched_semester"> 
                        <option value="First"  <?php echo ($res->sched_semester=='First') ? 'selected="true"': '' ; ?>>First</option>
                         <option value="Second" <?php echo ($res->sched_semester=='Second') ? 'selected="true"': '' ; ?> >Second</option> 
                        </select> 
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_room">Room:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="sched_room" name="sched_room" placeholder=
                            "Room" type="text" value="<?php echo $res->sched_room; ?>">
                      </div>
                    </div>
                  </div>
                   <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "SECTION">Section:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="SECTION" name="SECTION" placeholder=
                            "Section" type="number" value="<?php echo $res->SECTION; ?>">
                      </div>
                    </div>
                  </div>

                   <!-- <div id="loaddata"></div> -->
 
                   <div id="loadedit">
                   <div class="form-group " > 
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_subject">Subject:</label>

                      <div class="col-md-8">
                      <select class="form-control input-sm" name="SUBJ_ID" id="SUBJ_ID"> 
                           <?php 

                                  $mydb->setQuery("SELECT * FROM `subject` WHERE COURSE_ID=".$res->COURSE_ID."  AND SUBJ_ID=".$res->SUBJ_ID );
                                  $cur = $mydb->loadResultList();

                                  foreach ($cur as $result) {
                                     echo '<option value='.$result->SUBJ_ID.' >'.$result->SUBJ_CODE.' </option>';

                                  }
                                ?>

                                <?php 

                                  $mydb->setQuery("SELECT * FROM `subject` WHERE COURSE_ID=".$res->COURSE_ID."  AND SEMESTER='".$res->sched_semester."' AND   SUBJ_ID!=".$res->SUBJ_ID  );
                                  $cur = $mydb->loadResultList();

                                  foreach ($cur as $result) {
                                     echo '<option value='.$result->SUBJ_ID.' >'.$result->SUBJ_CODE.'</option>';
                                   }
                                ?> 
                         
                        </select> 
                      </div>
                    </div> 
              </div>
              </div> 

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "INST_ID">Instructor:</label>

                      <div class="col-md-8">
                        
                         <select class="form-control input-sm" name="INST_ID" id="INST_ID"> 
                  

                          <?php 

                            $mydb->setQuery("SELECT * FROM `tblinstructor` WHERE INST_ID=" .$res->INST_ID   );
                            $cur = $mydb->loadResultList();

                            foreach ($cur as $result) {
                              echo '<option value='.$result->INST_ID.' >'.$result->INST_NAME.' </option>';

                            }
                            $mydb->setQuery("SELECT * FROM `tblinstructor` WHERE INST_ID !=" .$res->INST_ID   );
                            $cur = $mydb->loadResultList();

                            foreach ($cur as $result) {
                              echo '<option value='.$result->INST_ID.' >'.$result->INST_NAME.' </option>';

                            }
                          ?>

                         
                        </select> 
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