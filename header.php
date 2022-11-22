<?php

if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>

<header class="header">
    <div class="header-1">
        <div class="flex">
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
            <p id="greeting">Welcome <span><?php echo $_SESSION['user_email']; ?></span></p>
            <p>New ? <a href="login.php">Login</a> | <a href="register.php">Register</a></p>
        </div>
    </div>
    <div class="header-2">
        <div class="flex">
            <a href="index.php" class="logo">Petlly.</a>
            <nav class="navbar">
                <a href="index.php">Home</a>
                <a href="about.php">About</a>
                <a href="contact.php">Contact</a>
                <a href="seniors.php">Seniors</a>
            </nav>
            <div class="icons">
                <div id="menu-btn" class="fas fa-bars"></div>
                <div id="user-btn" class="fas fa-user"></div>
                <?php
                    $select_adopted_number = mysqli_query ($connect, "SELECT * FROM `adopted` WHERE user_id = '$user_id'") or die ('Query failed');
                    $adopted_rows_number = mysqli_num_rows($select_adopted_number);
                ?>
                <a href="adoption.php"><img id="dogIcon" src="https://img.icons8.com/pastel-glyph/64/null/dog-jump--v2.png"/><span>(<?php echo $adopted_rows_number ?>)</span></a>
            </div>
            <div class="user-box">
                <p>Username: <span><?php echo $_SESSION['user_name']; ?></span></p>
                <p>E-Mail: <span><?php echo $_SESSION['user_email']; ?></span></p>
                <a href="logout.php" class="delete-btn">Logout</a>
            </div>
        </div>
    </div>
</header>