require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade, :id

  def initialize(name, grade)
    @name = name
    @grade = grade
    @id = nil
  end
end
