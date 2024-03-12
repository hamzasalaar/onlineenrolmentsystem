                      <?php 
                       if (!isset($_SESSION['ACCOUNT_ID'])){
                          redirect(web_root."admin/index.php");
                         }

                      // $autonum = New Autonumber();
                      // $res = $autonum->single_autonumber(2);

                       ?> 
 <form class="form-horizontal span6" action="controller.php?action=add" method="POST">

           <div class="row">
         <div class="col-lg-12">
            <h1 class="page-header">Add New Schedule</h1>
          </div>
          <!-- `CLASS_CODE`, `SUBJ_ID`, `INST_ID`, `SYID`, `AY`, `DAY`, `C_TIME`, `IDNO`, `ROOM`, `SECTION` -->
       </div> 
                   
                   <div class="form-group">
                   <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "C_TIME">Time:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="C_TIME" name="C_TIME" placeholder=
                            "Time" type="text" value="">
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "DAY">Days:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="DAY" name="DAY" placeholder=
                            "Day" type="text" value="">
                      </div>
                    </div>
                  </div>


                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "crs_yr">Course:</label>

                      <div class="col-md-8">
                       <select class="form-control input-sm" name="COURSE_ID" id="COURSE_ID"> 
                  

                          <?php 

                            $mydb->setQuery("SELECT * FROM `course` "  );
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
 
                  <!-- <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_sy">Academic Year:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="sched_sy" name="sched_sy" placeholder=
                            "Academic Year" type="text" value="" required>
                      </div>
                    </div>
                  </div> -->
                   <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "SEMESTER">Semester:</label>

                      <div class="col-md-8">
                       <select class="form-control input-sm" name="SEMESTER" id="SEMESTER"> 
                        <option value="First" >First</option>
                         <option value="Second">Second</option> 
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
                            "Room" type="text" value="">
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
       