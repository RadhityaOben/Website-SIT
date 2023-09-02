<?php
include "../db/function.php";

if (isset($_POST["editItems"])) {
	if (editItems($_POST) > 0) {
		echo "
			<script>
				alert('Produk berhasil diubah!');
				document.location.href = 'admin?allProduct';
			</script>
		";
	} else {
		echo "
			<script>
				alert('Produk gagal diubah!');
				document.location.href = 'admin?allProduct';
			</script>
		";
	}
} else if (isset($_POST["editCategory"])) {
	if (editCategory($_POST) > 0) {
		echo "
			<script>
				alert('Kategori berhasil diubah!');
				document.location.href = 'admin';
			</script>
		";
	} else {
		echo "
			<script>
				alert('Kategori gagal diubah!');
				document.location.href = 'admin';
			</script>
		";
	}
}
