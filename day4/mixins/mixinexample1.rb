module Getarea
  def putsarea
    puts "Area is #{self.area}"
  end
end

class Square
  include Getarea
  def initialize (length)
    @length = length
  end

  def area
    @length * @length
  end
end

class Reqctangle
  include Getarea
  def initialize ( length , width)
    @length = length
    @width = width
  end

  def area
    @length * @width
  end
end
sq = Square.new 4
rec = Reqctangle.new 3,5
sq.putsarea
rec.putsarea
