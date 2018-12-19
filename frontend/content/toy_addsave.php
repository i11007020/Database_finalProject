<?php
  include("../function/condb.php");
	
  $TName = $_POST["TName"];
  $Price= $_POST["Price"];
  $Description = $_POST["Description"];
  $Name = $_POST["Name"];
  $Address = $_POST["Address"];
  $Phone = $_POST["Phone"];
  
  if($TName == ''){
	 $TName = '更換玩具名稱';
  }
  
  $sql = "INSERT INTO toy (ToyID,AreaCode,Name,Price,Description) values (NULL,201609260001,?,?,?)";
  if($stmt = $conn->prepare($sql)){
  $stmt->bind_param('sss', $TName, $Price, $Description);
  $stmt->execute();
  
  if ($stmt->errno) {
    echo "儲存失敗!".$stmt->error;
    $stmt->close();
  }else{
  	$ToyID = mysqli_insert_id($conn);
  }
  
  $sql = "INSERT INTO toysupplier (ToyID,Name,Address,Phone) values (?,?,?,?) ";  
  if($stmt = $conn->prepare($sql)){
  $stmt->bind_param('isss', $ToyID, $Name, $Address, $Phone);
  $stmt->execute();
  
  if ($stmt->errno) {
    echo "儲存失敗!".$stmt->error;
    $stmt->close();
  }else{
  	$stmt->close();
  	header('Location: toy_edit.php');
  }
  }
  }
	
?>