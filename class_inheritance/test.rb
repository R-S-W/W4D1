class Employee

    

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

    def initialize(name, title, salary, boss, employee)
        super
        @employees = employee
    
    end

    def bonus(multiplier)
        bonus = 0

        @employees.each do |employee|
            bonus += employee.bonus(multiplier)
        end

        bonus 
    end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, "Ned")