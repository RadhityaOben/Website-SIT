<?php

function connect()
{
	// Connect to Database
	$connect = mysqli_connect('localhost', 'root', '', 'sit');
	return $connect;
}

function query($sql)
{
	// Give Query
	$connect = connect();
	$result = mysqli_query($connect, $sql) or die(mysqli_error($connect));

	// Prepare All Data
	$rows = [];
	while ($row = mysqli_fetch_assoc($result)) {
		$rows[] = $row;
	}
	return $rows;
}


function searchLastItemId()
{
	$justId = query("SELECT i.id_item FROM item i ORDER BY i.id_item ASC");
	$idTemp = NULL;
	$lastId = NULL;
	foreach ($justId as $j) {
		$id = mb_substr($j['id_item'], -3);
		if ($idTemp == NULL) {
			$idTemp = $id;
		} else if (($id - $idTemp) == 1) {
			$idTemp = $id;
		} else {
			return $lastId;
		}

		$lastId = $idTemp;
	}
	return $lastId;
}

function addNewItemId()
{
	$lastId = searchLastItemId();
	$lastId++;
	if (strlen($lastId) == 1) $lastId = "ITM00" . $lastId;
	else if (strlen($lastId) == 2) $lastId = "ITM0" . $lastId;
	else if (strlen($lastId) == 3) $lastId = "ITM" . $lastId;
	else return "
	<script>
	alert('Banyak item sudah mencapai batas!');
	</script>
	";
	return $lastId;
}

function searchLastCategoryId()
{
	$justId = query("SELECT c.id_cat FROM category c ORDER BY c.id_cat ASC");
	$idTemp = NULL;
	$lastId = NULL;
	foreach ($justId as $j) {
		$id = mb_substr($j['id_cat'], -3);
		if ($idTemp == NULL) {
			$idTemp = $id;
		} else if (($id - $idTemp) == 1) {
			$idTemp = $id;
		} else {
			return $lastId;
		}

		$lastId = $idTemp;
	}
	return $lastId;
}

function addNewCategoryId()
{
	$lastId = searchLastCategoryId();
	$lastId++;
	if (strlen($lastId) == 1) $lastId = "CAT00" . $lastId;
	else if (strlen($lastId) == 2) $lastId = "CAT0" . $lastId;
	else if (strlen($lastId) == 3) $lastId = "CAT" . $lastId;
	else return "
	<script>
	alert('Banyak kategori sudah mencapai batas!');
	</script>
	";
	return $lastId;
}

function addCategory($data)
{
	$connect = connect();

	$id = htmlspecialchars($data['id-cat']);
	$name = htmlspecialchars($data['cat-name']);
	$parent = htmlspecialchars($data['parent-id']);

	if ($_FILES['item-photo']['error'] === 4) {
		$photo = "nophoto.png";
	} else {
		$photo = uploadPhoto("category");
	}

	$query = "INSERT INTO category VALUES ('$id', '$name', '$photo', '$parent')";

	mysqli_query($connect, $query);

	return mysqli_affected_rows($connect);
}

function editCategory($data)
{
	$connect = connect();

	$id = htmlspecialchars($data['id-cat']);
	$name = htmlspecialchars($data['cat-name']);
	$parent = htmlspecialchars($data['parent-id']);
	$oldPhoto = query("SELECT c.cat_img FROM category c WHERE c.id_cat = '$id'")[0]['cat_img'];
	if ($_FILES['item-photo']['error'] === 4) {
		$photo = $oldPhoto;
	} else {
		if ($oldPhoto != "nophoto.png") unlink("../assets/img/category/" . $oldPhoto);
		$photo = uploadPhoto("category");
	}

	$query = "UPDATE category SET cat_img = '$photo', cat_name = '$name', parent_id = '$parent' WHERE id_cat = '$id'";

	mysqli_query($connect, $query) or die(mysqli_error($connect));

	return mysqli_affected_rows($connect);
}

function deleteCategory($data)
{
	$connect = connect();

	$id = htmlspecialchars($data['id']);

	$query = "DELETE FROM item WHERE id_cat = '$id'";
	mysqli_query($connect, $query) or die(mysqli_error($connect));

	$query = "DELETE FROM category WHERE id_cat = '$id'";
	mysqli_query($connect, $query) or die(mysqli_error($connect));

	return mysqli_affected_rows($connect);
}

