require_relative "piece_class"
require_relative "../stepable"
require_relative "../board"
require_relative "null_piece.rb"

class King < Pieces
    include Stepable 
    def initialize(color,board,position)
        @color = color 
        @board = board 
        @position = position 
    end 
    def symbol 
    end 

    protected 

    def move_diffs
        [[1,0], [-1,0], [0,1], [0,-1], [1,1], [-1,-1], [1,-1], [-1,1]]
    end 

    
end 