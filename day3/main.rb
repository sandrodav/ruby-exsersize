require_relative 'sandrodavadze'


reader=Csvreader.new
ARGV.each do |filename|
  STDERR.puts "Processing #{filename}"
  reader.read_in_csv_data(filename)
end
ARGV.clear
reader.write_in_csv_data
h2 = reader.students_gpa
value = gets.chomp
reader.students.each do |x|
  if x.name == value
    puts x.dept
  end
end
puts reader.total_debt_in_data
p h2
CSV.foreach('studentsname.csv', headers: true) do |row|
  puts h2[row["NAME"]]
end
