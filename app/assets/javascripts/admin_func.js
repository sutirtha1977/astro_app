//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function() {

    // //tool tips
    // $('.tooltips').tooltip();

    // //popovers
    // $('.popovers').popover();

    // //custom scrollbar
    // //for html
    // $("html").niceScroll({styler:"fb",cursorcolor:"#007AFF", cursorwidth: '6', cursorborderradius: '10px', background: '#F7F7F7', cursorborder: '', zindex: '1000'});
    // //for sidebar
    // $("#sidebar").niceScroll({styler:"fb",cursorcolor:"#007AFF", cursorwidth: '3', cursorborderradius: '10px', background: '#F7F7F7', cursorborder: ''});
    // // for scroll panel
    // $(".scroll-panel").niceScroll({styler:"fb",cursorcolor:"#007AFF", cursorwidth: '3', cursorborderradius: '10px', background: '#F7F7F7', cursorborder: ''});
    
    $(document).on('turbolinks:load', function() {
        //sidebar dropdown menu
        $('#sidebar .sub-menu > a').click(function () {
            var last = $('.sub-menu.open', $('#sidebar'));        
            $('.menu-arrow').removeClass('arrow_carrot-right');
            $('.sub', last).slideUp(200);
            var sub = $(this).next();
            if (sub.is(":visible")) {
                $('.menu-arrow').addClass('arrow_carrot-right');            
                sub.slideUp(200);
            } else {
                $('.menu-arrow').addClass('arrow_carrot-down');            
                sub.slideDown(200);
            }
            var o = ($(this).offset());
            diff = 200 - o.top;
            if(diff>0)
                $("#sidebar").scrollTo("-="+Math.abs(diff),500);
            else
                $("#sidebar").scrollTo("+="+Math.abs(diff),500);
        });

        // sidebar menu toggle
        $(function() {
            function responsiveView() {
                var wSize = $(window).width();
                if (wSize <= 768) {
                    $('#container').addClass('sidebar-close');
                    $('#sidebar').hide();
                }

                if (wSize > 768) {
                    $('#container').removeClass('sidebar-close');
                    $('#sidebar').show();
                }
            }
            $(window).on('load', responsiveView);
            $(window).on('resize', responsiveView);
        });

        $('.toggle-nav').click(function () {
            if ($('#sidebar > ul').is(":visible") === true) {
                $('#main-content').css({
                    'margin-left': '0px'
                });
                $('#sidebar').css({
                    'margin-left': '-180px'
                });
                $('#sidebar > ul').hide();
                $("#container").addClass("sidebar-closed");
            } else {
                $('#main-content').css({
                    'margin-left': '180px'
                });
                $('#sidebar > ul').show();
                $('#sidebar').css({
                    'margin-left': '0'
                });
                $("#container").removeClass("sidebar-closed");
            }
        });

        //make menus drop automatically
        $('ul.top-menu li.dropdown').hover(function() {
            $('.dropdown-menu', this).fadeIn();
        }, function() {
            $('.dropdown-menu', this).fadeOut('fast');
        });//hover

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
        //dataTables-listing responsive
        $('#dataTables-listing').DataTable({
            responsive: true,
            "columns": [
                null,
                null,
                null,
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

});


