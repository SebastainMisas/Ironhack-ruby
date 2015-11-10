
class Knight < Piece
	def move(new_x, new_y)
		if ((@x - new_x).abs == 1 && (@y - new_y).abs == 2) || ((@x - new_x).abs == 2 && (@y - new_y).abs == 1)
			return true
		else
			return false
		end

	end
	
end