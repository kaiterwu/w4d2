require_relative "piece_class"
require_relative "../slideable"
require_relative "../board"
require_relative "null_piece.rb"

class Rook < Pieces
    include Slideable 
    def initialize(color,board,position)
        @color = color 
        @board = board 
        @position = position 
    end 
    def symbol 
    end 

    protected 

    def move_dirs 
        horizontal_dirs 
    end 

    
end 