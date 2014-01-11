# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

  $('#rating .box').click (e) ->

    $('#rating .box').each (i,e) ->
      $(e).removeClass('selected')

    $(this).addClass('selected')

    switch $(this).attr 'id'
      when 'bad'
        $('#real_rating').val '-1'
      when 'avg'
        $('#real_rating').val '0'
      when 'good'
        $('#real_rating').val '1'

    e.preventDefault()


  $('#anonbtn').click ->
    $('#response_name').val ''
    $('#response_email'). val ''

    if $(this).hasClass('pure-button-active')
      $(this).removeClass('pure-button-active')
      $('.details').slideDown()
      $('#response_anon').val('0')
    else
      $(this).addClass('pure-button-active')
      $('.details').slideUp()
      $('#response_anon').val('1')

  switch $('#real_rating').val()
    when '-1'
      $('#bad').trigger('click')
    when '0'
      $('#avg').trigger('click')
    when '1'
      $('#good').trigger('click')

  if $('#response_anon').val() == '1'
    $('#anonbtn').addClass('pure-button-active')
    $('.details').hide()

$(document).ready(ready)
$(document).on('page:load', ready)