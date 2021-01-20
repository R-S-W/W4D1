
class King < Piece
    include Steppable
    king_moves = [[1,0],[1,1],[0,1],[1,-1],[0,-1],[-1,-1],[-1,0], [-1,1]]
    def move_diffs
        king_moves
    end

end