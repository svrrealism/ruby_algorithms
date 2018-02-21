#write binary search

def binary_search(sorted_array, value)
  low = 0
  high = sorted_array.size - 1

  while low <= high
    mid = (low + high)/2
    if sorted_array[mid] == value
      return mid
    elsif sorted_array[mid] < value
      low = mid + 1
    else
      high = mid - 1
    end
  end
  return nil
end

array = [10,23,34,41,54,66]

# Should return 3
p binary_search(array, 10)


#write selection sort
def smallest_integer(array)
  tmp = array[0]
  tmp_index = 0
  #starting from the second element up to the last, make comparisons
  1.upto(array.size - 1) do |i|
    if array[i] < tmp
      tmp = array[i]
      tmp_index = i
    end
  end
  return tmp_index
end

def selection_sort(array)
  result = []

  1.upto(array.size) do |i|
    small = smallest_integer(array)
    result.push(array.delete_at(small))
  end

  return result
end

array2 = array.shuffle
p selection_sort(array2)


#write the factorial algorithm
def factorial(n)
  if n == 1
    return 1
  else
    return n * factorial(n-1)
  end
end

number = 5
p factorial(number)
