class Student
  attr_accessor :name , :last_name , :age, :id_number,:age_odd
  def initialize(name , last_name , age, id_number)
    @name=name
    @last_name=last_name
    @age=age
    @id_number=id_number
  end
  def age_odd
    age.odd?
  end
end

a1=Student.new("sandro", "davadze",25,23452546)
a2=Student.new("sandro", "davadze",25,23452546)
a3=Student.new("sandro", "davadze",25,23452546)
arr=[a1,a2,a3]
array=[1,2,3,4,5,6]
array.sum

def print1
  k = ""
  (0..27).each  do |i|
    if i % 7 == 0 && i > 0
      k += "\n"
    end
    if i.even?
      k += "*"
    else
      k += " "
    end
  end
  puts k
end

print1

def print2
  for i in 0..12
    j = i % 9
    if j < 4
      puts ' ' * j + '*'
    elsif j > 4

      puts ' ' * (-j % 4) + '*'
    end
  end
end

print2


def power
  (1..50).each { |i|  puts  i*i if i.even? }
end
power

def sum_arr(arr)
  sum = 0
  arr.each { |i| sum+=i}
  return sum
end

b=[2,4,5,6,7,21,4,6]

def array_sum_to_n(arr,n)
  arr.each do |x|
    return puts true if arr.include?(n - x) && arr.count(x) < 2 && x != n-x
    return puts true if arr.include?(n - x) && arr.count(x) > 1 && x == n-x
  end
end

array_sum_to_n(b,8)

def hash_has_key(hash,kay)
  puts hash[kay]!= nil
end

a = {
  :a => '1',
  :b => '2'
}

for key,value in a
  a[key] = value.to_i
end
puts a

def array_to_hash(arr)
  hash = {}
  arr.each_with_index{|(k,v) , i| hash[k] = i }
end
