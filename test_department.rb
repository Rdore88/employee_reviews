require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/focus'
require_relative 'department'
require_relative 'employee'
require 'pry'
class DepartmentTest < Minitest::Test
  def new_employee
    @new_employee = Employee.new("Robby Dore", "Rdore88@gmail.com", "404-277-3952", 60000)
  end

  def software_development
    unless @software_development
      @software_development = Department.new
    else
      @software_development
    end
  end

  def test_department_exists
    assert Department
  end

  def test_add_employee
    software_development.add_employee(new_employee)
    assert_equal "Robby Dore", software_development.employees[0].name
  end

end
