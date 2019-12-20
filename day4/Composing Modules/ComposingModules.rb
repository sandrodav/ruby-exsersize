module Odd
  include Enumerable
  def Oddeach
    self.number.scan(/[13579]/) do |odd|
      yield odd
    end
  end
end
module Even
  include Enumerable
  def Eveneach
    self.number.scan(/[02468]/) do |even|
      yield even
    end
  end
end
class Number
  attr_reader :number
  include Odd , Even
  def initialize (num)
    @number =num.to_s
  end
  def even_in_num
    b = 0
    self.Eveneach do |x|
      b += x.to_i
    end
    b
  end
  def odd_in_num
    b = 0
    self.Oddeach do |x|
      b += x.to_i
    end
    b
  end
  def check11
     if self.odd_in_num == self.even_in_num
       true
   else
     false
   end
  end
end
a = Number.new 12216473447233
b =a.even_in_num
c =a.odd_in_num
puts b ,c
p a.check11
