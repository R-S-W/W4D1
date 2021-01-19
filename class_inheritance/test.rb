class Employee
    attr_reader :salary
    

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss 
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

end

class Manager < Employee
    attr_reader :employees

    def initialize(name, title, salary, boss, employees)
        
        @employees = employees
        super(name,title,salary,boss)
    
    end

    def bonus(multiplier)
        self.add_salaries*multiplier
    end

    def add_employee(employee)
        @employees << employee
    end

    def add_salaries
        salaries = 0
        self.employees.each do |employee|
            if employee.is_a?(Manager)
                salaries += employee.salary + employee.add_salaries
            else
                salaries += employee.salary
            end  
        end
        salaries
    end



end



shawna = Employee.new("Shawna", "TA", 12000, 'Darren')
david = Employee.new("David", "TA", 10000, 'Darren')
darren = Manager.new("Darren", "TA Manager", 78000, "Ned", [shawna, david])
ned = Manager.new("Ned", "Founder", 1000000, nil, [darren])



# p david
# p " "
# p ned
# p " "
# p ned.employees

p ' '
p shawna.bonus(0.05)
p ned.bonus(5)
p darren.bonus(5)
p david.bonus(3)