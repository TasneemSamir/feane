
<?php
include("..\\connect.php");
session_start();

mysqli_select_db($connect,"restaurant");

$query="CREATE TABLE admins (
name varcahr(50),
 username varchar(50),
 password varchar(18),
 email varchar(50),
 photo varchar(100) )";

 //$result=mysqli_query($connect,$query);

 if(isset($_POST['submit'])){
	$name=$_POST['name'];
  $username=$_POST['username'];
  $password=$_POST['password'];
  $email=$_POST['email'];


	if(!empty($name)&&!empty($username)&&!empty($password)&&!empty($email)){
		$query="INSERT INTO `admins`(`name`,`username`,`password`,`email`)
		VALUES ('$name','$username','$password','$email')";

		$result=mysqli_query($connect,$query);
    

    $query="SELECT * FROM admins WHERE `username`='$name'&& `password`=$password ";
    $result=mysqli_query($connect,$query);
    
    $count=mysqli_num_rows($result);

    if($count==1){
      $_SESSION['name']=$name;
      $_SESSION['photo']="./images/user.png";
      header("Refresh:0;url=../index.php");
    }
	}

}

if(isset($_POST['login'])){
  $user=$_POST['user-name'];
  $password=$_POST['pass'];
  

  if(!empty($user)&&!empty($password)){

    $query="SELECT * FROM admins WHERE `username`='$user'&& `password`=$password ";
    $result=mysqli_query($connect,$query);

    foreach($result as $row){
      $name=$row['name'];
      $pic=$row['photo'];
    }
    $count=mysqli_num_rows($result);

    if($count==1){
      $_SESSION['name']=$name;
      $_SESSION['photo']=$pic;
      header("Refresh:0;url=../index.php");
    }
  }
}

?>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Images Admin | Login/Register</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method='POST' action="<?= $_SERVER['PHP_SELF'] ?>">
              <h1>Login Form</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" name=user-name />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" name=pass />
              </div>
              <div>
                <button class="btn btn-default submit" name=login>Log in</button>
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-file-image-o"></i></i> Images Admin</h1>
                  <p>©2016 All Rights Reserved. Images Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form method='POST' action="<?= $_SERVER['PHP_SELF'] ?>" >
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" placeholder="Fullname" required=""  name=name />
              </div>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" name=username />
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" name=email />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" required="" name=password />
              </div>
              <div>
                <button type="submit" class="btn btn-default submit" name=submit>Submit</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-file-image-o"></i></i> Images Admin</h1>
                  <p>©2016 All Rights Reserved. Images Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
