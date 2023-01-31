class Employee 
    attr_reader :salary 
    attr_writer :boss 
    def initialize(name,title,salary,boss=nil)
        @name = name 
        @title = title
        @salary = salary
        @boss = boss
    end 

    def bonus(multiplier)
        bonus =(@salary*multiplier)
    end 
end 

class Manager < Employee 
    attr_reader :employees 
    def initialize(name,title,salary,boss=nil)
        super 
        @employees = [] 
    end 

    def bonus(multiplier)
      pre_bonus = 0 
      workers = [] 
      @employees.each do |employee| 
        if employee.is_a?(Manager)
            workers += employee.employees
            workers << employee 
        else   
            workers << employee 
        end  
    end  
    workers.each {|worker|pre_bonus += worker.salary}
    pre_bonus * multiplier 
    end 

    def << (employee)
        @employees << employee 
    end 

end 