<?php
$insert=false;
if(isset($_POST['name'])){
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
  $name = $_POST['name'];
   $email = $_POST['email'];
  $mobile = $_POST['mobile'];
  $msg = $_POST['msg'];
  


  $sql = "INSERT INTO `member`.`contact` ( `name`, `email`,  `mobile`, `msg`, `dt`) 
  VALUES ( '$name',  '$email', '$mobile', '$msg', current_timestamp());";

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