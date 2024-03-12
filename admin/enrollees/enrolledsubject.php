 <?php 
 check_message(); 

  $student = New Student();
  $res = $student->single_student($_GET['IDNO']);
  
?>

<div class="row">
 <div class="col-lg-12">
 <div class="col-md-6">
  <h2 ><?php echo   $res->LNAME.','. $res->FNAME.' '. $res->MNAME; ?></h2>
       <hr/>  
 </div>
</div>
</div>
 <form action="controller.php?action=addsubjecttrans" method="POST">
      <table class="table table-hover"> 
      <input type="hidden" name="IDNO" id="IDNO"  value="<?php echo $_GET['IDNO']; ?>">
            <thead>
              <tr  bgcolor="#098744" style="color:#fff">
             <th>ID</th>
              <th>
               <!-- <input type="checkbox" name="chkall" id="chkall" onclick="return checkall('selector[]');">  -->
               Subject</th>
              <th>Description</th> 
              <th>Unit</th>
              <th>Pre-Requisite</th>
              <th>Course/Year</th>
              <!-- <th>Academic Year</th> -->
              <th>Semester</th>
              <th width="10%" >Action</th>
            </tr> 
          </thead>
          <tbody>
              
            <?php 

             $payable = 0;
            if (isset( $_SESSION['admingvCart'])){


             $count_cart = count($_SESSION['admingvCart']);

                for ($i=0; $i < $count_cart  ; $i++) {  

                    $query = "SELECT * FROM `subject` s, `course` c WHERE s.COURSE_ID=c.COURSE_ID AND SUBJ_ID=" . $_SESSION['admingvCart'][$i]['subjectid'];
                     $mydb->setQuery($query);
                     $cur = $mydb->loadResultList(); 
                      foreach ($cur as $result) { 

                         echo '<tr>';
                          // echo '<td width="5%" align="center"></td>';
                          echo '<td>' . $result->SUBJ_ID.'</a></td>';
                          echo '<td>'. $result->SUBJ_CODE.'</td>';
                          echo '<td>'. $result->SUBJ_DESCRIPTION.'</td>';
                          echo '<td>' . $result->UNIT.'</a></td>';
                          echo '<td>'. $result->PRE_REQUISITE.'</td>';
                          echo '<td>'. $result->COURSE_NAME.'-'.$result->COURSE_LEVEL.'</td>';
                          // echo '<td>' . $result->AY.'</a></td>';
                          echo '<td>'. $result->SEMESTER.'</td>'; 
                          echo '<td align="center" > <a title="Remove" href="controller.php?action=removed&id='.$result->SUBJ_ID.'&IDNO='.$_GET['IDNO'].'"  class="btn btn-danger btn-xs  ">  Remove <span class="fa fa-trash fw-fa"></span></a>
                      </td>';
                            echo '</tr>';
                        
                          
                      }
                          
                    
                    $payable +=  $result->UNIT ;


 

                 
                }

                 $_SESSION['pay'] = $payable;
  
              } 
            ?>
          </tbody>
          <tfoot>
          <?php
            if (isset($_SESSION['pay'])) {
              # code...
              echo '<tr>
           <td colspan="3"><h4 align="right">Total Units:</h4></td>
           <td colspan="6">
             <h4><b> '. $_SESSION['pay']  .'</b></h4>
                         
            </td>
            </tr>
            <tr> 
            <td colspan="5">  
              <a href="index.php?view=addCredit&IDNO='.$_GET['IDNO'].'" class="btn btn-success btn-md" name="submit" type="submit">Add Another Subject</a>
            </td> 
            <td colspan="3" align="right" >  
               <button class="btn btn-success btn-md" name="submit" type="submit">Submit</button>
            </td>
             </tr>';
            }else{
            echo '<tr>
            <td colspan="8">No Records found.</td>

            </tr>
            <tr> 
              <td colspan="7">  
                <a href="index.php?view=addCredit&IDNO='.$_GET['IDNO'].'" class="btn btn-success btn-md" name="submit" type="submit">Add Another Subject</a>
              </td>
             </tr>';
            }
          ?> 
          </tfoot>  
        </table> 
</form>