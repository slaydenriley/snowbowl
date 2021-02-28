class Reports
  attr_accessor :date, :top, :base

  @@all = []

  def initialize(date, top, base)
    @date = date
    @top = top
    @base = base
    @@all << self
  end

  def self.create_from_scrape(data)
    data.each do |hash|
      self.new(hash[:date], hash[:top], hash[:base])
    end
  end

  def self.all
    @@all
  end
end
