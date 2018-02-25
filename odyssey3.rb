#Write Binary Search
def binary_search(sorted, value)
  low = 0
  high = sorted.length - 1

  while low <= high
    mid = (low + high)/ 2

    if sorted[mid] == value
      return mid
    elsif sorted[mid] < value
      low = mid + 1
    else
      high = mid - 1
    end
  end
  return nil
end

arr = [10,20,30]

p binary_search(arr, 10)


#write selection sort

def smallest(arr)

  tmp = arr[0]
  tmp_index = 0

  1.upto(arr.size - 1) do |i|
    if arr[i] < tmp
      tmp = arr[i]
      tmp_index = i
    end
  end
  return tmp_index
end

def selection_sort(arr)
  new_arr = []

  1.upto(arr.size) do |i|
    small = smallest(arr)
    new_arr.push(arr.delete_at(small))
  end

  return new_arr
end

arr2 = [2,3,4,5,6,62,34,5,25,633,2,5]

p selection_sort(arr2)

#Write factorial
def factorial(n)
  if n == 1
    return 1
  else
    return n * factorial(n-1)
  end
end

p factorial(5)
