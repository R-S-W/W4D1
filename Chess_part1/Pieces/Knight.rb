

class Knight  < Piece
    include Steppable
    knight_moves = [[2,1] ,[2,-1] ,[-2,1], [-2,-1], [1,2] [1,-2], [-1,2], [-1,-2] ]
    
    def move_diffs
        knight_moves
    end


end