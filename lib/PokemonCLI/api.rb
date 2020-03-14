class PokemonCLI::API
  def self.get_pokemon
    @pokemon_hash = PokeApi.get(pokemon: 'bulbasaur')
    binding.pry
  end
end