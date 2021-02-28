class Cli
  LINK = "https://www.montanasnowbowl.com/report.php"

  def start
    create_report
    show_report
  end

  def create_report
    Scraper.scrape_page(LINK)
    Reports.create_from_scrape(Scraper.all)
  end

  def show_report
    report = Reports.all.first
    puts "#{report.date}".colorize(:red)
    puts "BASE: #{report.base}".colorize(:green)
    puts "TOP: #{report.top}".colorize(:green)
  end

  def exit
    puts "See ya!"
  end
end
