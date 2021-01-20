require_relative 'Piece.rb'
require_relative "Stepable.rb"
class King < Piece
    include Stepable
    king_moves = [[1,0],[1,1],[0,1],[1,-1],[0,-1],[-1,-1],[-1,0], [-1,1]]

    def symbol
        if @color == :White
            "♕"
        else
            "♚"
        end
    end
    def move_diffs
        king_moves
    end

end