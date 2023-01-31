require_relative "pieces"

class Board

    def initialize
        @grid = Array.new(8) { Array.new(8) }
        @grid.each_index do |i|
            if i.between?(2,5)
                @grid[i].map! { |ele| NullPiece.new }
            else
                @grid[i].map! { |ele| Pieces.new }
            end
        end
    end

    def move_piece(start_pos, end_pos)
        piece = @grid[start_pos[0]][start_pos[-1]]
        raise "There is no piece there" if piece.is_a?(NullPiece)
        if !end_pos.any? { |index| index < 0 || index > 7 } && !end_piece.is_a?(NullPiece)
            raise "Not valid position" 
        end
        @grid[end_pos[0]][end_pos[-1]] = piece
        @grid[start_pos[0]][start_pos[-1]] = NullPiece.new
    end

    def print_board
        @grid
    end

end

