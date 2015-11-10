

class Game
	def initialize
 		@worlds = []
 		@current_world = 0
 	end
 	
 	 
 	
 	def start
 		puts "you have started the game!"
 		world = @worlds[@current_world]
 		world.enter
 		  
  	end
 	
 	def add_world(world)
 		@worlds.push(world)
 	end


end



class World
	attr_accessor :exit, :message, :enter
	def initialize(message, exit)
		@message = message
		@exit = exit
		 
		
	end

	def enter 
		puts @message
		get_input = gets.chomp
		while get_input != @exit
			puts "Please try again.."
 			input2 = gets.chomp
 			if input2 != @exit
 		end
 	end
 		
end



azeroth = World.new("You have arrived at azeroth find an exit.. good luck!", "E")
outland = World.new("you have arrived in the outland, escape the demons.. good luck!", "N")




warcraft = Game.new
warcraft.add_world(azeroth)
warcraft.add_world(outland)




warcraft.start 





