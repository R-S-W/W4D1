class Bishop < Piece
    include Slideable

    def move_dirctions
        diagonal_dirs
    end


end