<?php
require_once './config.php';

if (isset($_POST['submit'])) {
    $name = mysqli_real_escape_string($connect, $_POST['name']);
    $email = mysqli_real_escape_string($connect, $_POST['email']);
    $password = mysqli_real_escape_string($connect, md5($_POST['password']));
    $cpassword = mysqli_real_escape_string($connect, md5($_POST['cpassword']));
    $user_type = $_POST['user_type'];
    $select_users = mysqli_query($connect, "SELECT * FROM `users` WHERE email = '$email' AND password = '$password'") or die('Selection failed');

    if (mysqli_num_rows($select_users) > 0) {
        $message[] = 'User already exists!';
    } else {
        if ($password != $cpassword) {
            $message[] = 'The Password does not match.';
        } else {
            mysqli_query($connect, "INSERT INTO `users` (name, email, password, user_type) VALUES ('$name', '$email', '$cpassword', '$user_type')") or die('Query faild!');
            $message[] = 'Registered successfully!';
            // header('location:login.php');
        }
    }
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <!-- Font-Awesome-Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Style-Link -->
    <link rel="stylesheet" href="./style/style.css">
</head>

<body>
    <?php
        if (isset($message)) {
            foreach ($message as $message) {
                echo '
                <div class="message">
                    <span>' .$message.'</span>
                    <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
                </div>
                ';
            }
        }
    ?>
    <div class="form-container">
        <form action="" method="POST">
            <h3>Register Now!</h3>
            <input type="text" name="name" placeholder="Enter your Name..." required class="box">
            <input type="email" name="email" placeholder="Enter your E-Mail..." required class="box">
            <input type="password" name="password" placeholder="Enter your Password..." required class="box">
            <input type="password" name="cpassword" placeholder="Confirm your Password..." required class="box">
            <select name="user_type" class="box">
                <option value="user">User</option>
                <option value="admin">Admin</option>
            </select>
            <input type="submit" name="submit" value="Register Now!" class="btn">
            <p>Already have an Account ? <a href="login.php">Login Now!</a></p>
        </form>
    </div>
</body>

</html>