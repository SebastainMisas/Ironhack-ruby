require_relative("all_pieces.rb")
require_relative("rook.rb")
require_relative("knight.rb")
require_relative("queen.rb")
require_relative("king.rb")
require_relative("bishop.rb")
require_relative("pawn.rb")
require_relative("game.rb")


#application code: -------------------------------------------------------------------------------------

game = Chess_validator.new
puts game.valid_move?("a3", "a4")


