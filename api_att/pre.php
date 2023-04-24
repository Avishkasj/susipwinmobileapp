<?php
ob_start();
include 'connection.php';

$useremail = $_POST['user_email'];
$userpassword = $_POST['user_password'];

$musqlquery = "SELECT * FROM users WHERE username= '$useremail' AND password = '$userpassword' ";

$result = $conn->query($musqlquery);

if($result->num_rows > 0){
    $userrecords = array();
    while($rowFound = $result -> fetch_assoc()){
        $userrecords[] = $rowFound;
    }
    $response = array(
        "success" => true,
        "userData" => $userrecords
    );
} else {
    $response = array(
        "success" => false
    );
}

header('Content-Type: application/json');
echo json_encode($response);
exit();
?>
