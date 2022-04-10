<?php
$insert=false;
if(isset($_POST['fname'])){
  // Set connection variables
  $server = "localhost";
  $username = "root";
  $password = "";

  // Create a database connection
  $con = mysqli_connect($server, $username, $password);

  // Check for connection success
  if(!$con){
      die("connection to this database failed due to" . mysqli_connect_error());
  }
  // echo "Success connecting to the db";

  // Collect post variables
  $fname = $_POST['fname'];
  $lname = $_POST['lname'];
  $city = $_POST['city'];
  $email = $_POST['email'];
  $confirm_email = $_POST['con-email'];
  $visit_MNM = $_POST['check'];
  $joining_date = $_POST['date'];
  $mobile = $_POST['tel'];
  $veterinary_skills = $_POST['skills'];
  $address = $_POST['address'];
  $time_spent = $_POST['time'];
  $comment = $_POST['comment'];
  


  $sql = "INSERT INTO `member`.`volunteer` ( `fname`, `lname`, `city`, `email`, `confirm_email`, `visit_MNM`, `joining_date`, `mobile`, `veterinary_skills`, `address`, `time_spent`, `comment`, `dt`) 
  VALUES ( '$fname', '$lname', '$city', '$email', '$confirm_email', '$visit_MNM ', '$joining_date', '$mobile', '$veterinary_skills', '$address', '$time_spent', '$comment', current_timestamp());";

  if($con->query($sql) == true){
     echo "Successfully inserted";

    // Flag for successful insertion
    $insert = true;

}
else{
    echo "ERROR: $sql <br> $con->error";

}
// Close the database connection
$con->close();
}
?>
