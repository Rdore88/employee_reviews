require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/focus'
require_relative 'employee'

class EmployeeTest < Minitest::Test
attr_accessor :new_employee
  def new_employee
    unless @new_employee
      @new_employee = Employee.new("Robby Dore", "Rdore88@gmail.com", "404-277-3952", 60000)
    else
      @new_employee
    end
  end

  def test_employee_exists
    assert Employee
  end

  def test_new_employee
  assert_equal 60000, new_employee.salary
  end

  def test_change_salary
    new_employee.change_salary(5000)
    assert_equal 65000, new_employee.salary
  end

  def test_satisfaction

  end

end
