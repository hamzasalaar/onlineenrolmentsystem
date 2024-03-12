 <div class="form-group">
    <div class="col-md-8">
      <label class="col-md-4 control-label" for=
      "sched_subject">Subject:</label>

      <div class="col-md-8">
      <select class="form-control input-sm" name="SUBJ_ID" id="SUBJ_ID"> 
  

          <?php 
          require_once ("../../include/initialize.php");
            $mydb->setQuery("SELECT * FROM `subject` WHERE COURSE_ID=".$_POST['id'] . " AND SEMESTER = '" .$_POST['SEMESTER']. "'");
            $cur = $mydb->loadResultList();

            foreach ($cur as $result) {
              
                echo '<option value='.$result->SUBJ_ID .' >'.$result->SUBJ_CODE.' </option>';
              
            }
          ?>

         
        </select> 
        
        <!--  <input class="form-control input-sm" id="sched_subject" name="sched_subject" placeholder=
            "Subject" type="text" value="" required> -->
      </div>
    </div>
  </div>

 