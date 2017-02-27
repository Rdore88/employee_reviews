require_relative 'employee'
require_relative 'department'

employee_database = {}
departments = {}

loop do

puts "What would you like to do? Please choose between employee database, departments or exit."
choice = gets.chomp.downcase
case choice
  when "employee database"
    puts "What would you like to do? Please choose between new employee, display employee info, write review, update satisfaction, give a raise."
    answer = gets.chomp.downcase
    case answer
      when "new employee"
        puts "What is the new employee's full name?"
        name = gets.chomp
        new_employee = name
        puts "What is their email?"
        email = gets.chomp
        puts "What is their phone number?"
        phone = gets.chomp
        puts "What is their starting salary?"
        salary = gets.chomp.to_i
        new_employee = Employee.new(name, email, phone, salary)
        employee_database[name] = new_employee
      when "write review"
        puts "Which employee are you reviewing?"
        employee = gets.chomp
        puts "Please write review here"
        review = gets.chomp
        employee.add_review(review)
        puts "A review has been left for #{employee}"
      when "display employee info"
        puts "Which employee would you like see? Please write their full name."
        employee = gets.chomp
        puts employee_database[employee].name
        puts employee_database[employee].email_address
        puts employee_database[employee].phone_number
        puts employee_database[employee].salary
      when "update satisfaction"
        puts "Which employee would you like to update? Please write full name."
        employee = gets.chomp
        puts "The new satisfaction rating for #{employee} is #{employee_database[employee].update_satisfaction(reviews)}"
      when "give a raise"
        puts "Which employee is getting a raise? Please write full name."
        employee = gets.chomp
        puts "How big is their raise?"
        salary = gets.chomp.to_i
        employee_database[employee].change_salary(salary)
        puts "#{employee} now has a salary of $#{employee_database[employee].salary}"
      else
        puts "Please try again"
      end
  when "departments"
    puts "What would you like to do? Please choose between new department, add employee, display employees, give raise or total payroll."
      answer = gets.chomp.downcase
    case answer
    when "new department"
      puts "what is the name of the department you want to add?"
      department_name = gets.chomp
      departments[department_name] = Department.new(department_name)
    when "add employee"
      puts "Please make sure this employee is in the employee database first."
      puts "What department do you want to add to?"
      department = gets.chomp
      puts "What employee would you like to add to #{department}?"
      employee = gets.chomp
      departments[department].add_employee(employee_database[employee])
      puts "#{employee} has been added to #{department}"
    when "display employees"
      puts "Which department would you like display?"
      department = gets.chomp
      departments[department].display_employees
    when "give raise"
      puts "Which department would you like to give a raise to?"
      department = gets.chomp
      puts "How much would you like to give to the department?"
      money = gets.chomp.to_i
      departments[department].give_raises_to_all_good_workers(money)
      puts "$#{money} has been split between the satisfactory works in #{department}."
    when "total payroll"
      puts "Which department would you like to see the payroll for?"
      department = gets.chomp
      puts departments[department].total_department_payroll
    else
      puts "Please try again"
    end
  when "exit"
    exit
  else
    puts "Please try again"
  end
end
