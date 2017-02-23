
class Employee
attr_accessor :name, :email_address, :phone_number, :salary

  def initialize(name, email_address, phone_number, salary)
    @name = name
    @email_address = email_address
    @phone_number = phone_number
    @salary = salary
  end

end
