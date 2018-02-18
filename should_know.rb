#In an array 1-100 exactly one number is duplicate how do you find it?

def binary_search(sorted_array, value)
  low = sorted_array[0]
  high = sorted_array.length - 1

  while low <= high
    mid = (low + high)/2
    guess = sorted_array[mid]

    if guess == value
      return mid
    end

    if guess > value
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return nil
end

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

def selection_sort(arr)
  sorted_array = []

  #we are doing this, the element number of times.
  for i in 1..arr.size
    #THIS IS AN INDEX NOT AN ACTUAL ELEMENT!
    smallest = find_smallest(arr)
    sorted_array << arr.delete_at(smallest)
  end

  return sorted_array
end

def duplicates(arr)
  sorted = selection_sort(arr)

  current = sorted[0]

  for i in 1...sorted.size
    for j in 1..sorted.size - 1
      if current == sorted[binary_search(sorted[j], current)]
        return current
      end
    end
  end
  return nil
#   #stores the current value
#   current = sorted[0]
#   #stores the INDEX of the current value
#   current_index = 0
#
#   result = binary_search(sorted, current)
#
#   #up to but NOT including the size of the array.
#   for i in 1...sorted.size
#
#     if result == nil
#       next
#     end
#
#     if sorted[i] == sorted[result]
#       return "#{current} contains a duplicate."
#     else
#       current = sorted[i]
#       current_index = i
#     end
#   end
#
  return sorted
end

arr1 =* (1..100)
arr1 = arr1.shuffle.push(3)
puts duplicates(arr1)
