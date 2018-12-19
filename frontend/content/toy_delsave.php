<?php
	include("../function/condb.php");
	
	if (isset($_POST["ToyID"]) && !empty($_POST["ToyID"]))
	{
	  $ToyID = $_POST["ToyID"];
	  
	  $sql = "DELETE FROM toy WHERE ToyID = ?";
	  if($stmt = $conn->prepare($sql)){
		  $stmt->bind_param('s', $ToyID);
		  $stmt->execute();
		  
		  if ($stmt->errno) {
			echo "刪除失敗!".$stmt->error;
			$stmt->close();
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