advise_url = "https://mysterious-refuge-39729.herokuapp.com/api/forecasts"

$("#main-header-1").click(function() {

	$.getJSON(advise_url, function(data) {
			set_content_in_divs(data['prophecies'])
	
	});		
});

function set_content_in_divs(paragraphs) {
  $.each(paragraphs, function(i, d) {
    p = $("#p-" + i)
    p.html("<p>" + d + "</p>")
  })
}

