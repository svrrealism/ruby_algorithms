def longest_string(arr)
  current = arr[0].length
  result = ""
  arr.each { |x| result = x if x.length > current }
  return result
end



arr = %w(cat mule ewrrewewewreewwerwrewwe ooooereoeffefe ewrrewewewreewwerwrewwes)

puts longest_string(arr)
