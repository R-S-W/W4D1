class Pawn < Piece

    Pawn_moves_black = [-1,0]
    Pawn_moves_white = [1,0]
    
    def symbol 
        "♟︎" 
    end


    def moves 
        forward_steps + side_attacks
    end

    private

    def at_start_row?
        if @color == :Black 
            pos[1] == 1 
        else
            pos[1] == 6
        end
    end

    def forward_dir 
        if @color == :Black
            return -1 
        else
            return 1  
        end
    end

    def forward_steps 
        x, y = @pos 
        y += forward_dir
        forward_moves = []
        forward_moves << [x,y] if y >= 0 && y < 8 

        if at_start_row? 
            y += forward_dirs
            forward_moves << [x,y]
        end

        forward_moves
    end

    def side_attacks 
        x, y = @pos
        left = [x-1,y + forward_dir] 
        right = [x+1,y + forward_dir]
        side_moves = []
        side_moves << left if @board.is_valid_pos?(left) && @board.is_filled?(left) && @board[left].color != color 
        side_moves << right if @board.is_valid_pos?(right) && @board.is_filled?(right) && @board[right].color != color 
        side_moves
    end



    
end