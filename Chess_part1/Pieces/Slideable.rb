


module Slideable

    HORIZONTAL_VERTICAL_DIRS = [[1,0],[-1,0],[0,1],[0,-1]]

    DIAGONAL_DIRS= [[1,1],[-1,1],[1,-1],[-1,-1]]

    def horizontal_vertical_dirs
        HORIZONTAL_VERTICAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end



    def move_directions
        # horizontal_dirs
    end

    def moves 
        move_array = []

        move_dirctions.each do |dir|
            dx, dy = dir[0],dir[1]
            move_array += grow_unblock_moves_in_dir(dx, dy)
        end

        move_array
    end

    def grow_unblock_moves_in_dir(dx,dy)
        x,y = @pos
        pma = []
        x,y = x+dx , y+dy
        tpos = [x,y]
        until @board[tpos] != nil
            pma << tpos
            x,y = x+dx , y+dy
            tpos = [x,y]
        end

        pma

    end

end