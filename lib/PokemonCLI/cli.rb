class PokemonCLI::CLI
  def start
    puts "================================================================"
    puts "==========================Hello there!=========================="
    puts "======Here you can find out information about any pokemon!======"
    puts "======To find out more info please type the pokemon's name:====="
    input = gets.strip.downcase
    @data = PokemonCLI::API.get_pokemon(input)
    display
  end
  
  def display
    puts "===============You have chosen the pokemon #{@data.name}!==============="
    puts "======Select a number below to find out more about #{@data.name}:======="
  end
  
  def quit
    
  end
end