require 'nokogiri'

class Project < ActiveRecord::Base
	include Bootsy::Container

	def parse_into_carousel(gallery)
		html = Nokogiri::HTML.fragment(gallery)
		items = html.css('img, iframe')

		html.search("img, iframe").remove

		captions = html.inner_html.gsub("<br><br>", "<br>").split("|")

		carousel_id = self.name.delete(' ').downcase + "-" + self.id.to_s + "-carousel"

		carousel = Nokogiri::HTML.fragment(
		"<div id=\"#{carousel_id}\" class=\"carousel slide\" data-ride=\"carousel\" data-interval=\"false\">
		  <ol class=\"carousel-indicators\">
		  </ol>
		  <div class=\"carousel-inner\">
		  </div>
		  <a class=\"left carousel-control\" href=\"##{carousel_id}\" data-slide=\"prev\">
		    <span class=\"glyphicon glyphicon-chevron-left\"></span>
		    <span class=\"sr-only\">Previous</span>
		  </a>
		  <a class=\"right carousel-control\" href=\"##{carousel_id}\" data-slide=\"next\">
		    <span class=\"glyphicon glyphicon-chevron-right\"></span>
		    <span class=\"sr-only\">Next</span>
		  </a>
		</div>")

		items.each_with_index  do |item, index|
			indicator = Nokogiri::HTML.fragment("<li data-target=\"##{carousel_id}\" data-slide-to=\"#{index}\"></li>")#.css("body")
			element = Nokogiri::HTML.fragment(
				"<div class=\"item\">
					#{item}
					<div class=\"carousel-caption\">
						#{captions[index]}
					</div>
				</div>")

			carousel.css(".carousel-indicators")[0].add_child(indicator)
			carousel.css(".carousel-inner")[0].add_child(element)
		end

		first_indicator =  carousel.css(".carousel-indicators")[0].first_element_child
		first_element = carousel.css(".carousel-inner")[0].first_element_child

		first_indicator['class'] ||= ""
		first_indicator['class'] = first_indicator['class'] << " active"

		first_element['class'] ||= ""
		first_element['class'] = first_element['class'] << " active"


		return carousel.inner_html
	end
end
