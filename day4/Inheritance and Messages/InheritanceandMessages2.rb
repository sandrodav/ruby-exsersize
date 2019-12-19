class Country
  attr_reader :countryname
  def initialize (country)
    @countryname = country
  end
  def wich_class
    puts "this is #{self}"
  end
end

class City < Country
  def initialize (coname ,city )
    super (coname)
    @cityname = city
  end
  def say_hello
    puts "Hello  from #{@countryname} , #{@cityname} "
  end
  def wich_class
    puts "This is #{self}"
  end
end

a = Country.new ("Usa")
a.wich_class
b = City.new("Georgia","Tbilisi")
b.say_hello
b.wich_class
