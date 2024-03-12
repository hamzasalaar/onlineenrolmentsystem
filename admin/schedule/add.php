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
        </div> 
                    
                  <!--  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_time">Time:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="sched_time" name="sched_time" placeholder=
                            "Time" type="text" value="">
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
                           type="text"  data-inputmask="'alias': 'hh:mm t'" data-mask value="" value="">
                          </div>
                       
                          <label class="col-md-2">To</label>
                         
                          <div class="col-md-4 input-group">
                           <div class="input-group-addon"> 
                              <i class="fa fa-clock-o"></i>
                            </div>
                           <input class="form-control input-sm time" id="TIME_TO" name="TIME_TO" data-inputmask="'alias': 'hh:mm t'" 
                           type="text"   data-mask value="" value="">
                             
                          </div>
                           <!--  <div class="col-md-3 ">
                           <select class="form-control input-sm " name="AMPM">
                              <option value="am">am</option>
                               <option value="pm">pm</option>
                            </select>
                        </div> -->
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
                            "Day" type="text" value="">
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

                  

                   <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "sched_semester">Semester:</label>

                      <div class="col-md-8">
                       <select class="form-control input-sm" name="sched_semester" id="sched_semester"> 
                        <option value="First" >First</option>
                         <option value="Second">Second</option> 
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
                            "Room" type="text" value="">
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "SECTION">Section:</label>

                      <div class="col-md-8">
                        
                         <input class="form-control input-sm" id="SECTION" name="SECTION" placeholder=
                            "Section" type="number" value="">
                      </div>
                    </div>
                  </div>

                  <div id="loaddata"></div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "INST_ID">Instructor:</label>

                      <div class="col-md-8">
                        
                         <select class="form-control input-sm" name="INST_ID" id="INST_ID"> 
                  

                          <?php 

                            $mydb->setQuery("SELECT * FROM `tblinstructor` "  );
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
       