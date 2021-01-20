


module Steppable

    def move_diffs
    end

    def moves
        all_moves =[]
        move_diffs.each do |dir|
            dx,dy = dir[0] , dir[1]
            temp_pos = Array.new(@pos)
            x,y = temp_pos[0]+ dx, temp_pos[1] + dy
            if @board.is_valid_pos?([x,y]) &&  ( !@board.is_filled?([x,y])  || (@board[[x,y]].color != @color && @board.is_filled?([x,y]))  )
                all_moves << [x,y]
            end
        end
        all_moves
    end
end