#get our datasets
require './data_sets'

puts '-'*15
puts "SELECTION SORT"
puts '-'*15
puts "\n\n"


def find_smallest(arr)
  #stores the smallest value
  smallest = arr[0]
  #stores the INDEX of the smallest value
  smallest_index = 0

  #up to but NOT including the size of the array.
  for i in 1...arr.size
    if arr[i] < smallest
      smallest = arr[i]
      smallest_index = i
    end
  end

  #returns the INDEX of the smallest number found in any given array.
  return smallest_index
end
