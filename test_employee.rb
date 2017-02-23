require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/focus'
require_relative 'employee'

class EmployeeTest < Minitest::Test

  def test_employee_exists
    assert Employee
  end

  def test_new_employee
  new_employee = Employee.new("Robby Dore", "Rdore88@gmail.com", "404-277-3952", 60000)
  assert_equal 60000, new_employee.salary
  end

end
