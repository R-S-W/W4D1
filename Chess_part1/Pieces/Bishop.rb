class Bishop < Piece
    include Slideable

    def move_directions
        diagonal_dirs
    end


end