# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('.insert_field').click ->
    start=$(".mail_merge_body").caret().start;
    first_half=$(".mail_merge_body").val().slice(0, start);
    last_half=$(".mail_merge_body").val().slice(start, $(".mail_merge_body").len);
    text = first_half + "[" + $('#field').val() + "]" + last_half
    $('.mail_merge_body').val(text)
    false