# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# sPaginationType: "full_numbers"
#jQuery ->
  #$('#pats').dataTable 

$(document).ready ->
  $('#pats').dataTable()

  $('#pats tbody').on 'click', 'tr', ->
    name = $('td', this).eq(0).text()
    alert(name)



   	 

 



    



	  