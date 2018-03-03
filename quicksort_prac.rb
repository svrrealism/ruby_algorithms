#divide the array up by
#1. the pivot,
#2. all numbers < pivot
#3. all numbers > than pivot

def quicksort(arr)
  if arr.size < 2
    return arr
  else
    pivot = arr[0]
    low_array = []
    high_array = []

    #pop out the low and high numbers into subarrays
    1.upto(arr.size-1) do |i|
       if pivot < arr[i]
        high_array.push(arr[i])
      else pivot > arr[i]
        low_array.push(arr[i])
      end
    end
  end
  #if the 1st number is greater than the second number,
  # swap position in the arrays of each low, high
  new_arr = [low_array, pivot, high_array]



  return "High = #{high_array} and Low = #{low_array}"
end


array = [3,3,4,2,5,97,82,4,1]
arr = [2,1]

puts quicksort(array)
puts quicksort(arr)
