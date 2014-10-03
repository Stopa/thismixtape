$('.main-content').click(function() {
    $(document.body).removeClass('menu-opened');
});
if($(document).width() <= 600) {
    $('.logo').click(function(event) {
        event.preventDefault();
        $(document.body).toggleClass('menu-opened');
    });
    $('.main-nav a').click(function(event) {
        event.preventDefault();
        $('.main-nav .active').removeClass('active');
        $(event.target).closest('li').addClass('active');
        $('.subnav.active').removeClass('active');
        $('.subnav').eq($('.main-nav li').index($('.main-nav li.active'))).addClass('active');
        $(event.target).closest('header').addClass('has-submenu');
    });

    if(navigator.standalone) {
        $('.wrapper').on('click', '.subnav a', function(event) {
            event.preventDefault();
            if(soundManager.soundIDs.length) {
                soundManager.sounds[soundManager.soundIDs[0]].destruct();
            }
            $('.spinner-wrapper').show();
            
            $('.wrapper').load($(this).attr('href')+' .wrapper > *', function() {
                $('.spinner-wrapper').hide();
                $(document.body).removeClass('menu-opened');
                threeSixtyPlayer.init();
                $('body').removeClass('frontpage');
                if($(event.target).attr('href').indexOf('b-sides') == -1) {
                    $('body').removeClass('bsides');
                } else {
                    $('body').addClass('bsides');
                }
            });
        });
    }
}