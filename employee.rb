
class Employee
attr_accessor :name, :email_address, :phone_number, :salary, :satisfactory

  def initialize(name, email_address, phone_number, salary, satisfactory = "")
    @name = name
    @email_address = email_address
    @phone_number = phone_number
    @salary = salary
    @satisfactory = satisfactory
  end

  def change_salary(promotion)
    self.salary += promotion
  end

  def update_satisfaction(rating)
    self.satisfactory = rating
  end

end
