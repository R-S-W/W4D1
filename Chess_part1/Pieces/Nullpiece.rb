require_relative 'Piece'
require 'singleton'

class Nullpiece < Piece
    include Singleton 

    attr_reader :color, :symbol

    def initialize
        @color = nil
        @symbol = nil
    end
    
end