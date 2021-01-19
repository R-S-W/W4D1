

class Piece 
    attr_reader :pos 

    def initialize(pos, type = nil)
        @type = type
        @pos = pos
    end

    def is_valid_move?
        return true
    end


end




# class Bishop < SlidingPieces
    
#     def is_valid_move?(end_pos)
#         dx, dy = end_pos 
#         dx -= @pos[0] 
#         dy -= @pos[1]
#         dx.abs == dy.abs
#     end
    
# end

# class Rook < SlidingPieces
# end

# class Queen < SlidingPieces
# end