<?php
	include("../function/condb.php");
	
	if (isset($_POST["ToyID"]))
	{
	  $ToyID = $_POST["ToyID"];
	  $TName = $_POST["TName"];
	  $Price= $_POST["Price"];
	  $Description = $_POST["Description"];
	  $Name = $_POST["Name"];
	  $Address = $_POST["Address"];
	  $Phone = $_POST["Phone"];
	  
	  if($TName == ''){
		 $TName = '更換玩具名稱';
	  }
	  
	  $sql = "UPDATE toy T LEFT JOIN toysupplier TS ON T.ToyID = TS.ToyID SET T.Name = ?,T.Price = ?,T.Description = ?,TS.Name = ?,TS.Address = ?,TS.Phone = ? WHERE T.ToyID = ?";
	  if($stmt = $conn->prepare($sql)){
	  $stmt->bind_param('sssssss', $TName, $Price, $Description, $Name, $Address, $Phone, $ToyID);
	  $stmt->execute();
	  
	  if ($stmt->errno) {
	    echo "儲存失敗!".$stmt->error;
	    
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
	    $stmt->close();
		}
	  }else{
	  	$stmt->close();
	  	header('Location: toy_edit.php');
	  }
	  }
	} 
	else 
	{
	  $ToyID = NULL;
	  echo "no supplied";
	}	
	
	
?>