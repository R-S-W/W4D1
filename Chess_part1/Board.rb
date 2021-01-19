

class Board 

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        fill_board
    end

    def fill_board 
        @grid[0].each_with_index { |e, i| @grid[0][i] = Piece.new}
        @grid[1].each_with_index { |e, i| @grid[1][i] = Piece.new}
        @grid[6].each_with_index { |e, i| @grid[6][i] = Piece.new}
        @grid[7].each_with_index { |e, i| @grid[7][i] = Piece.new}
    end

    def move_piece(start_pos, end_pos)
        if start_pos[0] < 8 && start_pos[0] >= [0] && start_pos[1] < 8  && start_pos[1] >= 0 

    end

    def is_valid_pos?(pos)
        x,y = pos
        x >= 0 && x<8 && y>=0 && y<8
    end

end