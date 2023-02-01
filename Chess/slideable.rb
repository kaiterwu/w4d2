module Slideable 
    def horizontal_dirs
        HORIZONTAL_DIRS
    end 

    def diagonal_dirs
       DIAGONAL_DIRS
    end 

    def moves
        current_x , current_y = self.position 
        possible_moves = [] 
        #while loop, two conditions, not empty, and within bounds of board 
        move_dirs.each do |(x,y)|
            new_pos = []
            until self.board[new_pos].is_a?(Nullpiece) || !new_pos.any? { |idx| idx < 0 || idx > 7 }
            new_pos = [current_x + x, current_y + y]
            possible_moves << new_pos 
            end 
        end 

    end 

    def move_dirs 
      
    end 

private 
    HORIZONTAL_DIRS = [[0,1],[0,-1],[1,0],[-1,0]].freeze
    DIAGONAL_DIRS = [[1,1],[-1,-1],[-1,1],[1,-1]].freeze 
end 
