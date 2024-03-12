                      <?php 
                       if (!isset($_SESSION['ACCOUNT_ID'])){
                          redirect(web_root."admin/index.php");
                         }

                      // $autonum = New Autonumber();
                      // $res = $autonum->single_autonumber(2);
$sem = new Semester();
$resSem = $sem->single_semester();
$_SESSION['SEMESTER'] = $resSem->SEMESTER; 


$currentyear = date('Y');
$nextyear =  date('Y') + 1;
$sy = $currentyear .'-'.$nextyear;
$_SESSION['SY'] = $sy;

  $student = New Student();
  $res = $student->single_student($_GET['IDNO']);

  $course = new Course();
  $cres = $course->single_course($res->COURSE_ID);
  
?>

<div class="row">
 <div class="col-lg-12">
 <div class="col-md-6">
  <h2 ><?php echo   $res->LNAME.','. $res->FNAME.' '. $res->MNAME; ?> <small> <div class="pull-right">
         <i class="fa fa-list fa-fw"> </i> 
         <a href="<?php echo web_root; ?>admin/enrollees/index.php?view=enrolledsubject&IDNO=<?php echo $_GET['IDNO'] ?>"
          title="Subject to be enrolled" class="btn btn-danger btn-xs">Go to Subject to be Enrolled<?php echo  isset($cart) ? $cart : "(0)" ; ?></a>            
      </div></small></h2>
       <hr/>  
 </div>
</div>
</div>
 <form class="form-horizontal span6" action="controller.php?action=add" method="POST">

     <div class="row">
         <div class="col-lg-12">
            <h3 class="page-header">Add Subject to the Transferee 
</h3>
          </div>
          <!-- /.col-lg-12 -->
       </div> 
                   
 

<div class="panel">            
  <div class="panel-body">
   <?php
       check_message();   
       ?>
  <ul class="nav nav-tabs" id="myTab">
    <li class="active"><a href="#home" data-toggle="tab">Evaluate Student</a></li> 
    <li><a href="#grades" data-toggle="tab">Subject to be Enrolled</a></li>  
  </ul>
              
         <div class="tab-content">
            <div class="tab-pane active" id="home">
                        <div class="table-responsive" style="margin-top:5%;"> 
             <form action="customer/controller.php?action=delete" Method="POST">            
                    <table id="dash-table1"  class="table table-striped table-bordered table-hover "  style="font-size:12px" cellspacing="0"  > 
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
              AND COURSE_NAME='".$cres->COURSE_NAME."'");

              $cur = $mydb->loadResultList();

            foreach ($cur as $result) {
              echo '<tr>';
              // echo '<td width="5%" align="center"></td>';
              // echo '<td>' . $result->SUBJ_ID.'</a></td>';
              echo '<td>'. $result->SUBJ_CODE.' ['. $result->SUBJ_DESCRIPTION.']</td>'; 
              echo '<td>' . $result->UNIT.'</a></td>';
              echo '<td>'. $result->PRE_REQUISITE.'</td>';
              echo '<td>'. $result->COURSE_NAME.'-'.$result->COURSE_LEVEL.'</td>';  
               
              // echo '<td align="center" > 
              //        <a title="Add" href="controller.php?action=doadd&id='.$result->SUBJ_ID.'&IDNO='.$_GET['IDNO'].'"  class="btn btn-primary btn-xs ">  Add <span class="fa fa-plus fw-fa"></span></a>
              //       </td>';
                echo '<td align="center" > <a  title="Edit" href="addgrades.php?id='.$result->SUBJ_ID.'&IDNO='.$res->IDNO.'&SEMESTER='.$result->SEMESTER.'" data-toggle="lightbox" >  <span class="fa fa-plus fw-fa"></span> Add gardes</a>
                      </td>';
              echo '</tr>';

 
            } 
            ?>
                    </tbody>
                      
                      
                    </table>
                 </form>
                     
              </div><!--/table-resp--> 

               
             </div><!--/tab-pane-->
            <div class="tab-pane" id="grades">
          
              <?php  require_once  "add.php" ?>
          
       
            </div>
              
          </div><!--/tab-content-->
 </div>
 
  <?php 
    unset($_SESSION['SEMESTER']);
    unset($_SESSION['SY']);

  ?>