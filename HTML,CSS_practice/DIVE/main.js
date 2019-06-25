$(function() {
  $('#accordion p').hide();
  $('#accordion h1').click(function(){
    $(this).next('p').slideToggle()
  })
});

$(function() {
     $('#accordion dd').hide();
    $('#accordion dt').click(function(e){
        $(this).next('dd').slideToggle()
    })
  $('.tab li').click(function() {
    $('.tab li').removeClass('select');
　　 $(this).addClass('select');
　  $('.top_content li').addClass('hide');
    const index = $('.tab li').index($(this))
    $('.top_content li').eq(index).removeClass('hide');
  });
});