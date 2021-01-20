require_relative 'Pieces/Piece.rb'

class Board 

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        fill_board
    end

    def fill_board

        @grid[0].each_with_index { |e, i| @grid[0][i] = Piece.new([0,i],self, :Black) }
        @grid[1].each_with_index { |e, i| @grid[1][i] = Piece.new([1,i],self, :Black) }
        @grid[6].each_with_index { |e, i| @grid[6][i] = Piece.new([6,i],self,:White) }
        @grid[7].each_with_index { |e, i| @grid[7][i] = Piece.new([7,i],self, :White) }
    end

    def move_piece(start_pos, end_pos)
        if is_valid_pos?(start_pos) && is_valid_pos?(end_pos) && self[start_pos].is_valid_move? 
            self[end_pos] = self[start_pos]
        else 
            raise StandardError "Can not move piece there"
        end
    end

    def [](pos)
        x, y = pos 
        @grid[x][y] 
    end

    def []=(pos,value)
        x, y = pos
        @grid[x][y] = value
    end

    def is_valid_pos?(pos)
        x,y = pos
        x >= 0 && x<8 && y>=0 && y<8
    end

    def is_filled?(pos)
        self[pos] != nil
    end

end