require_relative 'Piece.rb'
require_relative "Stepable.rb"

class Knight  < Piece
    include Stepable
    knight_moves = [[2,1] ,[2,-1] ,[-2,1], [-2,-1], [1,2] [1,-2], [-1,2], [-1,-2] ]
    
    def move_diffs
        knight_moves
    end

    def symbol
        if @color == :White
            "♘"
        else
            "♞"
        end
    end


end