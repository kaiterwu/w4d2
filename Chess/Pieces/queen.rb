require_relative "piece_class"
require_relative "slideable"

class Queen < Pieces
    include Slideable 

    def symbol 
    end 

    protected 

    def move_dirs 
        horizontal_dirs + diagonal_dirs
    end 

    
end 