<?php
include "../db/function.php";

if (isset($_GET["deleteItems"])) {
	if (deleteItems($_GET) > 0) {
		echo "
			<script>
				alert('Produk berhasil dihapus!');
				document.location.href = 'admin?allProduct';
			</script>
		";
	} else {
		echo "
			<script>
				alert('Produk gagal dihapus!');
				document.location.href = 'admin?allProduct';
			</script>
		";
	}
} else if (isset($_GET["deleteCategory"])) {
	if (deleteCategory($_GET) > 0) {
		echo "
			<script>
				alert('Kategori berhasil dihapus!');
				document.location.href = 'admin';
			</script>
		";
	} else {
		echo "
			<script>
				alert('Kategori gagal dihapus!');
				document.location.href = 'admin';
			</script>
		";
	}
}
