class Employee
	attr_accessor :name, :email, :calculate_salary
	def initialize(name, email)
		@name = name
		@email = email
	end
end

class HourlyEmployee < Employee
	def initialize(name, email, hourly_rate, hours_worked)
		@name = name
		@email = email
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	def calculate_salary
		final_salary = @hourly_rate * @hours_worked
		# @calculated_salary.push(final_salary)
		# puts "Calculated salary: #{final_salary}"

	end
end

class Payroll
	def initialize(employees)
		@employees = employees
		
	end

	def notify_employee(employee)
		puts "#{employee.name} has been emailed sucessfuly"
  	end

	def pay_employees
		total = 0 
		@employees.each do |employee|
			total += employee.calculate_salary
		end
		puts "The total payroll is: #{total}"
	end

	
end


employees = [] 
josh = HourlyEmployee.new("Josh", "Josh@gmail.com", 10, 100)
phillip = HourlyEmployee.new("Phillip","Phillip_Bucanon@gmail.com", 100, 60)
employees.push(josh, phillip)

new_payroll = Payroll.new(employees)
new_payroll.pay_employees
new_payroll.notify_employee(josh)
