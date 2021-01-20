


class Piece 
    attr_reader :pos, :color

    def initialize(pos, board, color, type = nil)
        @type = type
        @pos = pos
        @board = board
        @color = color 
    end


end


