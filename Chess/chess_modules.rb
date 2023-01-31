module Slideable 
    def horizontal_dirs(pos)
        (-7..7).each do |i| 
           HORIZONTAL_DIRS << [pos[0]+ i,pos[-1]]
          HORIZONTAL_DIRS<< [pos[0],pos[-1]+i]
        end 
        HORIZONTAL_DIRS.select! |pos| do 
            pos.all?{|index|index.between?(0,7)}
        end 
    end 

private 
    HORIZONTAL_DIRS = [] 
    DIAGONAL_DIRS = [] 
end 

module Stepable 
end 