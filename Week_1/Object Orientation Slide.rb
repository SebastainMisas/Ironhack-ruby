#Example 
------------------------------
# class Spaceship
# 	attr_accessor :worlds_visited

# 	def initialize(size, max_speed, weight)
# 		@size =size
# 	#max speed in "warps"
# 		@max_speed =max_speed
# 	#weight in tons
# 		@weight = weight
# 		@worlds_visited = []
# 	end
# 	def fly
# 		puts "Taking off. You are airborne..."
# 		puts "flying at #{@max_speed} warps..."
# 	end
# 	def land(world)
# 		puts "Landing Now at #{world}."

# 		#log that it visited that world
# 		@worlds_visited.push(world)

# 	end
# 	def describe

# 	end
# end

# class RaceShip < Spaceship
# 	def fly
# 		puts "TAKING OFF 5000000000000 FAST.."
# 		puts "Stabilizing flying at #{@max_speed} warps"
# 	end
# end



# racing_ship = RaceShip.new("Small", 600, 25)
# racing_ship.fly
# racing_ship.land("Earth")



# puts "Created enterprise"
# enterprise = Spaceship.new("large", 100, 50)
# enterprise.fly
# enterprise.land("Mars")
# enterprise.fly 
# enterprise.land("Jupiter")


# puts "worlds visited:"
# puts enterprise.worlds_visited.inspect

# puts "Created millenium_falcon"
# millenium_falcon = Spaceship.new("small", 200, 20)
# millenium_falcon.fly







-----------------------------------------------
# My code




class Car
	attr_accessor :cities_visited
	def initialize(owner, name, size, color, sound)
		@owner = owner
		@name = name 
		@size = size
		@color = color 
		@sound = sound
		@cities_visited = []
	end
	def describe
		puts "#{@owner} Car" 
		puts "Make: #{@name}, Size: #{@size}, Color:#{@color}, Sound:#{@sound}"
		puts "Cities visited :#{@cities_visited}"
	end

	#class meathod called on the class and takes in a car. 
	# def self.describe_twice(Car)
	# 	Car.describe
	# 	Car.describe
	# end
	def depart(city)
		puts "leaving from #{city}"
	end
	def arrive(city)
		puts "#{@owner} has arrived at #{city}"
		@cities_visited.push(city)
	end


end

class Racing_car < Car
   def depart(city)
   	puts "TAKING OFF FAST Leaving from #{city}"
	end
end


sebastians_car = Car.new("Sebastian", "Ferarri", "medium", "black", "vroom..")
phillips_car = Car.new("Phillip", "BMW", "Large", "Black", "verwoom")
rays_car = Car.new("Ray", "1969 Mustang", "large", "red", "Broom Broom")


sebastians_car.depart("San Diego")
sebastians_car.arrive("San Fransisco")

sebastians_car.depart("San Fransisco")
sebastians_car.arrive("San Diego")

puts sebastians_car.describe
puts phillips_car.describe
puts rays_car.describe
# Car.describe_twice(rays_car)
