<?php

require_once "init.php";

$fcmToken= $_POST["fcm_token"];

$sql="INSERT INTO `fcm_info` (`id`, `fcm_token`) VALUES (NULL, '".$fcmToken."')";

mysqli_query($conn,$sql);
mysqli_close($conn);

?>