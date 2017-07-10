# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#passport-form input[type=submit]').click (e) ->
    e.preventDefault()
    form = $('#passport-form')
    url = form.prop 'action'
    $.ajax
      url: url
      method: 'POST'
      data: form.serialize()
      success: (data) ->
        $('.result').html data.html
