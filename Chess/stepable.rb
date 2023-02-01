module Stepable

    def moves
        possible_moves = []
        pos = self.position
        move_diffs.each do |(y,x)|
            current_y ,current_x = pos 
            new_pos = [current_y + y, current_x + x]
            unless !self.board[new_pos].is_a?(NullPiece) || new_pos.any? { |idx| idx < 0 || idx > 7 }
                possible_moves << new_pos
            end
        end
        possible_moves
    end

    private

    def move_diffs

    end


    
end 