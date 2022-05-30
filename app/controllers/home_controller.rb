class HomeController < ApplicationController
  def initialize
    super
    employee = Employee.new
    employee.set_name('Learning Ruby on Rails')
    p employee.get_name
  end
  def home_page
  end
end
# Learning Ruby on Rails
class Person
  def set_name(name)
    @name = name
  end
end
class Person
  def get_name
    @name
  end
end
class Employee
  delegate :set_name, :get_name, to: :@person
  def initialize
    @person = Person.new
  end
end