b = {
  2 => 1,
 }
l=b.length
def check_num(n,x)
  x.each do |(k,v),i|
    return false if n % k == 0
  end
end
(2..20).each do |x|
  if check_num(x,b)
    b[x]=1
  end
end
puts b
def degrees (a)
  i=1
  while a ** i < 20
    i += 1
  end
  j=i-1
end
def deg_count(x)
  x.each do |(k,v),i|
    x[k]=degrees(k)
  end
end
deg_count(b)
puts b
def multiple(x)
  m = 1
  x.each do |(k,v),i|
    m *= k ** i
  end
  m
end
puts multiple (b)
