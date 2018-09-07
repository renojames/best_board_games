require "./lib/best_board_games"
require "./lib/Game"

class BestBoardGames::CLI

  def self.start
    self.greet
    self.menu
    self.goodbye
  end

  def self.greet
    puts ""
    puts "Welcome to Best Board Games, your Interface for the top games from BoardGameGeek.com!"
    puts ""
  end

  def self.menu

    loop do

      puts ""
      puts "How many of the best board games would you like to view?"
      puts ""
      puts "To view the top 50, enter 'fifty'"
      puts "To view the top 20, enter 'twenty'"
      puts "To view the top 10, enter 'ten'"
      puts "To view the top 5, enter 'five'"
      puts "To view the number 1 board game, enter 'best'"
      puts "To leave the application, type 'exit'"
      puts ""

      input = gets.strip.downcase

      if input == "fifty"
        test_array.each do |game|
          puts "#{game.rank}) #{game.name} #{game.price}"
        end
      elsif input == "twenty"
        puts "Info for 20 board games"
      elsif input == "ten"
        puts "Info for 10 board games"
      elsif input == "five"
        puts "Info for 5 board games"
      elsif input == "best"
        puts "Info for the number 1 board game"
      elsif input == "exit"
        break
      else
        puts "Sorry, I didn't understand that!"
      end

    end

  end

  def self.goodbye
    puts ""
    puts "Thank you for using Best Board Games, we hope to see you again! Game well!"
    puts ""
  end

  # *** BEGINNING OF TEST DATA ***

  gloomhaven_hash = {name: "Gloomhaven", rank: 1, link: "https://boardgamegeek.com/boardgame/174430/gloomhaven", rating: "9.0", price: "$140.00", num_players: "1 - 4", play_time: "60 - 120 min", description: "Gloomhaven is a game of Euro-inspired tactical combat in a persistent world of shifting motives. Players will take on the role of a wandering adventurer with their own special set of skills and their own reasons for traveling to this dark corner of the world."}

  pandemic_legacy_hash = {name: "Pandemic Legacy: Season 1", rank: 2, link: "https://boardgamegeek.com/boardgame/161936/pandemic-legacy-season-1", rating: "8.7", price: "$69.99", num_players: "2 - 4", play_time: "60 min", description: "Pandemic Legacy is a co-operative campaign game, with an overarching story-arc played through 12-24 sessions, depending on how well your group does at the game."}

  @@test_array = []

  gloomhaven = BestBoardGames::Game.new(gloomhaven_hash)

  pandemic_legacy = BestBoardGames::Game.new(pandemic_legacy_hash)

  @@test_array << gloomhaven

  @@test_array << pandemic_legacy

  def self.test_array
    @@test_array
  end

end
