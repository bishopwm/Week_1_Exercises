puts "-----------------------------------------------------------------------------------"
puts "GAME OF PLANETS - IRONHACK WEEK 1 EXERCISE"
puts "-----------------------------------------------------------------------------------"
puts "You are on a random planet in outerspace. You must \n
make your way through the planets and avoid marshans! The commands to navigate are as follows: n - North, s - South, w - West, e - East

\n*Hint* Follow the bright lights towards safety. Are you ready? If so, enter 'Yes' to proceed!"
gets.chomp
puts "Great, your journey starts here:"
puts "-----------------------------------------------------------------------------------"


class Planet
	attr_accessor :exit, :description
	def initialize(exit, description)
		@exit = exit
		@description = description
		#@speical_command = special_command
	end



end


class Game
	def initialize
		@solar_system = []
	end

	def create_solar_system(planets)
		@solar_system = planets
	end

	def run
		planet = @solar_system.sample
		puts planet.description
		user_input = gets.chomp
		case user_input
		when planet.exit
			#puts "Or use the planet's special command to vanish to another planet"
			planet === @solar_system.sample
			return run
		when planet.exit 
			planet === @solar_system.sample
			return run
			puts "You can't go this way. Try again."
		else
			puts "Oh no! You went the wrong way and got eaten by marshans :( GAME OVER."
		end
	end
	
end

pluto 			= Planet.new("n", "This is pluto. There is a bright light to the North.")
neptune 		= Planet.new("e", "This is Neptune. There is a bright light to the East.")
jupiter 		= Planet.new("s", "This is Jupiter. There is a bright light to the South.")
venus 			= Planet.new("s", "This is Venus. There is a bright light to the South")
earth 			= Planet.new("w", "This is earth! You're home. But Zombies invaded \nand you want to get out. They're chasing you to the West!")

game1=Game.new
planets = [pluto, neptune, jupiter, venus, earth]
game1.create_solar_system(planets)
game1.run



