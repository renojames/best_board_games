require "./lib/best_board_games"
require "./lib/Game"
require "./lib/Scraper"
require "pry"

class BestBoardGames::CLI

  def self.start
    BestBoardGames::Scraper.scrape
    #BestBoardGames::Game.generate_games()
    #BestBoardGames::Game.all
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
      puts "To view the games with more than 5000 votes, enter 'votes'"
      puts "To view the number 1 board game, enter 'best'"
      puts "To leave the application, type 'exit'"
      puts ""

      input = gets.strip.downcase

      if input == "fifty"
        self.display_games_by_range(50)
      elsif input == "twenty"
        self.display_games_by_range(20)
      elsif input == "ten"
        self.display_games_by_range(10)
      elsif input == "five"
        self.display_games_by_range(5)
      elsif input == "best"
        self.best
      elsif input == "exit"
          break
      elsif input == "votes"
        self.most_votes

      else
        puts "Sorry, I didn't understand that!"
      end

    end

  end

  def self.most_votes
    puts "hello"
  end

  def self.display_games_by_range(upper)

    puts ""
    index = upper - 1
    games = BestBoardGames::Game.all[0..index]
    games.each do |game|
        puts "#{game.rank}) #{game.name.upcase}"
    end

    loop do
      puts ""
      puts "Enter the number of the game that you'd like to know more about (ex: 1), or enter 'menu' to return to the Main Menu"
      puts ""
      input = gets.strip

      if input.to_i.between?(1, upper)
        game = games[input.to_i - 1]

            puts ""
            puts "************************************"
            puts ""
            puts "#{game.name.upcase}"
            puts ""
            puts "Year Published: #{game.year}"
            puts ""
            puts "Overall Rank: #{game.rank}"
            puts ""
            puts "Geek Rating: #{game.rating} / 10"
            puts ""
            puts "Number of Voters: #{game.num_voters}"
            puts ""
            puts "Link to Game: #{game.link}"
            puts ""
            puts "************************************"

      elsif input == 'menu'
        break
      else
        puts ""
        puts "Sorry, I didn't understand that!"
      end
    end
  end

  def self.goodbye
    puts ""
    puts "Thank you for using Best Board Games, we hope to see you again! Game well!"
    puts ""
  end

  def self.top_fifty


  end # End self.top_fifty method

  def self.top_twenty
    puts ""
    all_games.each do |game|
      if game.rank.to_i <= 20
        puts "#{game.rank}) #{game.name.upcase}"
      end
    end

    loop do
      puts ""
      puts "Enter the number of the game that you'd like to know more about (ex: 1), or enter 'menu' to return to the Main Menu"
      puts ""
      input = gets.strip
      if input.to_i.between?(1, 20)
        all_games.each do |game|
          if game.rank.to_s == input
            puts ""
            puts "************************************"
            puts ""
            puts "#{game.name.upcase}"
            puts ""
            puts "Year Published: #{game.year}"
            puts ""
            puts "Overall Rank: #{game.rank}"
            puts ""
            puts "Geek Rating: #{game.rating} / 10"
            puts ""
            puts "Number of Voters: #{game.num_voters}"
            puts ""
            puts "Link to Game: #{game.link}"
            puts ""
            puts "************************************"
          end
        end
      elsif input == 'menu'
        break
      else
        puts ""
        puts "Sorry, I didn't understand that!"
      end
    end

  end # End self.top_twenty method

  def self.top_ten
    puts ""
    all_games.each do |game|
      if game.rank.to_i <= 10
        puts "#{game.rank}) #{game.name.upcase}"
      end
    end

    loop do
      puts ""
      puts "Enter the number of the game that you'd like to know more about (ex: 1), or enter 'menu' to return to the Main Menu"
      puts ""
      input = gets.strip
      if input.to_i.between?(1, 10)
        all_games.each do |game|
          if game.rank.to_s == input
            puts ""
            puts "************************************"
            puts ""
            puts "#{game.name.upcase}"
            puts ""
            puts "Year Published: #{game.year}"
            puts ""
            puts "Overall Rank: #{game.rank}"
            puts ""
            puts "Geek Rating: #{game.rating} / 10"
            puts ""
            puts "Number of Voters: #{game.num_voters}"
            puts ""
            puts "Link to Game: #{game.link}"
            puts ""
            puts "************************************"
          end
        end
      elsif input == 'menu'
        break
      else
        puts ""
        puts "Sorry, I didn't understand that!"
      end
    end

  end # End self.top_ten method

  def self.top_five
    puts ""
    all_games.each do |game|
      if game.rank.to_i <= 5
        puts "#{game.rank}) #{game.name.upcase}"
      end
    end

    loop do
      puts ""
      puts "Enter the number of the game that you'd like to know more about (ex: 1), or enter 'menu' to return to the Main Menu"
      puts ""
      input = gets.strip
      if input.to_i.between?(1, 5)
        all_games.each do |game|
          if game.rank.to_s == input
            puts ""
            puts "************************************"
            puts ""
            puts "#{game.name.upcase}"
            puts ""
            puts "Year Published: #{game.year}"
            puts ""
            puts "Overall Rank: #{game.rank}"
            puts ""
            puts "Geek Rating: #{game.rating} / 10"
            puts ""
            puts "Number of Voters: #{game.num_voters}"
            puts ""
            puts "Link to Game: #{game.link}"
            puts ""
            puts "************************************"
          end
        end
      elsif input == 'menu'
        break
      else
        puts ""
        puts "Sorry, I didn't understand that!"
      end
    end

  end # End self.top_five method

  def self.best
    best = self.all_games[0]

    puts ""
    puts "************************************"
    puts ""
    puts "#{best.name.upcase}"
    puts ""
    puts "Year Published: #{best.year}"
    puts ""
    puts "Overall Rank: #{best.rank}"
    puts ""
    puts "Geek Rating: #{best.rating} / 10"
    puts ""
    puts "Number of Voters: #{best.num_voters}"
    puts ""
    puts "Link to Game: #{best.link}"
    puts ""
    puts "************************************"
  end

end


#build a custom class method in the Game class that filters all the games with more than 5000 votes
#build the most_votes method in the CLI class that will display those games to the user
