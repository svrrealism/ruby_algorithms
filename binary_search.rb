#takes an array and an item to search for
# RETURNS: the POSITION of that item.

def binary_search(arr, item)
  #assign parts of the array by beginning and end

  #Envoy of the beginning
  left = arr[0]
  #Envoy of the End
  right = arr.length - 1

  # while the item is not found
  # (since you are converging from the changing range, high to low)
  while left <= right
    #set a mid point to be used in the middle of any range created by high & low
    mid = (left + right) / 2

    if arr[mid] == item
      return mid

    elsif arr[mid] > item
      right = mid - 1
    else
      left = mid + 1
    end
  end

  return nil

end
array1 = [1,2,3,4,5,6,7,8,9,10,11]

puts binary_search(array1, 9)

puts """
  Simple Search / Linear Search
    - Has a best case of O(1)
    - Has a worst case of O(n)

  Binary search
    - Has a best case of O(1)
    - Has a worst case of O(log n)

"""
