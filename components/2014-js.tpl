<div class="spinner-wrapper"><div class="spinner"></div></div>

<script src="{{ javascripts_path }}/thismixtape.js"></script>

<script>{% unless editmode %}
    if($('#player').length) {
       $('#player a').attr('href', $('#player a').attr('href').replace(/<(?:.|\n)*?>/gm, ''));
    }{% endunless %}
    soundManager.url = '/files/';
    soundManager.useHTML5Audio = true;
</script>
{% unless editmode %}
<script>
$(document).keydown(function(event) {
    if(event.which == 32) {
        event.preventDefault();
        $('.sm2-360btn').trigger('click');
    }
});
{% unless site.root_item.current? %}
if($('.main-content').css('background-image') == 'url("http://thismixtape.com/photos/")') {
    $('.main-content').addClass('grainy');
}{% endunless %}
function fixMainContent() {
    $('.main-content').css('min-height', $(window).height()-2*35);
}
fixMainContent();
$(window).on('resize', fixMainContent);
if($('.main-content').outerHeight() < $('.subnav:visible').height()) {
  $('.main-content').height($('.subnav:visible').height()-2*35);
}
if(navigator.standalone) {$('body').addClass('standalone');}
</script>
{% endunless %}

{{site.analytics}}