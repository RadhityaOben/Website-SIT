<?php
include "../db/function.php";

if (isset($_POST["addItems"])) {
	if (addItems($_POST) > 0) {
		echo "
			<script>
				alert('Produk berhasil ditambahkan!');
				document.location.href = 'admin?allProduct';
			</script>
		";
	} else {
		echo "
			<script>
				alert('Produk gagal ditambahkan!');
				document.location.href = 'admin?allProduct';
			</script>
		";
	}
} else if (isset($_POST["addCategory"])) {
	if (addCategory($_POST) > 0) {
		echo "
			<script>
				alert('Kategori berhasil ditambahkan!');
				document.location.href = 'admin?';
			</script>
		";
	} else {
		echo "
			<script>
				alert('Kategori gagal ditambahkan!');
				document.location.href = 'admin?';
			</script>
		";
	}
}
