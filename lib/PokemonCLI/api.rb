class PokemonCLI::API
  def self.get_pokemon(input)
    @pokemon_hash = HTTParty.get("https://pokeapi.co/api/v2/pokemon/{#{input}}/")
  end
end