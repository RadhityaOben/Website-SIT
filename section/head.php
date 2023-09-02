<?php
if (isset($_POST['detail'])) {
	if (isset($items[0]['cat_name']) != NULL) $name = $items[0]['cat_name'] . " - ";
	else $name = "";
} else if (isset($_POST['detailAll'])) {
	$name = $items[0]['cat_name'] . " " . $items[0]['item_brand'] . " - ";
} else {
	$name = "";
}
?>
<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?= $name; ?>PT. Samudera Insan Teknik</title>
	<link rel="icon" href="assets/icon/favicon.ico" type="image/x-icon">

	<link rel="stylesheet" href="assets/css/styles.css">
	<link rel="stylesheet" href="assets/css/custom-styles.css">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link href="DataTables/datatables.min.css" rel="stylesheet">

</head>