# representation of the board:

	 1  2  3  4  5  6  7  8
#   --------------------------
# 8 |a8 b8 c8 d8 e8 f8 g8 h8 | <----Black 
# 7 |a7 b7 c7 d7 e7 f7 g7 h7 | <----Pawns
# 6 |-- -- -- -- -- -- -- -- |
# 5 |-- -- -- -- -- -- -- -- |
# 4 |-- -- -- -- -- -- -- -- |
# 3 |-- -- -- -- -- -- -- -- |
# 2 |a2 b2 c2 d2 e2 f2 g2 h2 | <----Pawns
# 1 |a1 b1 c1 d1 e1 f1 g1 h1 | <----White
#   --------------------------


class Game
	def initialize
		@board = {
		#pieces:

		#white side of board:				#White pawns:
		#--------------------------------------------------------------
			a1: Rook.new(1, 1, "White"), 	a2: Pawn.new(1, 2, "White"),
			b1: Knight.new(2, 1, "White"), 	b2: Pawn.new(2, 2, "White"),
			c1: Bishop.new(3, 1, "White"), 	c2: Pawn.new(3, 2, "White"),
			d1: King.new(4, 1, "White"), 	d2: Pawn.new(4, 2, "White"),
			e1: Qween.new(5, 1, "White"), 	e2: Pawn.new(5, 2, "White"),
			f1: Bishop.new(6, 1, "White"), 	f2: Pawn.new(6, 2, "White"),
			g1: Knight.new(7, 1, "White"), 	g2: Pawn.new(7, 2, "White"),
			h1: Rook.new(8, 1, "White"), 	h2: Pawn.new(8, 2, "White"),

		#black side of board:              	#Black pawns:
		#---------------------------------------------------------------
			a8: Rook.new(1, 8, "Black"), 	a7: Pawn.new(1, 7, "Black"),
			b8: Knight.new(2, 8, "Black"),  b7: Pawn.new(2, 7, "Black"),
			c8: Bishop.new(3, 8, "Black"),  c7: Pawn.new(3, 7, "Black"),
			d8: King.new(4, 8, "Black"), 	d7: Pawn.new(4, 7, "Black"),
			e8: Qween.new(5, 8, "Black"), 	e7: Pawn.new(5, 7, "Black"),
			f8: Bishop.new(6, 8, "Black"), 	f7: Pawn.new(6, 7, "Black"),
			g8: Knight.new(7, 8, "Black"), 	g7: Pawn.new(7, 7, "Black"),
			h8: Rook.new(8, 8, "Black"), 	h7: Pawn.new(8, 7, "Black"),

		}

		@boundaries = boundaries
	end
	
	#meathods: -------------------------------------------------------------------------

	def split_cord(position)
		split_position = position.split("")
		x = split_position[0]
		y = split_position[1].to_i
		x = x.downcase.ord - 96
		[x, y]
	end


	def piece_at_pos(position)
		@board[position.to_sym]
	end

	def move_on_board?(start_position, end_position)
		@board.has_key?(start_position.to_sym) && @board.has_key?(end_position.to_sym)
	end

	def valid_move?(start_position, end_position)
		split_cordinates = split_cord(end_position)
		x = split_cordinates[0]
		y = split_cordinates[1]

		if !move_on_board?(start_position, end_position) 
			return false
		elsif !piece_at_pos(start_position)
			return false
		elsif piece_at_pos(end_position)
			return false
		elsif @board[start_position.to_sym].move(x, y) == false
			return false
		else
			true
		end

	end
end

