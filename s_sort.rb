#this is a way of implementing selection sort with recursion
#start by specifying a function that finds the smallest number in an array
#then in the selection sort function iterate over the array, array size number of times
#calling the find_smallest_index function recursively, capturing the returned value to an index.
#Then popping the element out of the original supplied array by index
#The result being, a new array is populated and returned

def find_smallest_index(arr)
  #purpose: returns the index of the smallest number in an array
  min = arr[0]
  min_index = 0

  1.upto(arr.size - 1) do |i|
    if arr[i] < min
      min = arr[i]
      min_index = i
    end
  end

  return min_index
end

def selection_sort(arr)
  #Purpose: takes an unsorted array and returns a new array that is the sorted version
  new_arr = []

  1.upto(arr.size) do |i|
    smallest = find_smallest_index(arr)
    new_arr.push(arr.delete_at(smallest))
  end

  return new_arr
end



array = [2,4,1,5,3]
p selection_sort(array)
