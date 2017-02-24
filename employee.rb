
class Employee
attr_accessor :name, :email_address, :phone_number, :salary, :satisfactory, :reviews

  def initialize(name, email_address, phone_number, salary, satisfactory = "Satisfactory")
    @name = name
    @email_address = email_address
    @phone_number = phone_number
    @salary = salary
    @satisfactory = satisfactory
    @reviews = []
  end

  def change_salary(promotion)
    self.salary += promotion
  end

  def update_satisfaction(rating)
    self.satisfactory = rating
  end

  def add_review(words)
    self.reviews.push(words)
  end

end
