

class BestBoardGames::CLI

  def self.start
    self.greet
    self.menu
    self.goodbye
  end

  def self.greet
    puts "Welcome to Best Board Games, your Interface for the top games from BoardGameGeek.com!"
  end

  def self.menu
    puts "This will be some data concerning board games."
  end

  def self.goodbye
    puts "Thank you for using Best Board Games, we hope to see you again! Game well!"
  end

end
