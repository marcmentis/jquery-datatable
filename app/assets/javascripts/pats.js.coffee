# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#jQuery ->
# 	$('#pats').dataTable
# 	   processing: true
# 	   serverSide: true
# 	   ajax: $('#pats').data('source')
#      "dom": '<"top"f>rt<"bottom"ip><"clear">'

# sPaginationType: "full_numbers"

#$(document).ready ->
$(document).on 'ready page:change', ->
  #alert 'hello'
  $('#pats').dataTable
    processing: true
    serverSide: true
    ajax: $('#pats').data('source')
    "dom": '<"top"f>rt<"bottom"ip><"clear">'

  $('#pats tbody')
    .on 'click', 'tr', -> 
      alert 'before getting row'
      id = $('td', this).eq(3).text()
      alert(id)
      alert 'after getting row'
      # Try to access controller
      $.ajax "/pats/"+id+"/edit",
        type: "GET",      
        dataType: 'javascript'
        error: (jqXHR, testStatus, errorThrown) ->
          $('body').append "AJAX Error: #{textStatus}"
        success: (data, textStatus, jqXHR) ->
          $('body').append "Successful AJAX call: " #{data}
    .on 'mouseover', 'tr', ->
      $('td', this).addClass('server_hover')
    .on 'mouseleave', 'tr', ->
      $('td', this).removeClass('server_hover')    

	   

	  