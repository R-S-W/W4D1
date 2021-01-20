require_relative 'Piece.rb'
require_relative 'Slideable.rb'
class Queen  < Piece
    include Slideable

    def move_dirctions
        horizontal_vertical_dirs + diagonal_dirs
    end


    def symbol
        if @color == :White
            "♕"
        else
            "♛"
        end
    end
end