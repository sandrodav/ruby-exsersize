min_palindrom = 10001
max_palindrom = 997799
$min_pattern = 100
$max_pattern = 999

def palindroms_from_pattern(pattern)
    pattern_str = pattern.to_s
    [ pattern_str + pattern_str.reverse, pattern_str + pattern_str.reverse[1..-1] ]
        .map {|item| item.to_i}
end

def exist_multiple?(palindrome)
    root = Math.sqrt(palindrome).to_i
    return false if root > $max_pattern
    root.downto($min_pattern) do |item|
        return false if palindrome / item > $max_pattern
        return true if palindrome % item == 0
    end
    false
end

range_five = []
range_six = []
$max_pattern.downto($min_pattern) do |pattern|
    palindroms = palindroms_from_pattern(pattern)
    range_six << palindroms[0]
    range_five << palindroms[1]
end
palindrom_arr = range_six + range_five
result = nil
palindrom_arr.each do |pal|
  if exist_multiple?(pal)
    result = pal
    break
  end
end
p result
