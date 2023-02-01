class NullPiece < Pieces
    include Singleton

    private
    def initialize
        @color = nil 
        @symbol = " "
    end

    

end