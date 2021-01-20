require_relative "Slideable.rb"

class Bishop < Piece
    include Slideable

    def move_directions
        diagonal_dirs
    end

    def symbol
        if @color == :White
            "♗"
        else
            "♝"
        end
    end


end