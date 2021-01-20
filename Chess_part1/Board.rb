require_relative 'Pieces/Piece.rb'
require_relative 'Pieces/Nullpiece.rb'
require_relative 'Pieces/Pawn.rb'
require_relative 'Pieces/Bishop.rb'
require_relative 'Pieces/King.rb'
require_relative 'Pieces/Knight.rb'
require_relative 'Pieces/Queen.rb'
require_relative 'Pieces/Rook.rb'


class Board 

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        fill_board
        @empty_space=Nullpiece.instance
    end

    def fill_board

        @grid[0].each_with_index do  |e, i| 
            @grid[0][i] = Rook.new(  [i,7],self, :Black)  if i ==0 || i == 7
            @grid[0][i] = Knight.new([i,7],self, :Black) if  i==1 || i==6
            @grid[0][i] = Bishop.new([i,7],self, :Black) if  i==2 || i==5
            @grid[0][i] = King.new(  [i,7],self, :Black) if i ==3
            @grid[0][i] = Queen.new( [i,7],self, :Black) if i==4

        end
        @grid[1].each_with_index { |e, i| @grid[1][i] = Pawn.new([i,6],self, :Black) }


        # @grid


        @grid[6].each_with_index { |e, i| @grid[6][i] = Pawn.new([i,1],self, :White) }
        @grid[7].each_with_index do  |e, i| 
            @grid[7][i] = Rook.new([i,0],self,   :White)  if   i ==0 || i == 7
            @grid[7][i] = Knight.new([i,0],self, :White) if  i==1 || i==6
            @grid[7][i] = Bishop.new([i,0],self, :White) if  i==2 || i==5
            @grid[7][i] = King.new([i,0],self,   :White) if    i==3
            @grid[7][i] = Queen.new([i,0],self,  :White) if   i==4
        end
    end

    def move_piece(start_pos, end_pos)
        if is_valid_pos?(start_pos) && is_valid_pos?(end_pos)
            if self[start_pos].moves.include?(end_pos )
                self[end_pos] = self[start_pos] 
                self[start_pos] = nil
            end
        else 
            raise StandardError.new "Can not move piece there"
        end
    end

    def [](pos)
        x, y = pos 
        @grid[7-y][x] 
    end



    def []=(pos,value)
        x, y = pos
        @grid[7-y][x] = value
    end

    def is_valid_pos?(pos)
        x,y = pos
        x >= 0 && x<8 && y>=0 && y<8
    end

    def is_filled?(pos)
        self[pos] != nil
    end

end