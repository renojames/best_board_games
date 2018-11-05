require "./lib/best_board_games"
require "./lib/Game"
require "pry"
require 'nokogiri'
require 'open-uri'

class BestBoardGames::Scraper

  @@games_array = []

  def self.scrape

    doc = Nokogiri::HTML(open("https://boardgamegeek.com/browse/boardgame"))

    results_objectname_count = 1

    doc.css("#row_").each do |game|

      game_hash = {}

      game_hash[:name] = game.css(".collection_objectname a").text
      game_hash[:rank] = game.css("td.collection_rank a").attr("name").text
      game_hash[:year] = game.css("span.smallerfont.dull").text.delete!('()')
      game_hash[:rating] = game.css("td.collection_bggrating")[1].text.strip
      game_hash[:num_voters] = game.css("td.collection_bggrating")[2].text.strip
      game_hash[:link] = "https://boardgamegeek.com#{game.css("#results_objectname#{results_objectname_count} a").map {|link| link['href']}[0]}"

      @@games_array << game_hash

      results_objectname_count += 1

    end
    @@games_array
  end
end
