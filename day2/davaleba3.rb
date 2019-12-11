#pirveli
def pr_arr1(arr)
  arr.each { |i| puts i }
end
a = [1,2,3,4,5,6,7,8,9,10]
pr_arr1(a)
#meore
def pr_arr2(arr)
  arr.each { |i| puts i if i > 5 }
end
pr_arr2(a)
#mesame
def odd_arr(arr)
  b=[]
  arr.each { |i| b.append(i) if i.odd? }
  b
end
#meotxe
def add_el(arr)
  arr.append(11)
  arr.unshift(0)
end
#mexute
def get_rid(arr)
  d = a.index(11)
  a.delete(11)
  a.insert(d,3)
end
#meeqvse
def del_dub(arr)
  require 'set'
  a = a.to_set
  a = a.to_a
end
#meshvide
def start_s(arr)
  b=[]
  arr.each do |x|
    if x.start_with?('s')
      b.append(x)
    end
  end
  arr = arr.delete_if { |x| x.start_with?('s')}
  return b
end
#merve
def str_back(str)
  a=str.split(",")
  a.pop()
  a.shift()
  str=a.join(",")
end
#mecxre
def with_these_numbers(val1, val2)
  yield val1, val2
end
with_these_numbers(1,4) do |first,second|
  puts first+second
end
with_these_numbers(3,6) do |first,second|
  puts first*second
end
with_these_numbers(12,3) do |first,second|
  puts first/second
end
#meate
class Rectangle
  attr_reader :width, :height

  def width=(value)
    if value < 0
      raise "Width can't be negative!"
    end
    @width = value
  end

  def height=(value)
    if value < 0
      raise "Height can't be negative!"
    end
    @height = value
  end

private
  def area
    width * height
  end
end

class Square < Rectangle
  def width=(value)
    if value < 0
      raise "Width can't be negative!"
    end
    @width = @height = value
  end
  def height=(value)
    if value < 0
      raise "Height can't be negative!"
    end
    @height = @width = value
  end

  def s_area
    area
  end

end
