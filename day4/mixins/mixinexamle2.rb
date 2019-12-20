class Point

  include Comparable
  def initialize(x,y)
    @x = x
    @y = y
  end
  def radius
    Math.sqrt(@x * @x + @y * @y)
  end
  def to_s
    "#{self.radius}"
  end
  def <=>(other)
    self.radius <=> other.radius
  end
end
p1 = Point.new(3,4)
p2 = Point.new(-3,4)
p3 = Point.new(1,2)
p4 = Point.new(5,12)
if p1 > p3
  puts "p1 ufro shorsaa vidre p3"
end
puts [p1,p2,p3,p4].sort
