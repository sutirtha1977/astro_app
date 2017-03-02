//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function() {



    //make menus drop automatically
    $('ul.nav li.dropdown').hover(function() {
        $('.dropdown-menu', this).fadeIn();
    }, function() {
        $('.dropdown-menu', this).fadeOut('fast');
    });//hover
    
    
    $(document).on('turbolinks:load', function() {
        //tool tip
        $('[data-toggle="tooltip"]').tooltip();

        //dataTables-product responsive
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
        //dataTables-adminuser responsive
        $('#dataTables-adminuser').DataTable({
            responsive: true,
            "columns": [
                null,
                null,
                null,
                { "orderable": false }
            ]
        });
        //dataTables-team responsive
        $('#dataTables-team').DataTable({
            responsive: true,
            "columns": [
                null,
                null,
                null,
                { "orderable": false }
            ]
        });
    });


    $(window).bind("load resize", function() {
        var topOffset = 50;
        var width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
        if (width < 768) {
            $('div.navbar-collapse').addClass('collapse');
            topOffset = 100; // 2-row-menu
        } else {
            $('div.navbar-collapse').removeClass('collapse');
        }

        var height = ((this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height) - 1;
        height = height - topOffset;
        if (height < 1) height = 1;
        if (height > topOffset) {
            $("#page-wrapper").css("min-height", (height) + "px");
        }
    });

    var url = window.location;
    // var element = $('ul.nav a').filter(function() {
    //     return this.href == url;
    // }).addClass('active').parent().parent().addClass('in').parent();
    var element = $('ul.nav a').filter(function() {
        return this.href == url;
    }).addClass('active').parent();

    while (true) {
        if (element.is('li')) {
            element = element.parent().addClass('in').parent();
        } else {
            break;
        }
    }


});


