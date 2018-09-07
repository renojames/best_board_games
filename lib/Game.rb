
class BestBoardGames::Game

  attr_accessor :name, :rank, :link, :rating, :price, :num_players, :play_time, :description

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

  gloomhaven_hash = {name: "Gloomhaven", rank: 1, link: "https://boardgamegeek.com/boardgame/174430/gloomhaven", rating: "9.0" price: "$140.00", num_players: "1 - 4", play_time: "60 - 120 min", desription: "Gloomhaven is a game of Euro-inspired tactical combat in a persistent world of shifting motives. Players will take on the role of a wandering adventurer with their own special set of skills and their own reasons for traveling to this dark corner of the world."}

  pandemic_legacy_hash = {name: "Pandemic Legacy: Season 1", rank: 2, link: "https://boardgamegeek.com/boardgame/161936/pandemic-legacy-season-1", rating: "8.7", price: "$69.99", num_players: "2 - 4", play_time: "60 min", desription: "Pandemic Legacy is a co-operative campaign game, with an overarching story-arc played through 12-24 sessions, depending on how well your group does at the game."}



end
