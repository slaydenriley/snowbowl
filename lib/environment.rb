require_relative "snowbowl/cli"
require_relative "snowbowl/scraper"
require_relative "snowbowl/reports"
require_relative "snowbowl/version"

require 'nokogiri'
require 'open-uri'
require 'pry'
require 'colorize'

module SnowReport
  class Error < StandardError; end
  # Your code goes here...
end
