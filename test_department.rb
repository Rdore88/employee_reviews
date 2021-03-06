require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/focus'
require_relative 'department'
require_relative 'employee'
require 'pry'
class DepartmentTest < Minitest::Test
  def robby
    @_robby ||= Employee.new("Robby Dore", "Rdore88@gmail.com", "404-277-3952", 60000)
  end

  def jeff
    @_jeff ||= Employee.new("Jeff Spies", "JSpies@gmail.com", "845-987-1324", 60000, "Unsatisfactory")
  end

  def software_development
    @_software_development ||= Department.new("Software Development")
  end

  def test_department_exists
    assert Department
  end

  def test_department_name
    assert_equal "Software Development", software_development.name
  end

  def test_add_employee
    software_development.add_employee(robby)
    software_development.add_employee(jeff)
    assert_equal "Robby Dore", software_development.employees[0].name
  end

  def test_give_raises_to_all_good_workers
    software_development.add_employee(robby)
    software_development.add_employee(jeff)
    robby.update_satisfaction("Satisfactory")
    software_development.give_raises_to_all_good_workers(10000)
    assert_equal 70000, software_development.employees[0].salary
  end

  def test_total_department_payroll
    software_development.add_employee(robby)
    software_development.add_employee(jeff)
    assert_equal 120000, software_development.total_department_payroll
  end

end
