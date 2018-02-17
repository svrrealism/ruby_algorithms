#get our datasets
require './data_sets'

puts '-'*15
puts "SELECTION SORT"
puts '-'*15
puts "\n\n"

#This r
def find_smallest(arr)
  #stores the smallest value
  smallest = arr[0]
  #stores the INDEX of the smallest value
  smallest_index = 0

  for i in 1...arr.size
    if arr[i] < smallest
      smallest = arr[i]
      smallest_index = i
    end
  end

  #returns the INDEX of the smallest number found in any given array.
  return smallest_index
end

# def selection_sort(arr)
#   new_arr = []
#   puts "Before", arr
#
#   # for i in 1...arr.size
#   #   smallest = find_smallest(arr)
#   #   new_arr.push(arr.pop(smallest))
#   # end
#   puts "N-1", arr, find_smallest(arr)
#   puts "N-2", arr, find_smallest(arr)
#   puts "The rest", arr
#
#   return new_arr
# end
#
# puts selection_sort([5,3,6,2,10])
