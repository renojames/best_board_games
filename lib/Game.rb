require "./lib/best_board_games"

class BestBoardGames::Game

  attr_accessor :name, :rank, :year, :rating, :num_voters, :link

  @@all = []

  def initialize(attributes)
    attributes.each do |key, value|
      self.send(("#{key}="), value)
    end
    @@all << self
  end

  def self.all
    @@all
  end



end
