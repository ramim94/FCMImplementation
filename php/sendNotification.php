<?php
require_once "init.php";
/*
$message= $_POST['message'];
$title= $_POST['title'];
*/
$message= "message this is";
$title= "title this is";

$pathToFCM= "https://fcm.googleapis.com/fcm/send";
$serverKey="AIzaSyCeYUIu-lupHpPYn8F8B7nzL89xwpO1jzQ";

$sql= "Select fcm_token from fcm_info";
$result= mysqli_query($conn,$sql);
$row= mysqli_fetch_assoc($result);
$key= $row['fcm_token'];
//echo $key;
$header=array(
	'Authorization:key='.$serverKey,
	'Content-Type:application/json'
);

$fields= array(
	'to'=>$key,
	'notification'=>array('title'=>$title,'body'=>$message)
);

$payload= json_encode($fields);

$ch = curl_init();

curl_setopt($ch,CURLOPT_URL,$pathToFCM);
curl_setopt($ch,CURLOPT_POST,true);
curl_setopt($ch,CURLOPT_HTTPHEADER,$header);
curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,false);
curl_setopt($ch,CURLOPT_IPRESOLVE,CURL_IPRESOLVE_V4);
curl_setopt($ch,CURLOPT_POSTFIELDS,$payload);

$result=curl_exec($ch);
var_dump($result);
curl_close($ch);
mysqli_close($conn);
?>