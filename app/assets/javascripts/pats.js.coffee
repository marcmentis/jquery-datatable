# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# sPaginationType: "full_numbers"
#jQuery ->
  #$('#pats').dataTable 

# $(document).ready ->
# $(document).on "page:change", ->
$(document).on "ready page:change", ->
# CALLED FUNCTIONS
  clear = ->
  	$('#pat_firstname').val('');
  	$('#pat_lastname').val('');
  	$('#pat_number').val('');

# VARIABLES

# STYLING
  $('[name="commit"]').addClass('button tiny radius');	
  $('#pats').dataTable()

# BUTTONS
  $('#bNewPat').click ->
    clear()
    $('#new_pat').show()

  $('#bEdit').click ->
  	alert 'in edit button'

  # Submit button on _pat form
  $('#new_pat').on('ajax:beforeSend', (e, data, status, xhr) ->
      #alert "before send"
   ).on('ajax:success', (e, data, status, xhr) ->
      alert "after success"
      $('#new_pat').hide();
      clear()
   ).bind "ajax:error", (e, error, status, xhr) ->
      alert "Error in bNewPat"

# TABLES
  # Get row data from Table on click
  # $('#pats tbody')
  # 	.on 'click', 'tr', ->
  #     name = $('td', this).eq(0).text()
  #     alert(name)
  #   .on 'mouseover'

 # RUN
  clear();
  $('#new_pat').hide()    



   	 

 



    



	  