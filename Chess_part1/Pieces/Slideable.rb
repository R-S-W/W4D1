


module Slideable

    HORIZONTAL_DIRS = [[1,0],[-1,0],[0,1],[0,-1]]


    def horizontal_dirs
        HORIZONTAL_DIRS
    end


    def move_directions
        # horizontal_dirs

        
    end

    def grow_unblock_moves_in_dir(dx,dy)
        x,y = @pos
        x,y = x+dx , y+dy
        @pos = x,y
        


    end

end