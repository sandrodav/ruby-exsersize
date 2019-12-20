require 'csv'
a=[]
CSV.foreach('number.csv', headers: true) do |row|
  a << Complex(row["X"],row["Y"])
end
puts a
a.each_with_index do |x,y|
  a[y] = x * Complex(0,1)
end
puts a
