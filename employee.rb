
class Employee
attr_accessor :name, :email_address, :phone_number, :salary, :satisfactory

  def initialize(name, email_address, phone_number, salary, satisfactory = "")
    @name = name
    @email_address = email_address
    @phone_number = phone_number
    @salary = salary
  end

  def change_salary(promotion)
    self.salary += promotion
  end

end
