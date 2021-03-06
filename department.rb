require_relative 'employee'

class Department
attr_accessor :employees, :name

  def initialize(name)
    @employees = []
    @name = name
  end

  def add_employee(new_employee)
    self.employees.push(new_employee)
  end

  def give_raises_to_all_good_workers(total_amount_to_give)
    employees_for_raises = self.employees.select do |em|
      em.satisfactory == "Satisfactory"
    end
    amount_each = total_amount_to_give/employees_for_raises.length
    employees_for_raises.each do |x|
      x.change_salary(amount_each)
    end
  end

  def total_department_payroll
    total = 0
    self.employees.each {|em| total += em.salary}
    total
  end

end
