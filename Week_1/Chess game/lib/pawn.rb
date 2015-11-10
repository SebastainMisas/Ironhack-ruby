
class Pawn < Piece

	def move(new_x, new_y)
		if @color == "Black" && @x - new_x == 0 && @y - new_y == 1 
			return true
		elsif @color == "White" && @x - new_x == 0 && @y - new_y == -1 
			return true
		elsif @color == "Black" && @y == 7 && @x - new_x == 0 && @y - new_y == 2
			return true
		elsif @color == "White" && @y == 2 && @x - new_x == 0 && @y - new_y == -2
			return true
		else 
			return false
		end
	end
end

