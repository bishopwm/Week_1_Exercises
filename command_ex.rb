# class Car
# 	def move(direction, speed, distance)
# 		MoveCommand.new(direction, speed, distance).run

# 	end
	
# end

# class MoveCommand
# 	def initialize(direction, speed, distance)
# 		@direction = direction
# 		@speed = speed
# 		@distance = distance
# 	end

# 	def run
# 		puts "The car is moving to #{@direction} at #{@speed} km/h during #{distance} m."
# 	end

# 	def undo
# 		puts "The car is moving opposite to #{@direction} at #{@speed} km/h during #{distance} m."
# 	end

# end

# car = Car.new
# car.move('north', 40, 200)
# car.move('south', 50, 700)

#####BETTER WAY WITH INJECTION

class Car
	def move(command)
		MoveCommand.new(command).run
	def undomove(command)
		command.undo
	end

	end
	
end

class MoveCommand
	def initialize(direction, speed, distance)
		@direction = direction
		@speed = speed
		@distance = distance
	end

	def run
		puts "The car is moving to #{@direction} at #{@speed} km/h during #{distance} m."
	end

	def undo
		puts "The car is moving opposite to #{@direction} at #{@speed} km/h during #{distance} m."
	end

end

car = Car.new

command = MoveCommand.new('north', 40, 200)
car.move(command)
car.undomove(command)
