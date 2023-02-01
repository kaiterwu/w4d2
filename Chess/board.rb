require_relative "./Pieces/piece_class.rb"
require_relative "./Pieces/null_piece.rb"
class Board

    def self.print_grid (grid)
        grid.each do |row|
            puts row.join(" ")
        end
     end 

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
        end_piece = @grid[end_pos[0]][end_pos[-1]]
        raise "There is no piece there" if piece.is_a?(NullPiece)
        if !end_pos.any? { |index| index < 0 || index > 7 } && !end_piece.is_a?(NullPiece)
            raise "Not valid position" 
        end
        @grid[end_pos[0]][end_pos[-1]] = piece
        @grid[start_pos[0]][start_pos[-1]] = NullPiece.new
    end

    def new_board 
        new_grid = Array.new(@grid.length){Array.new(@grid[0].length)}
        new_grid.each_with_index do |row,i|
            row.each_with_index do |ele,k| 
                if @grid[i][k].is_a?(NullPiece)
                    new_grid[i][k] = :E
                else  
                    new_grid[i][k] = :P
                end 
            end
        end 
        return new_grid 
    end 

    def [](pos)
        row, col = pos
        @grid[row][col]
      end
    
      def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
      end
    
      def add_piece(pos, piece)
        @grid[pos] = piece
      end
    def print
        Board.print_grid(self.new_board)
    end 

end

