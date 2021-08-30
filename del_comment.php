<?php

$id = $_GET['id'];

$db = new mysqli('127.0.0.1','root','philips','contact_form');

$sql = "delete from contact where ID='$id'";

$re = $db->query($sql);

header("location:read_comment.php");

?>