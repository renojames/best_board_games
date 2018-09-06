

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
        puts "Info for 50 board games"
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

end
