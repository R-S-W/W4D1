
class Queen 
    include Slideable

    def move_dirctions
        horizontal_vertical_dirs + diagonal_dirs
    end

end