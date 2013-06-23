$ ->
  the_merger = new TheMerger

  $('.insert_field').click ->
    the_merger.insert_field($(".mail_merge_body"), $("#field").val())
    false