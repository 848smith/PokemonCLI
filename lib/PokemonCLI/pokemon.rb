class PokemonCLI::Pokemon
  attr_accessor :type, :base_exp, :pokedex, :specs, :stats, :games
  @@all = []
  
  def initialize(pokemon)
    
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
end