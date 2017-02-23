require_relative 'employee'

class Department
attr_accessor :employees

  def initialize
    @employees = []
  end

  def add_employee(new_employee)
    self.employees.push(new_employee)
  end

end
