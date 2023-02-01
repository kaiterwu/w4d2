require_relative "piece_class"
require_relative "slideable"

class Rook < Pieces
    include Slideable 

    def symbol 
    end 

    protected 

    def move_dirs 
        horizontal_dirs 
    end 

    
end 