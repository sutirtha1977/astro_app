$(function() {
    $(document).ready(function() {
        $('#dataTables-adminuser').DataTable({
			responsive: true,
			"columns": [
				null,
				null,
				null,
				{ "orderable": false }
			]
        });
    });
});