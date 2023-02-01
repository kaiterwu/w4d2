require_relative "piece_class"
require_relative "slideable"

class Bishop < Pieces
    include Slideable 

    def symbol 
    end 

    protected 

    def move_dirs 
         diagonal_dirs
    end 

    
end 