require_relative "Cursor.rb"
require_relative "Board.rb"
require 'colorize'

class Display

    attr_reader :cursor, :board

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], board)
    end

    def render 

        (0...8).each do |i|
            (0...8).each do |j|
                # print @board[ [i,j] ].symbol + " "
                print char_with_colorized_background(j,i)
            end
            print "\n"
        end

        




    end

    def char_with_colorized_background(col,row)
        chess_char = @board[ [col,7-row] ].symbol

        if [col, 7-row] == @cursor.cursor_pos
            return chess_char.colorize(:background => :green)
        end
        if (col+row).odd?
            return chess_char.colorize( :background => :red  )
            # @cursor.cursor_pos.colorize( :background => :red  )
        else
            return chess_char.colorize(:background=> :blue)
            # @cursor.cursor_pos.colorize(:background=> :blue)
        end

    end


    



end

"""
00  (01)  02  (03) ...
(10)  11  (12)  13
20  (21)  22  (23)
(30)  31  (32)  33
40  (41)  42  (43)  

"""


b   = Board.new

d = Display.new(b)
d.render
p d.cursor.get_input