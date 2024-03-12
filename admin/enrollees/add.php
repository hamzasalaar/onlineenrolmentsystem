 
                  <?php 
                       if (!isset($_SESSION['ACCOUNT_ID'])){
                          redirect(web_root."admin/index.php");
                         }

                      // $autonum = New Autonumber();
                      // $res = $autonum->single_autonumber(2);
 
                   ?>
      
       <div class="table-responsive" style="margin-top:5%;"> 

       
             <form action="customer/controller.php?action=delete" Method="POST">            
                    <table id="dash-table"  class="table table-striped table-bordered table-hover "  style="font-size:12px" cellspacing="0"  > 
                      <thead>  
                          <th >Subject</th> 
                          <th >Unit</th> 
                          <th >Pre-Requisite</th>
                          <th >Course</th>
                          <th >Action</th> 
                      </thead>   
                    <tbody>
                    <?php 


              $mydb->setQuery("SELECT * FROM `subject` s, `course` c  WHERE s.COURSE_ID=c.COURSE_ID 
              AND COURSE_NAME='".$cres->COURSE_NAME."' AND SEMESTER='".$_SESSION['SEMESTER']."'");

              $cur = $mydb->loadResultList();

            foreach ($cur as $result) {
              echo '<tr>';
              // echo '<td width="5%" align="center"></td>';
              // echo '<td>' . $result->SUBJ_ID.'</a></td>';
              echo '<td>'. $result->SUBJ_CODE.' ['. $result->SUBJ_DESCRIPTION.']</td>'; 
              echo '<td>' . $result->UNIT.'</a></td>';
              echo '<td>'. $result->PRE_REQUISITE.'</td>';
              echo '<td>'. $result->COURSE_NAME.'-'.$result->COURSE_LEVEL.'</td>';  
               
              echo '<td align="center" > 
                     <a title="Add" href="controller.php?action=doadd&id='.$result->SUBJ_ID.'&IDNO='.$_GET['IDNO'].'"  class="btn btn-primary btn-xs ">  Add <span class="fa fa-plus fw-fa"></span></a>
                    </td>';
              echo '</tr>';



 
            } 
            ?>
                    </tbody>
                      
                      
                    </table>
                 </form>
                         
         
              </div><!--/table-resp--> 
 