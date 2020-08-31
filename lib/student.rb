require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade, :id

  def initialize(name, grade)
    @name = name
    @grade = grade
    @id = nil
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER
    );
    SQL
   DB[:conn].execute(sql)
  end
  def self.drop_table
  end
  def save
    sql = <<-SQL
      INSERT INTO students (name, grade) VALUES
      (?, ?)
      SQL
      DB[:conn].execute(sql, self.name, self.grade)
  end
end
