

class Rook < Piece
    include Slideable

    def move_dirctions
        horizontal_vertical_dirs
    end


end