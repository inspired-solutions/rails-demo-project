# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



$(document).ready ->
  $('.dogs').on "change", ->
    $(".image-box-cover").show()
    $.ajax({
      type: "POST",
      url: "/show_photo",
      data: {
        breed: $(".dogs option:selected").val()
      },
      success: (data) ->
        $("img").attr("src", data.pic_url)
        $("h3").html(data.name)
        $(".image-box-cover").hide()
        return false
      error: (data) ->
        return false
    })





