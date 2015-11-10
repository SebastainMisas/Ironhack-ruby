class ATV 
	attr_accessor :name :wheels
	def initialize(sound, wheels)
		@sound = sound
		@wheels = 4
	end
end


class WheelCounter 
	def initialzie(vehicles)
		@vehicles = vehicles 
	end

	def count 
		#return the total number of wheels in @vehicles
	end
end

class SoundPrinter
	def initialize(vehicles)
		@vehicles = vehicles
	end
	def print 
		#print all the sound in @vehicles 
	end
end

atv = ATV.new("vrrm vrrm vrrm")
atv2 = ATV.new("brm brm brm")

vehicle_array = [atv, atv2]

counter= WheelCounter.new(vehicle_array)
puts counter.count
printer = SoundPrinter.new(vehicle_array)
puts counter.count