function addItems($data)
{
	$connect = connect();

	$id = htmlspecialchars($data['id-item']);
	$desc = htmlspecialchars($data['item-desc']);
	$merk = htmlspecialchars(($data['item-merk'] == "") ? "-" : $data['item-merk']);
	$type = htmlspecialchars(($data['item-type'] == "") ? "-" : $data['item-type']);
	$size = htmlspecialchars(($data['item-size'] == "") ? "-" : $data['item-size']);
	$thickness = htmlspecialchars(($data['item-thickness'] == "") ? "-" : $data['item-thickness']);
	$material = htmlspecialchars(($data['item-material'] == "") ? "-" : $data['item-material']);
	$usage = htmlspecialchars(($data['item-usage'] == "") ? "-" : $data['item-usage']);
	$catalogue = htmlspecialchars(($data['item-catalogue'] == "") ? "#" : $data['item-catalogue']);
	$category = htmlspecialchars($data['category']);

	if ($_FILES['item-photo']['error'] === 4) {
		$photo = "nophoto.png";
	} else {
		$photo = uploadPhoto("item");
	}

	$query = "INSERT INTO item VALUES ('$id', '$desc', '$merk', '$type', '$size', '$thickness', '$material', '$usage', '$catalogue', '$photo', '$category')";

	mysqli_query($connect, $query);

	return mysqli_affected_rows($connect);
}

function editItems($data)
{
	$connect = connect();

	$id = htmlspecialchars($data['id-item']);
	$desc = htmlspecialchars($data['item-desc']);
	$merk = htmlspecialchars(($data['item-merk'] == "") ? "-" : $data['item-merk']);
	$type = htmlspecialchars(($data['item-type'] == "") ? "-" : $data['item-type']);
	$size = htmlspecialchars(($data['item-size'] == "") ? "-" : $data['item-size']);
	$thickness = htmlspecialchars(($data['item-thickness'] == "") ? "-" : $data['item-thickness']);
	$material = htmlspecialchars(($data['item-material'] == "") ? "-" : $data['item-material']);
	$usage = htmlspecialchars(($data['item-usage'] == "") ? "-" : $data['item-usage']);
	$catalogue = htmlspecialchars(($data['item-catalogue'] == "") ? "#" : $data['item-catalogue']);
	$category = htmlspecialchars($data['category']);

	$oldPhoto = query("SELECT i.item_img FROM item i WHERE i.id_item = '$id'")[0]['item_img'];
	if ($_FILES['item-photo']['error'] === 4) {
		$photo = $oldPhoto;
	} else {
		if ($oldPhoto != "nophoto.png") unlink("assets/img/items/" . $oldPhoto);
		$photo = uploadPhoto("item");
	}

	$query = "UPDATE item SET item_desc = '$desc', item_brand = '$merk', item_type = '$type', item_spec1 = '$size', item_spec2 = '$thickness', item_spec3 = '$material', item_spec4 = '$usage', catalogue = '$catalogue', item_img = '$photo', id_cat = '$category' WHERE id_item = '$id'";

	mysqli_query($connect, $query);

	return mysqli_affected_rows($connect);
}

function deleteItems($data)
{
	$connect = connect();

	$id = htmlspecialchars($data['id']);

	$query = "DELETE FROM item WHERE id_item = '$id'";

	mysqli_query($connect, $query) or die(mysqli_error($connect));

	return mysqli_affected_rows($connect);
}

function uploadPhoto($what = "")
{
	$fileName = $_FILES['item-photo']['name'];
	$fileSize = $_FILES['item-photo']['size'];
	$error = $_FILES['item-photo']['error'];
	$tmpName = $_FILES['item-photo']['tmp_name'];

	// Check if the uploaded file is an image
	$validExtension = ['jpg', 'jpeg', 'png'];
	$extension = explode('.', $fileName);
	$extension = strtolower(end($extension));
	if (!in_array($extension, $validExtension)) {
		echo "
			<script>
				alert('File yang diupload bukan gambar!');
				document.location.href = 'admin?allProduct';
			</script>
		";
		return false;
	}

	// Check if the uploaded file is not too big
	if ($fileSize > 2000000) {
		echo "
			<script>
				alert('Ukuran gambar terlalu besar! Max 2MB');
				document.location.href = 'admin?allProduct';
			</script>
		";
		return false;
	}

	// Generate new file name
	if ($what == "category") $newFileName = "CAT-" . uniqid();
	else if ($what == "item") $newFileName = "ITM-" . uniqid();
	else $newFileName = "IMG-" . uniqid();
	$newFileName .= '.';
	$newFileName .= $extension;

	// Upload the file
	if ($what == "category") move_uploaded_file($tmpName, '../assets/img/category/' . $newFileName);
	else if ($what == "item") move_uploaded_file($tmpName, '../assets/img/items/' . $newFileName);
	else move_uploaded_file($tmpName, '../assets/img/' . $newFileName);

	return $newFileName;
}

