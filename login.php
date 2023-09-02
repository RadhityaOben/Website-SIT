<?php
session_start();
include "db/function.php";

unsetIdSession();

if (isset($_SESSION['login']) === true) {
	header("Location: ./");
	exit;
}

if (isset($_POST['loginButton'])) {
	$username = $_POST['username'];
	$password = $_POST['password'];

	$result = query("SELECT u.* FROM user u WHERE u.username = '$username' AND u.password = sha1('$password')");
	if (count($result) === 1) {
		$_SESSION['login'] = true;
		$_SESSION['permission'] = $result[0]['permission'];
		header("Location: ./");
		exit;
	} else {
		$error = true;
	}
}

?>
<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login - PT. Samudera Insan Teknik</title>
	<link rel="icon" href="assets/icon/favicon.ico" type="image/x-icon">

	<link rel="stylesheet" href="assets/css/styles.css">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<body>

	<div class="position-absolute top-50 start-50 translate-middle">
		<div class="card" style="width: 25rem;">
			<div class="card-header">
				Login
			</div>
			<div class="card-body">
				<form method="POST">
					<div class="mb-3">
						<label for="inputUsername" class="form-label">Username</label>
						<input type="text" class="form-control" id="inputUsername" name="username">
					</div>
					<div class="mb-3">
						<label for="inputPassword" class="form-label">Password</label>
						<input type="password" class="form-control" id="inputPassword" name="password">
					</div>
					<?php if (isset($error)) { ?>
						<div class="form-text text-danger">User tidak ditemukan</div>
					<?php } ?>
					<div class="mb3 text-end">
						<button type="submit" class="btn btn-primary" name="loginButton">Masuk</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>

</html>