# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# sPaginationType: "full_numbers"
jQuery ->
	$('#pats').dataTable
	  processing: true
	  serverSide: true
	  ajax: $('#pats').data('source')
	  "dom": '<"top"f>rt<"bottom"ip><"clear">'
	  # "dom": '<"top"f>rt<"bottom"ilp><"clear">'
	  # "dom": '<"top"i>rt<"bottom"flp><"clear">'
	  