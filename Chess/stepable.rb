module Stepable

    def moves
        possible_moves = []
        pos = self.position
        move_diffs.each do |(y,x)|
            current_y ,current_x = pos 
            new_pos = [current_y + y, current_x + x]
            unless  new_pos.any? { |idx| idx < 0 || idx > 7 }
                possible_moves << new_pos unless self.board[new_pos].color == self.color 
            end
        end
        possible_moves
    end

    private

    def move_diffs

    end


    
end 