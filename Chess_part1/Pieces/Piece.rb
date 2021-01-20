
require_relative 'Board.rb'

class Piece 
    attr_reader :pos, :color

    def initialize(pos, board, color, type = nil)
        @type = type
        @pos = pos
        @board = board
        @color = color 
    end

    def is_valid_move?
        
    end


end


