require 'pry'
require 'open-uri'

class Scraper

  @@all = []

  def self.scrape_page(link)
    report = Nokogiri::HTML(open(link))
    date = report.css("tr")[1].children.children[4].text
    base = report.css("tr")[3].children[5].text.split("\n        ").last.to_i
    top = report.css("tr")[4].children[5].text.split("\n        ").last.to_i

    @@all << {date: date, top: top, base: base}

  end

  def self.all
    @@all
  end
end
