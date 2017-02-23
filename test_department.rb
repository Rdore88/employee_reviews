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
    @_jeff ||= Employee.new("Jeff Spies", "JSpies@gmail.com", "845-987-1324", 60000, "Satisfactory")
  end

  def software_development
    @software_development ||= Department.new
  end

  def test_department_exists
    assert Department
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
    #binding.pry
    software_development.give_raises_to_all_good_workers(10000)
    assert_equal 65000, software_development.employees[0].salary
  end

end
