<?php

$db = new mysqli('127.0.0.1','root','philips','contact_form');

$name = $_POST['name'];
$email = $_POST['email'];
$comment = $_POST['comment'];

$sql = "insert into contact values('','".$name."','".$email."','".$comment."')";
$res = $db->query($sql);

	if($res){ ?>
		<script type="text/javascript">
			alert("Comment sent.\n Thanks");
			window.location='index.html';
		</script>
	<?php
	}

?>