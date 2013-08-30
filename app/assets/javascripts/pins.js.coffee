# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(window).scroll ->
  url = $('.pagination .next_page a').attr('href')
  if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
  	$('.pagination').text("Agregando más recursos...")
  	$.getScript(url)
  $(window).scroll()

jQuery ->
	$('#pins').imageLoaded ->
		$('#pins').masonry itemSelector: ".box"
