require_relative "./Pieces/piece_class.rb"
require_relative "./Pieces/null_piece.rb"
require_relative "./Pieces/bishop.rb"
require_relative "./Pieces/king.rb"
require_relative "./Pieces/knight.rb"
require_relative "./Pieces/pawn.rb"
require_relative "./Pieces/queen.rb"
require_relative "./Pieces/rook.rb"
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
                @grid[i].map! { |ele| NullPiece.instance }
            elsif i ==1
                @grid[i].each_with_index {|ele,j|@grid[i][j] = Pawn.new("black",self,[i,j])}
            elsif i ==6 
                @grid[i].each_with_index {|ele,j|@grid[i][j] = Pawn.new("white",self,[i,j])}
            elsif i == 0 
                @grid[0].each_index do |j| 
                    if j == 0 || j == 7 
                        @grid[0][j] = Rook.new("black",self,[i,j])
                    elsif j == 1 || j == 6 
                        @grid[0][j] = Knight.new("black",self,[i,j])
                    elsif j == 2 || j == 5 
                        @grid[0][j] = Bishop.new("black",self,[i,j])
                    elsif j == 3 
                        @grid[0][j] = King.new("black",self,[i,j])
                    elsif j == 4 
                        @grid[0][j] = Queen.new("black",self,[i,j])
                    end 
                end 
            elsif i == 7 
                @grid[7].each_index do |j| 
                if j == 0 || j == 7 
                    @grid[7][j] = Rook.new("white",self,[i,j])
                elsif j == 1 || j == 6 
                    @grid[7][j] = Knight.new("white",self,[i,j])
                elsif j == 2 || j == 5 
                    @grid[7][j] = Bishop.new("white",self,[i,j])
                elsif j == 3 
                    @grid[7][j] = Queen.new("white",self,[i,j])
                elsif j == 4 
                    @grid[7][j] = King.new("white",self,[i,j])
                end 
            end 
                

                    
                        
        end
        end
    end

    def move_piece(start_pos, end_pos)
        piece = @grid[start_pos[0]][start_pos[-1]]
        end_piece = @grid[end_pos[0]][end_pos[-1]]
        raise "There is no piece there" if piece.is_a?(NullPiece)
        if !piece.moves.include?(end_pos)
            raise "Not valid position" 
        end
        @grid[end_pos[0]][end_pos[-1]] = piece
        @grid[start_pos[0]][start_pos[-1]] = NullPiece.instance
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

