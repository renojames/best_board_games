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

  def self.generate_games(games_array)
    games_array.each do |game_hash|
      game = self.new(game_hash)
    end
  end

  def self.all
    @@all
  end



end
