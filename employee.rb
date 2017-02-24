
class Employee
attr_accessor :name, :email_address, :phone_number, :salary, :satisfactory, :reviews  # => nil

  def initialize(name, email_address, phone_number, salary, satisfactory = "Satisfactory")
    @name = name
    @email_address = email_address
    @phone_number = phone_number
    @salary = salary
    @satisfactory = satisfactory
    @reviews = []
  end                                                                                       # => :initialize

  def change_salary(promotion)
    self.salary += promotion
  end                           # => :change_salary

  def update_satisfaction(reviews)
    satisfaction = self.reviews.each do |rev|
      /great|well|satisfactory|huge asset|impressed/.match(rev)
    end
    if satisfaction
      self.satisfactory = "Satisfactory"
    else
      self.satisfactory = "Unsatisfactory"
    end
  end                                                            # => :update_satisfaction

  def add_review(words)
    self.reviews.push(words)
  end                         # => :add_review

end  # => :add_review
