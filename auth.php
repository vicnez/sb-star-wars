<?php

require_once('config.php');
require_once('dbconnect.php');

session_start();

if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['login']) && !empty($_POST['login'])){
	

	$username = $_POST['username'];
	$pin = md5($_POST['pswd']);

	$sql = "SELECT username from users WHERE username = '".$username."' AND pin = '".$pin."' AND status = 1 ";
	$res = executeSelectQuery($sql);
	if (count($res) == 1) {
	    $user = $res[0];
	    $_SESSION['auth_username'] = $user['username'];
	     header("location: ".WEBAPP_URL."?page_key=peoples");
	}else{
		echo "<span style='margin-left: 210px;'>Enter Valid Username And Password</span>";
	}
	
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Star wars</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container" >
  <!-- <h2>Star wars</h2> -->
  <form action="<?php echo WEB_URL; ?>auth.php" style="margin-top: 50px;" method="post">
    <div class="form-group">
      <label for="email">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter Username" name="username" required>
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd" required>
    </div>
    
    <button type="submit" name="login" id="login" class="btn btn-primary" value="login">Submit</button>
  </form>
</div>

</body>
</html>
