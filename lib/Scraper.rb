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

    doc.css("#row_").each do |game|
      game_hash = {}

      game_hash[:name] = game.css(".collection_objectname a").text
      game_hash[:rank] = game.css("td.collection_rank a").attr("name").text

      @@games_array << game_hash

      binding.pry

    end
  end



end
