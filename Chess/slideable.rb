module Slideable 
    def horizontal_dirs(pos)
        (-7..7).each do |i| 
           HORIZONTAL_DIRS << [pos[0]+ i,pos[-1]]
          HORIZONTAL_DIRS<< [pos[0],pos[-1]+i]
        end 
        HORIZONTAL_DIRS.select! do |pos|
            pos.all?{|index|index.between?(0,7)}
        end 
    end 

    def diagonal_dirs(pos) 
        moves = [] 
        (-7..7).each do |i|
            (-7..7).each do |j|
                moves << [i,j] if i.abs == j.abs
            end 
        end 
        pos_moves = moves.map do |move|
            [pos[0]+move[0],pos[-1]+move[-1]]
        end 
        pos_moves.each do |move| 
            DIAGONAL_DIRS << move if move.all?{|index|index.between?(0,7)}
        end 

    end 

private 
    HORIZONTAL_DIRS = [] 
    DIAGONAL_DIRS = [] 
end 
