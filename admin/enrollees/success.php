<?php

if (!isset($_GET['IDNO'])) {
   redirect("index.php");
}
$sem = new Semester();
$resSem = $sem->single_semester();
$_SESSION['SEMESTER'] = $resSem->SEMESTER; 

$currentyear = date('Y');
$nextyear =  date('Y') + 1;
$sy = $currentyear .'-'.$nextyear;
$_SESSION['SY'] = $sy;

     $student = New Student(); 
     $studres = $student->single_student($_GET['IDNO'])
     
?>
<form action="index.php?q=payment" method="POST">
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper container">
 <!-- Main content -->
 <?php   //check_message();  ?> 
    <section class="invoice">
      <!-- title row -->
      <div class="row">
        <div class="col-xs-12">
          <h3 class="page-header">
            <i class="fa fa-user"></i> Student Information
            <small class="pull-right">Date: <?php echo date('m/d/Y'); ?></small>
          </h3>
        </div>
        <!-- /.col -->
      </div>
      <!-- info row -->
      <div class="row invoice-info">
        <div class="col-sm-8 invoice-col"> 
          <address>
            <b>Name : <?php echo $studres->LNAME  . ', ' . $studres->FNAME  .' ' . $studres->MNAME  ;?></b><br>
            Address : <?php echo  $studres->HOME_ADD  ;?><br> 
            Contact No.: <?php echo  $studres->CONTACT_NO  ;?><br>
            
          </address>
        </div>
    
        <div class="col-sm-4 invoice-col">
          <b>Course/Year:  <?php 
            $course = New Course();
            $singlecourse = $course->single_course($studres->COURSE_ID ); 

            echo $_SESSION['COURSE_YEAR'] = $singlecourse->COURSE_NAME.'-'.$studres->YEARLEVEL;
           
            ?></b><br>
          <b>Semester : <?php echo $_SESSION['SEMESTER']; ?></b> <br/>
          <b>Academic Year : <?php echo $_SESSION['SY']; ?></b>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      <div class="row">
        <div class="col-xs-12">
          <h3 class="page-header">
            <i class="fa fa-book"></i> List of Subjects
            <!-- <small class="pull-right">Date: 2/10/2014</small> -->
          </h3>
        </div>
        <!-- /.col -->
      </div>

<?php 
// if (isset($_POST['btnCartSubmit'])) {
  
          if (isset($_SESSION['admingvCart'])){
  # code...
?>
<!-- Table row -->
<div class="row">
  <div class="col-xs-12 table-responsive">
    <table class="table table-striped">
      <thead>
      <tr> 
        <th>Id</th>
        <th>Subject</th>
        <th>Description</th>
        <th>Unit</th>  
      </tr>
      </thead>
      <tbody>
      <?php  
        $totunit = '';
          if (isset($_SESSION['admingvCart'])){


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
                          echo '</tr>';

                        
                        
                          $totunit +=  $result->UNIT; 
                      }  
                        
                }  
              } 
          ?>
      </tbody>
     </table>  
<?php
}else{ 
?>
<!-- Table row -->
<div class="row">
  <div class="col-xs-12 table-responsive">
    <table class="table table-striped">
      <thead>
      <tr> 
        <th>Id</th>
        <th>Subject</th>
        <th>Description</th>
        <th>Unit</th>  
      </tr>
      </thead>
      <tbody> 
      <?php 
       $totunit = 0;
      $mydb->setQuery("SELECT * FROM `subject` s, `course` c 
        WHERE s.COURSE_ID=c.COURSE_ID AND CONCAT(`COURSE_NAME` ,  '-',  `COURSE_LEVEL` ) ='".$_SESSION['COURSE_YEAR']."' AND SEMESTER='".$_SESSION['SEMESTER']."'");

      $cur = $mydb->loadResultList();

      foreach ($cur as $result) {
        echo '<tr>';
        echo '<td>'.$result->SUBJ_ID.'</td>';
        echo '<td>'.$result->SUBJ_CODE.'</td>'; 
        echo '<td>'.$result->SUBJ_DESCRIPTION.'</td>';
        echo '<td>'.$result->UNIT.'</td>';
        echo '</tr>';

        $totunit +=  $result->UNIT;
      }
      ?>
      <tr>
      <td colspan="3" align="right" >Total Units</td>
      <td><?php echo $totunit;?></td>
      </tr> 
      </tbody>
    </table>
  </div>
  <!-- /.col -->
</div>
<!-- /.row -->
<?php
}
?>
   <div class="row">
        <!-- accepted payments column -->
        <div class="col-xs-6">
          <p class="lead">Tuition:</p>
        <p class="lead">

          <?php

           $subtot = '';
           $perunit = 209;
           $entrancefee = 5693;
           $totsem = 0;

           $subtot = $totunit * $perunit;
           $totsem = $entrancefee + $subtot;
           echo$totunit .' x ' . ' &#8369 ' . $perunit . ' =  &#8369 ' . $subtot ; 


           $_SESSION['SUBTOT'] = $subtot;
           $_SESSION['ENTRANCEFEE'] = $entrancefee;
           $_SESSION['TOTSEM'] = $totsem;
           $_SESSION['TOTUNIT'] = $totunit;
           ?> 
          </p>
          

          <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
           Description : This is the formula of amount per unit and its total.
          </p>
        </div>
        <!-- /.col -->
        <div class="col-xs-6">
          <!-- <p class="lead">Amount Due 2/22/2014</p> -->

         <br/>
         <br/>
          <div class="table-responsive">
            <table class="table">
              <tr>
                <th style="width:50%">Tuition Fees:</th>
                <td>  &#8369 <?php echo  $subtot; ?></td>
              </tr>
              <tr>
                <th>Miscellaneous Fee</th>
                <td> &#8369 <?php echo  $entrancefee  ; ?></td>
              </tr>
              <!-- <tr>
                <th>Shipping:</th>
                <td>$5.80</td>
              </tr> -->
              <tr>
                <th>Total Semester:</th>
                <td> &#8369 <?php echo  $totsem; ?>
                <input type="hidden" id="totsem" name="totsem" value="<?php echo  $totsem; ?>">
                </td>
              </tr>
              <?php
              $student = New Student();
              $result = $student->single_student($_GET['IDNO']);

              if ($result->student_status=='Regular' || $result->student_status=='Irregular') { 
              ?>
              <tr>
                <th>Partial Payment:</th>
                <td><input type="text" id="PartialPayment" autocompete="false" name="PartialPayment" required="true"></td>
              </tr>
              <tr>
                <th>Balance:</th>
                <td> &#8369 <span id="Balance">0.00</span>
                <input type="hidden" id="txtBalance" name="txtBalance" value="">
                </td>
              </tr>
              <?php
                }
              ?>
            </table>
          </div>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- this row will not appear when printing -->
      <div class="row no-print">
        <div class="col-xs-9">
          <a href="statementaccnt.php?IDNO=<?php echo $_GET['IDNO']; ?>" target="_blank" class="btn btn-primary"><i class="fa fa-print"></i> Print</a>
          
      </div>
      
      </div>
    </section> 
    <!-- /.content -->
    <div class="clearfix"></div>
  </div>
 <?php
  unset($_SESSION['SEMESTER']);
  unset($_SESSION['SY']);
  // unset($_SESSION['admingvCart']);
 ?>