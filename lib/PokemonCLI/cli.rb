class PokemonCLI::CLI
  def start
    puts "Gotta catch them all"
    input = "charmander"
    @data = PokemonCLI::API.get_pokemon(input)
    binding.pry
  end
end