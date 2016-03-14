# The Game class, which handles the flow of the game
require_relative 'chess_game.rb'
# Custom Error classes used in the other classes
require_relative './util/errors.rb'

# The Display class, responsible for most output and input
require_relative './util/display'
# Cursorable module is mixed into display, allowing cursor IO
require_relative './util/cursorable'

# The Board class
require_relative './util/board.rb'

# The Piece super class. No instances, just behavior to be inherited
require_relative './piece_super_classes/piece'
# The NullPiece class. Occupies empty squares on the board allowing polymorphic calls
require_relative './pieces/null_piece'

# The SteppingPiece super class. These are pieces that move by
# translating a specific, limited distance, like the King and the
# Knight. No instances, just behavior to be inherited.
require_relative './piece_super_classes/stepping_piece'

# The Knight class
require_relative './pieces/knight.rb'
# The King class
require_relative './pieces/king.rb'
# The Pawn class
require_relative './pieces/pawn.rb'


# The SlidingPiece super class. These are pieces that move by
# translating any distance in a  specified direction, like the Queen,
# Rook, and Bishop. No instances, just behavior to be inherited.
require_relative './piece_super_classes/sliding_piece'

# The Rook class.
require_relative './pieces/rook.rb'
# The Bishop class
require_relative './pieces/bishop.rb'
# The Queen class
require_relative './pieces/queen.rb'
