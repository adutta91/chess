require_relative '../piece_super_classes/stepping_piece'

class Knight < SteppingPiece
  def initialize(color, position, board)
    @translations = [
      [1, 2],
      [-1, 2],
      [1, -2],
      [-1, -2],
      [2, 1],
      [-2, 1],
      [2, -1],
      [-2, -1]
    ]
    super(color, position, @translations, board)
  end

  def to_s
    color == :black ? " ♞ " : " ♘ "
  end
end
