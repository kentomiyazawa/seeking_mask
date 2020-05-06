$(function(){

  $('.droppdown').hover(
    function(){
    $('.droppdown__li').slideDown();
  },function(){
    $('.droppdown__li').slideUp();
  })

  $('.faq__list__item').click(function(){
    var $answer = $(this).find('.faq__list__item__answer')
    if ($answer.hasClass('open')){
      $answer.removeClass('open');
      $answer.slideUp();
    } else {
      $answer.addClass('open');
      $answer.slideDown();
    }
  });
});