require_relative "piece_class"
require_relative "../board"
require_relative "null_piece.rb"

class Pawn < Pieces

    def initialize(color,board,position)
        @color = color 
        @board = board 
        @position = position 
    end 
    def symbol 
    end 

    def moves
        possible_moves = []
        pos = self.position
        forward_step.each do |(y,x)|
            current_y ,current_x = pos 
            new_pos = [current_y + y, current_x + x]
            unless  new_pos.any? { |idx| idx < 0 || idx > 7 }
                possible_moves << new_pos if self.board[new_pos].is_a?(NullPiece)
            end
        end
        cross_attack.each do |(y,x)|
            current_y ,current_x = pos 
            new_pos = [current_y + y, current_x + x]
            unless  new_pos.any? { |idx| idx < 0 || idx > 7 }
                possible_moves << new_pos unless self.board[new_pos].is_a?(NullPiece)
            end
        end 
        possible_moves
    end

    protected 

    def forward_step 
        if self.color == "white"
            return [[-2,0],[-1,0]] if self.position[0] == 6 
            return [[-1,0]]
        else    
            return [[2,0],[1,0]] if self.position[0] == 1 
            return [[1,0]]
        end 
               
    end 

    def cross_attack 
        if self.color == "white"
            return [[-1,1],[-1,-1]] 
        else    
            return [[1,-1],[1,1]] 
        end 
               
    end 
end