require_relative "piece_class"
require_relative "../board"
require_relative "null_piece.rb"

class Pawn < Pieces

    def initialize(color,board,position)
        @color = color 
        @board = board 
        @position = position 
    end 
    def symbol 
    end 

    protected 

    def move_diffs
        if self.position[0] == 1 
    end 
end