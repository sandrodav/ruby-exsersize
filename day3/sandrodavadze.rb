require 'csv'
require_relative 'students_data'

class Csvreader
  attr_accessor :students
  def initialize
    @students = []
  end
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @students << Student.new(row["NAME"], row["LAST_NAME"],row["GPA"],row["DEPT"])
    end
  end

  def total_debt_in_data
    sum = 0
    @students.each do |x|
      sum += x.dept.to_i
    end
    sum
  end

  def student_dept
    hash1 = {}
    @students.each do |x|
      hash1[x.name + x.lname] = x.dept
    end
    hash1
  end

  def students_gpa
    hash2 = {}
    @students.each do |x|
      hash2[x.name + x.lname] = x.gpa
    end
    hash2
  end

  def write_in_csv_data
    CSV.open("studentsname.csv", "wb") do |csv|
      csv << ["NAME"]
    end
    @students.each do |x|
      CSV.open("studentsname.csv", "a+") do |csv|
        csv << ["#{x.name}#{x.lname}"]
      end
    end
  end

  def read_csv_names
    arr = []
    CSV.foreach('studentsname.csv', headers: true) do |row|
      arr << row["NAME"]
    end
    arr
  end

end
