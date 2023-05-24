<?php
	$filepath= realpath(dirname(__FILE__));
	include_once ($filepath.'/classes/Customer.php');
    $cmr=new Customer();
?>
<?php
    if(isset($_GET['token'])){
        $token=$_GET['token'];
        $cmr->verify($token);
    }else{
        die("Something Went Wrong");
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset=utf-8>
  <title>SB Shop Verify</title>
  <link rel="stylesheet" href="stylesheets/style.css"></style>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>

</body>
</html>