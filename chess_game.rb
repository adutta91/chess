require_relative './util/board.rb'
require_relative './util/display.rb'
require_relative 'manifest.rb'

class Game
  attr_reader :board, :display

  def initialize(board = Board.new)
    @board = board
    @display = Display.new(@board)
  end


  # Infinite loop for moving pieces. Currently sort of a mess and for
  # debugging only, really.
  def play
    until board.king_in_checkmate?(:white) || board.king_in_checkmate?(:black)
      display.render
      input = get_start
      @board.piece_in_hand = @board[input]
      make_move(input)
    end
    game_over();
  rescue BadInputError
    @board.drop_piece
    retry
  end

  def game_over
    @board.switch_players!
    puts "--------- GAME OVER ---------"
    puts "#{@board.current_player} wins!"
  end


  def make_move(input)
    begin
      end_pos = get_end_point
      @board.move(input, end_pos)
    rescue BadMoveError
      retry
    end
  end

  def get_start
    display.render
    start = display.get_input
    while invalid_input?(start)
      display.render
      start = display.get_input
    end
    start
  end

  def get_end_point
    display.render
    end_pos = display.get_input
    while end_pos.nil?
      display.render
      end_pos = display.get_input
    end
    end_pos
  end

  def invalid_input?(input)
    input.nil? || @board.current_player != @board[input].color
  end

end

if __FILE__ == $PROGRAM_NAME
  g = Game.new

  g.play
end
