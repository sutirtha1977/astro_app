$(function() {
    $(document).ready(function() {
        $('#dataTables-product').DataTable({
			responsive: true,
			"columns": [
				null,
				null,
				null,
				{ "orderable": false },
				{ "orderable": false }
			]
        });
    });
});
