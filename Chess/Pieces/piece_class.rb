class Pieces
    attr_reader :position, :color, :board 
    def initialize(color,board,position)
        @color = color 
        @board = board 
        @position = position 

    end

    def to_s 
    end 

    def empty?
       return true  if self.board[self.position].is_a?(NullPiece)
    end 

    def valid_moves
    end 

    def pos=(val)
        self.position = [val[0],val[-1]]
    end 

    def symbol 
    end 

    private 
    def move_into_check?(end_pos)
    end 

end