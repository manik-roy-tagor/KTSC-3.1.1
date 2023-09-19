<?php
$filepath = realpath(dirname(__FILE__));
include_once $filepath . '/../lib/Database.php';
include_once $filepath . '/../helpers/Format.php';
?>
<?php
/**
*
*/
class Slider{
	private $db;
	private $fm;
	function __construct() {
		$this->db = new Database();
		$this->fm = new Format();
	}
	/* ------- tableegory ---------*/

public function getAllSlider() {
	$query = "SELECT * FROM photo_gallary WHERE isActive = '1' AND add_desc='Slider' ORDER BY id DESC";
	$result = $this->db->select($query);
	return $result;
}

// public function teamInsert($data) {
//     $emp_name = $this->fm->validation($data['emp_name']);
//     $name = mysqli_real_escape_string($this->db->link, $emp_name);

//     $emp_type = $this->fm->validation($data['emp_type']);
//     $emp_type = mysqli_real_escape_string($this->db->link, $emp_type);

//     $emp_designation = $this->fm->validation($data['emp_designation']);
//     $emp_designation = mysqli_real_escape_string($this->db->link, $emp_designation);

//     $dob = $this->fm->validation($data['dob']);
//     $dateOfBirth = mysqli_real_escape_string($this->db->link, $dob);

//     $phn = $this->fm->validation($data['phn']);
//     $phoneNo = mysqli_real_escape_string($this->db->link, $phn);

//     $email_Id = $this->fm->validation($data['email_Id']);
//     $email_Id = mysqli_real_escape_string($this->db->link, $email_Id);

//     $tel = $this->fm->validation($data['tel']);
//     $TelephoneNo = mysqli_real_escape_string($this->db->link, $tel);

//     $fbId = $this->fm->validation($data['fbId']);
//     $facebookId = mysqli_real_escape_string($this->db->link, $fbId);

//     $emp_for_trade = $this->fm->validation($data['emp_for_trade']);
//     $emp_for_trade = mysqli_real_escape_string($this->db->link, $emp_for_trade);

//     $joinDate = $this->fm->validation($data['joinDate']);
//     $joiningDate = mysqli_real_escape_string($this->db->link, $joinDate);

//     $allowTypes     = array('jpg','png','jpeg','gif','pdf');
//     $filename       = $_FILES["file_name"]["name"];
//     $tempname       = $_FILES["file_name"]["tmp_name"]; 

//     $filename = mt_rand(1000,1000000000)." - ".$filename;
//     $folder = "../files/gallary/".$filename;  
//     $imageFileType = strtolower(pathinfo($filename,PATHINFO_EXTENSION));
//     move_uploaded_file($tempname, $folder);

//     if($emp_type == "Director General"){
//         $index_serial = 1;
//     }
//     if($emp_type == "Principal"){
//         $index_serial = 2;
//     }
//     if($emp_type == "Academic Incharge"){
//         $index_serial = 3;
//     }
//     if($emp_type == "Chief Instructor"){
//         $index_serial = 4;
//     }
//     if($emp_type == "Instructor"){
//         $index_serial = 5;
//     }
//     if($emp_type == "Junior Instructor"){
//         $index_serial = 6;
//     }
//     if($emp_type == "Guest Speaker"){
//         $index_serial = 7;
//     }
//     if($emp_type == "Office"){
//         $index_serial = 8;
//     }

//     if($emp_name = "" || $phn = "" || $emailId = ""){
//         $msg = "<div class='alert alert-warning alert-dismissable Cus'><b>Sorry!</b> Field Must not be empty. </div>";
//             return $msg;
//     }else{			
//         $query = "INSERT INTO employee_info(empname, empType, emp_designation, dateOfBirth, phoneNo, TelephoneNo, email_Id, facebookId, emp_for_trade, emp_image, isActive, index_serial) VALUES('$name', '$emp_type', '$emp_designation', '$dateOfBirth', '$phoneNo', '$TelephoneNo', '$email_Id', '$facebookId', '$emp_for_trade', '$filename', '1', '$index_serial')";
//         $EmployeeInsert = $this->db->insert($query);
//         if ($EmployeeInsert) {
//             $msg = "<div class='alert alert-success alert-dismissable Cus'><b>Success!</b> Employee Inserted Successfully.</div>";
//             return $msg;
//         } else {
//             $msg = "<div class='alert alert-danger alert-dismissable Cus'><b>Sorry!</b> Employee not inserted.</div>";
//             return $msg;
//         }		
// }
// }

// public function getFullTeam() {
// 	$query = "SELECT * FROM employee_info WHERE isActive = '1' ORDER BY index_serial";
// 	$result = $this->db->select($query);
// 	return $result;
// }

// public function getteamById($id) {
// 	$query = "SELECT * FROM employee_info WHERE id = '$id'";
// 	$result = $this->db->select($query);
// 	return $result;
// }
// public function teamUpdate($data, $id) {
// 	$emp_name = $this->fm->validation($data['emp_name']);
// 	$name = mysqli_real_escape_string($this->db->link, $emp_name);

// 	$father_name = $this->fm->validation($data['father_name']);
// 	$fatherName = mysqli_real_escape_string($this->db->link, $father_name);

// 	$mother_name = $this->fm->validation($data['mother_name']);
// 	$motherName = mysqli_real_escape_string($this->db->link, $mother_name);

// 	$dob = $this->fm->validation($data['dob']);
// 	$dateOfBirth = mysqli_real_escape_string($this->db->link, $dob);

// 	$phn = $this->fm->validation($data['phn']);
// 	$phoneNo = mysqli_real_escape_string($this->db->link, $phn);

// 	$emailId = $this->fm->validation($data['emailId']);
// 	$emailId = mysqli_real_escape_string($this->db->link, $emailId);

// 	$tel = $this->fm->validation($data['tel']);
// 	$TelephoneNo = mysqli_real_escape_string($this->db->link, $tel);

// 	$fbId = $this->fm->validation($data['fbId']);
// 	$facebookId = mysqli_real_escape_string($this->db->link, $fbId);

// 	$twit = $this->fm->validation($data['twit']);
// 	$twitter_id = mysqli_real_escape_string($this->db->link, $twit);

// 	$joinDate = $this->fm->validation($data['joinDate']);
// 	$joiningDate = mysqli_real_escape_string($this->db->link, $joinDate);

// 	if($emp_name = "" || $phn = "" || $emailId = "" || $joinDate = ""){
// 		$msg = "<div class='alert alert-warning alert-dismissable Cus'><b>Sorry!</b> Field Must not be empty. </div>";
// 			return $msg;
// 	}else{
// 		$query = "UPDATE employee_info SET empname='empname',
// 		fatherName='fatherName',
// 		motherName='motherName',
// 		dateOfBirth='dateOfBirth',
// 		phoneNo='phoneNo',
// 		TelephoneNo='TelephoneNo',
// 		emailId='emailId',
// 		facebookId='facebookId',
// 		twitter_id='twitter_id',
// 		joiningDate='joiningDate',
// 		endDate='endDate' WHERE 1 WHERE id = '$id'";
// 		$result = $this->db->update($query);
// 		if ($result) {
// 			$msg = "<div class='alert alert-success alert-dismissable Cus'><b>Success!</b> Employee Updated Successfully.</div>";
// 			return $msg;
// 		} else {
// 			$msg = "<div class='alert alert-danger alert-dismissable Cus'><b>Sorry!</b> Employee Not Updated.</div>";
// 			return $msg;
// 		}
// 	}
// }
// public function ActiveEmployee($id) {
// 	$query = "UPDATE employee_info SET isActive = '1' WHERE id = '$id'";
// 	$result = $this->db->select($query);
// 	return $result;
// }
// public function DeactiveEmployee($id) {
// 	$query = "UPDATE employee_info SET isActive = '0' WHERE id = '$id'";
// 	$result = $this->db->select($query);
// 	return $result;
// }
	
}
?>