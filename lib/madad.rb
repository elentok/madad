require 'nokogiri'
require 'open-uri'

class Madad
  def self.latest_value
    url = 'http://www.cbs.gov.il/reader/pirsum_madad/indices_eng.xml'
    doc = Nokogiri::XML(open(url))
    doc.css('date:first code:first index:first').first.text.strip.to_f
  end
end 
