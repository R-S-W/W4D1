require_relative 'Piece.rb'
require_relative 'Slideable.rb'

class Rook < Piece
    include Slideable

    def move_dirctions
        horizontal_vertical_dirs
    end

    def symbol
        if @color == :White
            "♖"
        else
            "♜"
        end
    end
end