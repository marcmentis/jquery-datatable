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

$(document).ready ->
  $('#pats').dataTable
    processing: true
    serverSide: true
    ajax: $('#pats').data('source')
    "dom": '<"top"f>rt<"bottom"ip><"clear">'
    # "columnDefs": [
    # 	"targets": [0];
    # 	"visible": false
    # ]


  $('#pats tbody').on 'click', 'tr', ->
    name = $('td', this).eq(0).text()
    alert(name)

	   

	  