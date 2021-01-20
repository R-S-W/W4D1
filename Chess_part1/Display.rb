require_relative "Cursor.rb"
require_relative "board.rb"

class Display

    attr_reader :cursor, :board

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], board)
    end

    def render 

    end

end