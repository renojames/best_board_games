require "./lib/best_board_games"
require "./lib/Game"
require "pry"
require 'nokogiri'
require 'open-uri'

class BestBoardGames::Scraper

  @@games_array = []

  def self.scrape

    doc = Nokogiri::HTML(open("https://boardgamegeek.com/browse/boardgame"))

    # doc.css("results_objectname1 a").text => "Gloomhaven"
    # doc.css("#row_") => Grabs each game row
    # doc.css("#row_ .collection_objectname a") => Grabs all game titles

    binding.pry

  end



end
