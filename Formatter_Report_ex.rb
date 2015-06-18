class Car
	def initialize(sound)
		@sound = sound
	end
end

class CarListReport
	def initialize(cars, formatter)
		@cars = cars
		@formatter = formatter
	end


 	def output_report
 		@formatter.print(self)
 	end
 end

 class HTMLReport
 	def print(cars)
 		#....
 	end
 end

 class PlainTextReport
 	def print(cars)
 	end
 end

 Car1 = Car.new("Brooom")
 Car2 = Car.new ("nyroooom")

cars = [Car1, Car2]
CarListReport.new(cars, HTMLReport.new)