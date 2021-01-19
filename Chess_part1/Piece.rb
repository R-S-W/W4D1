

class Piece 
    def initialize(type = nil)
        @type = type
    end


end



class SlidingPieces < Piece
end

class Bishop < SlidingPieces

    
end

class Rook < SlidingPieces
end

class Queen < SlidingPieces
end