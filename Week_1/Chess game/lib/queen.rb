class Qween < Piece
 	
	def move(new_x, new_y)
		if new_x == @x && new_y != @y || new_x != @x && new_y == @y 
			return true
		elsif (@x - new_x) == (@y - new_y)
			return true
		else
			return false
		end
	end
end
