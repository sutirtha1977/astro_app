//Loads the correct sidebar on window load,
//collapses the sidebar on window resize.
// Sets the min-height of #page-wrapper to window size
$(function() {  

    var topoffset = 52; 

    $(document).on('turbolinks:load', function() {
        //make menus drop automatically
        $('ul.nav li.dropdown').hover(function() {
            $('.dropdown-menu', this).fadeIn();
        }, function() {
            $('.dropdown-menu', this).fadeOut('fast');
        });//hover

        //tool tip
        $('[data-toggle="tooltip"]').tooltip();

        //fullheight START
        //window height
        var wheight = $(window).height(); //get height of the window

        $('.fullheight').css('height', wheight);

        $(window).resize(function() {
            var wheight = $(window).height(); //get height of the window
            $('.fullheight').css('height', wheight);
        }) //on resize
        //fullheight END

      //highlight navigation
      $(window).scroll(function() {
        var windowpos = $(window).scrollTop() + topoffset;
        $('nav li').removeClass('active');

        if (windowpos > $('#intro').offset().top) {
          $('nav li').removeClass('active');
          $('a[href$="/"]').parent().addClass('active');
        } //windowpos

        if (windowpos > $('#about').offset().top) {
          $('nav li').removeClass('active');
          $('a[href$="#about"]').parent().addClass('active');
        } //windowpos

        if (windowpos > $('#service').offset().top) {
          $('nav li').removeClass('active');
          $('a[href$="#service"]').parent().addClass('active');
        } //windowpos

        if (windowpos > $('#product').offset().top) {
          $('nav li').removeClass('active');
          $('a[href$="#product"]').parent().addClass('active');
        } //windowpos

        if (windowpos > $('#team').offset().top) {
          $('nav li').removeClass('active');
          $('a[href$="#team"]').parent().addClass('active');
        } //windowpos

      }); //window scroll

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


