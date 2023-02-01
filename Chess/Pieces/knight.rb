require_relative "piece_class"
require_relative "../stepable"
require_relative "../board"
require_relative "null_piece.rb"

class Knight < Pieces
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
        [[-2, -1], [-2,  1], [-1, -2], [-1,  2], [ 1, -2], [ 1,  2], [ 2, -1], [ 2,  1]]
    end 
end