function checkCategory()
{
	$category = query("SELECT c.id_cat, c.cat_name, c.parent_id FROM category c ORDER BY c.cat_name ASC");
	$parent = [];
	foreach ($category as $c) {
		if ($c['parent_id'] == $c['id_cat']) {
			$parent[] =  $c;
			$child = query("SELECT c.id_cat, CONCAT('- ', c.cat_name) AS cat_name, c.parent_id FROM category c WHERE c.parent_id = '" . $c['id_cat'] . "' AND c.id_cat != '" . $c['id_cat'] . "' ORDER BY c.cat_name ASC");
			foreach ($child as $ch) {
				$parent[] = $ch;
				$subChild = query("SELECT c.id_cat, CONCAT('-- ', c.cat_name) AS cat_name, c.parent_id FROM category c WHERE c.parent_id = '" . $ch['id_cat'] . "' AND c.id_cat != '" . $ch['id_cat'] . "' ORDER BY c.cat_name ASC");
				foreach ($subChild as $sch) {
					$parent[] = $sch;
					$subSubChild = query("SELECT c.id_cat, CONCAT('--- ', c.cat_name) AS cat_name, c.parent_id FROM category c WHERE c.parent_id = '" . $sch['id_cat'] . "' AND c.id_cat != '" . $sch['id_cat'] . "' ORDER BY c.cat_name ASC");
					foreach ($subSubChild as $ssch) {
						$parent[] = $ssch;
					}
				}
			}
		}
	}
	return $parent;
}

function parentName($i)
{
	$reff = $i;
	$done = false;
	$parent = query("SELECT c.id_cat, c.cat_name, c.parent_id FROM category c WHERE c.id_cat = '$reff'")[0];
	$string = $parent['cat_name'];
	while ($done == false) {
		if ($parent['parent_id'] == $parent['id_cat']) {
			$done = true;
		} else {
			$reff = $parent['parent_id'];
			$parent = query("SELECT c.* FROM category c WHERE c.id_cat = '$reff'")[0];
			$string = $parent['cat_name'] . " > " . $string;
		}
	}
	return $string;
}

function parentNameLink($i)
{
	$reff = $i;
	$done = false;
	$parent = query("SELECT c.id_cat, c.cat_name, c.parent_id FROM category c WHERE c.id_cat = '$reff'")[0];
	$string = "<div class='col d-flex align-items-center'>></div>";
	$string .=  "<div class='col'><button class='btn btn-link link-primary link-underline link-underline-opacity-0 text-nowrap' disabled>" . $parent['cat_name'] . "</button></div>";
	$output = $string;
	while ($done == false) {
		if ($parent['parent_id'] == $parent['id_cat']) {
			$done = true;
		} else {
			$reff = $parent['parent_id'];
			$parent = query("SELECT c.id_cat, c.cat_name, c.parent_id FROM category c WHERE c.id_cat = '$reff'")[0];

			$string = "<div class='col d-flex align-items-center'>></div>";
			$string .= "<div class='col'><form method='GET'>";
			$string .= "<input type='text' name='parentId' value='" . $parent['id_cat'] . "' hidden>";
			$string .=  "<button type='submit' name='backParent' class='btn btn-link link-dark link-underline link-underline-opacity-0 link-underline-opacity-75-hover text-nowrap'>" . $parent['cat_name'] . "</button>";
			$string .= "</form></div>";

			$output = $string . $output;
		}
	}
	$string = "<div class='row border rounded-1'>";
	$string .= "<div class='col'><button class='btn btn-link link-dark link-underline link-underline-opacity-0 link-underline-opacity-75-hover'><a href='admin' class='link-dark link-underline link-underline-opacity-0 link-underline-opacity-75-hover'>Back</a></button></div>";
	$output = $string . $output;
	$output .= "</div>";
	return $output;
}

function unsetIdSession()
{
	if (isset($_SESSION['detail-page'])) {
		unset($_SESSION['id-cat']);
		unset($_SESSION['id-item']);
		unset($_SESSION['detail-page']);
		unset($_SESSION['detail-cond']);
	}
}
