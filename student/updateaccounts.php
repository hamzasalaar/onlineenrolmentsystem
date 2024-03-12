<?php
$student = New Student();
$res = $student->single_student($_SESSION['IDNO']);

$studdetails = New StudentDetails();
$details = $studdetails->single_StudentDetails($_SESSION['IDNO']); 
?>
 
<?php echo ($res->STATUS=='Widow') ? true : false; ?>

        <form action="student/controller.php?action=edit" class="form-horizontal" method="post">
       
       <br/>
			<fieldset>
              <legend>Basic Information</legend>
			  <!-- <h4>It’s free and always will be.</h4> -->
				 <div class="row">
					
				  <div class="col-xs-12">
					  <div class="form-group">
						<div class="rows">
							<div class="col-md-12">
								<div class="col-lg-5">
									<input class="form-control input-lg" id="IDNO" name="IDNO" placeholder="Student Id" type="hidden" value="<?php echo isset($_SESSION['STUDID']) ? $_SESSION['STUDID'] : ''; ?>">
								</div> 
							</div>
						</div>
					</div>

					<div class="form-group">
					<div class="rows">
						<div class="col-md-12">
							<div class="col-lg-5">
								<input class="form-control input-lg" id="FNAME" name="FNAME" placeholder="First Name" type="text" value="<?php echo isset($res->FNAME) ? $res->FNAME: ''; ?>">
							</div>

							<div class="col-lg-5">
								<input class="form-control input-lg" id="LNAME" name="LNAME" placeholder="Last Name" type="text" value="<?php echo isset($res->LNAME) ? $res->LNAME : ''; ?>">
							</div>
							<div class="col-lg-2">
								<input class="form-control input-lg" id="MI" name="MI" placeholder="MI" type="text" value="<?php echo isset($res->MNAME) ? $res->MNAME : ''; ?>">
							</div>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="rows">
						<div class="col-md-12">
							<div class="col-lg-12">
								<input class="form-control input-lg" id="PADDRESS" name="PADDRESS" placeholder="Permanent Address" type="text" value="<?php echo isset($res->HOME_ADD) ? $res->HOME_ADD : ''; ?>">
							</div>
						</div>
					</div>
				</div>
				<div class="form-group"> 
				<div class="rows">
					<div class="col-md-5">
						<div class="form-group">
							 <h4>
					     <div class="col-md-3">
								<label class="col-lg-4 control-label">Sex</label>
							</div>

							<div class="col-lg-5">
								<div class="radio">
									<label><input checked id="optionsRadios1" checked="<?php echo ($res->SEX=='Female') ? true : false ; ?>" name="optionsRadios" type="radio" value="Female">Female</label>
								</div>
							</div>

							<div class="col-lg-4">
								<div class="radio">
									<label><input id="optionsRadios2" checked="<?php echo ($res->SEX=='Male') ? true : false  ; ?>" name="optionsRadios" type="radio" value="Male"> Male</label>
								</div>
							</div>
						</h4>
						</div>
					</div>
					<div class="col-md-6">
						 <h4>
				              <div class="form-group"> 
				                <div class="input-group">
				                <label>Date of birth</label>
				                  <div class="input-group-addon"> 
				                    <i class="fa fa-calendar"></i>
				                  </div>
				                  <input name="BIRTHDATE" value="<?php echo date_format(date_create($res->BDAY),'m/d/Y'); ?>" type="text" class="form-control input-lg" size="7" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask>
				                </div>
				                <!-- /.input group -->
				              </div>
				              </h4>
						</div>
					</div>
				</div>

			
				 


	            <div class="form-group">
					<div class="rows">
						<div class="col-md-12">
							<div class="col-lg-12">
								<input class="form-control input-lg" id="BIRTHPLACE" name="BIRTHPLACE" placeholder="Place of Birth" type="text" value="<?php echo isset($res->BPLACE) ? $res->BPLACE : ''; ?>">
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="rows">
						<div class="col-md-12">
							<div class="col-lg-12">
								<input class="form-control input-lg" id="NATIONALITY" name="NATIONALITY" placeholder="Nationality" type="Text"value="<?php echo isset($res->NATIONALITY) ? $res->NATIONALITY : ''; ?>">
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="rows">
						<div class="col-md-12">
							<div class="col-lg-4">
								<input class="form-control input-lg" id="RELIGION" name="RELIGION" placeholder="Religion" type="text" value="<?php echo isset($res->RELIGION) ? $res->RELIGION : ''; ?>">
							</div>

							<div class="col-lg-4">
								<input class="form-control input-lg" id="CONTACT" name="CONTACT" placeholder="Contact Number" type="text" value="<?php echo isset($res->CONTACT_NO) ? $res->CONTACT_NO : ''; ?>">
							</div>
							<div class="col-md-4">
							 <h4>
							 <div class="col-md-5">
								<label class="col-lg-10 control-label">Status</label>
							</div>

							<div class="col-lg-7">
								<select class="form-control input-sm" name="CIVILSTATUS">
								<?php
								switch ($res->STATUS) {
									case 'Single':
										# code...
									echo '<option selected >Single</option>';
									echo '<option  >Married</option>';
									echo '<option  >Widow</option>';
										break;
									case 'Married':
									# code...
									echo '<option  >Single</option>';
									echo '<option selected >Married</option>';
									echo '<option  >Widow</option>';
										break;
									case 'Married':
									# code...
									echo '<option  >Single</option>';
									echo '<option  >Married</option>';
									echo '<option selected >Widow</option>';
										break;
									
									default:
										# code...
										break;
								} 

								?>
								<!-- 	<option selected="<?php echo ($res->STATUS=='Single') ? true : false; ?>">Single</option> 
								    <option selected="<?php echo ($res->STATUS=='Married') ? true : false; ?>">Married</option>
									<option selected="<?php echo ($res->STATUS=='Widow') ? true : false; ?>">Widow</option> -->
								</select>
							</div>
							 </h4>
						</div> 
						</div>
					</div>
				</div>

			 
				 <div class="form-group">
					<div class="rows">
						<div class="col-md-12">
							<div class="col-lg-12">
								<input class="form-control input-lg" id="GUARDIAN" name="GUARDIAN" placeholder="Parents/Guardian Name" type="text"value="<?php echo isset($details->GUARDIAN) ? $details->GUARDIAN : ''; ?>">
							</div>
						</div>
					</div>
				</div>
				 <div class="form-group">
					<div class="rows">
						<div class="col-md-12">
							<div class="col-lg-12">
								<input class="form-control input-lg" id="GCONTACT" name="GCONTACT" placeholder="Contact Number" type="text"value="<?php echo isset($details->GCONTACT) ? $details->GCONTACT : ''; ?>">
							</div>
						</div>
					</div>
				</div>
			 
				<div class="form-group">
					<div class="rows">
						<div class="col-md-6">
							<div class="col-lg-12">
								<input class="form-control input-lg" id="USER_NAME" name="USER_NAME" placeholder="Username" type="text"value="<?php echo isset($res->ACC_USERNAME) ? $res->ACC_USERNAME : ''; ?>">
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="rows">
						<div class="col-md-6">
							<div class="col-lg-12">
								<input class="form-control input-lg" id="USER_NAME" name="USER_NAME" placeholder="Username" type="text"value="<?php echo isset($res->ACC_USERNAME) ? $res->ACC_USERNAME : ''; ?>">
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="form-group">
					<div class="rows">
						<div class="col-md-12">
							<div class="col-lg-12">
								<input class="form-control input-lg" id="PASS" name="PASS" placeholder="Password" type="password"value="<?php echo isset($_SESSION['PASS']) ? $_SESSION['PASS'] : ''; ?>">
							</div>
						</div>
					</div>
				</div> -->
 
				<div class="form-group">
					<div class="rows">
						<div class="col-md-8">
							<div class="col-lg-12">
								<button class="btn btn-success btn-lg" name="save" type="submit">Save</button>
							</div>
						</div>
					</div>
				</div>
				
				</div>
					
				</div>	
				</fieldset>
			</form>
	 