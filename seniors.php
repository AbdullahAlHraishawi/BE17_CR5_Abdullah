<?php

require_once './config.php';
session_start();

$user_id = $_SESSION['user_id'];

if (!isset($user_id)) {
    header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Best Pets</title>

    <!-- Font-Awesome-Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Style-Link -->
    <link rel="stylesheet" href="./style/style.css">
</head>
<body>

    <?php require_once './header.php'; ?>

    <section class="show-animals">
        <div class="box-container">
            <?php
            $select_seniors = mysqli_query($connect, "SELECT * FROM `animals` WHERE age > 8") or die('Query failed');
            if (mysqli_num_rows($select_seniors) > 0) {
                while ($fetch_seniors = mysqli_fetch_assoc($select_seniors)) {
            ?>
                    <div class="box">
                        <img src="uploaded_img/<?php echo $fetch_seniors['image'] ?>" alt="">
                        <div class="data">Name: <span><?php echo $fetch_seniors['name'] ?></span></div>
                        <div class="data">Age: <span><?php echo $fetch_seniors['age'] ?></span></div>
                        <div class="data">Gender: <span><?php echo $fetch_seniors['gender'] ?></span></div>
                        <div class="data">Size: <span><?php echo $fetch_seniors['size'] ?></span></div>
                        <div class="data">Breed: <span><?php echo $fetch_seniors['breed'] ?></span></div>
                        <div class="data">Vaccinated: <span><?php echo $fetch_seniors['vaccine'] ?></span></div>
                        <div class="data">Address: <span><?php echo $fetch_seniors['address'] ?></span></div>
                        <div class="data">Description: <span><?php echo $fetch_seniors['description'] ?></span></div>
                    </div>
            <?php
                }
            } else {
                echo '<p class="empty">No senior Animals!</p>';
            }
            ?>
        </div>
    </section>

    <?php require_once './footer.php'; ?>

    <!-- ------- JS Link ------- -->
    <script src="./scripts/script.js"></script>
</body>
</html>