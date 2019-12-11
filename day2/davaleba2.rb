#pirveli
def find_pal
  d = 0
  (121..999).step(11).each do |i|
      (101..999).each do |j|
          if ( i * j ).to_s == ( i * j ).to_s.reverse
              d = i * j if i * j > d
          end
      end
  end
  return d
end
puts find_pal

#მეორე
def sm_mul(n)
  ans = 1
  (1..n).each do |i|
    ans = (ans * i)/ans.gcd(i)
  end
  puts ans
end
sm_mul(20)

# mesame
def pythagorean
  d=0
  (1..498).each do |a|
    (1..333).each do |b|
      c = 1000 - a - b
      if a ** 2 + b ** 2 == c ** 2
        return d = a * b * c
      end
    end
  end
end
puts pythagorean
