class PokemonCLI::CLI
  def start
    puts "Gotta catch them all"
    @data = PokemonCLI::API.get_pokemon
  end
end