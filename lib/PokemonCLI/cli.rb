class PokemonCLI::CLI
  def start
    puts "================================================================"
    puts "==========================Hello there!=========================="
    puts "===Here you can find out information about any pokemon!      ==="
    puts "===At any point in this you can type quit to exit the session==="
    puts "===To find out more info please type the pokemon's name:     ==="
    input = gets.strip.downcase
    
    if input == "quit"
      quit
    else
      @data = PokemonCLI::API.get_pokemon(input)
      display
    end
  end
  
  def display
    puts "===You have chosen the pokemon #{@data.name}!                      ==="
    puts "===Select a number below to find out more about #{@data.name}:     ==="
    puts "===1. All games #{@data.name} is listed in.                        ==="
    puts "===2. Stats for #{@data.name}.                                     ==="
    puts "===3. What type and where in the pokedex #{@data.name} is located. ==="
    puts "===4. Basic information for #{@data.name}.                         ==="
  end
  
  def quit
    puts "============================Goodbye!============================"
    puts "================================================================"
  end
end