require_relative "piece_class"
require 'singleton'

class NullPiece < Pieces
    include Singleton

    private
    def initialize
        @color = nil 
        @symbol = " "
    end

    

end