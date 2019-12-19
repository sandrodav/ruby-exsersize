class Building
  attr_reader :adress
  def initialize (adr)
    @address = adr
  end
  def to_s
    "Buildinsgs adress is #{@address}"
  end
end

class Room < Building
  def initialize (adr1,num)
    super (adr1)
    @number = num
  end
  def to_s
    "You are in #{@address} at #{@number} room  "
  end
end
a = Room.new("weretlsi 7","402")
puts a
