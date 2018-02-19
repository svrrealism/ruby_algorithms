def smallest(arr)
  #Purpose: returns the index of the smallest number in an array.

  #pin down on the first element as an assumption that it is the minimum
  min = arr[0]
  #capture the first element's index at 0 since all arrays begin at 0 index
  min_index = 0

  #We can can kill two birds with one stone by doing the following:
    # 1). iterate over the array starting at the first element:
          # a). upto but NOT including either the TOTAL SIZE of the array

          # OR

          # b). simply capture the length of the array minus 1.

    # 2). this will also correspond to the amount of the remaining elements that we are iterating through.

  #capture the array size minus one because the upto function INCLUDES the array size (we are using option 'b')
  n = arr.size - 1

  1.upto(n) do |i|
    if arr[i] < min
      min = arr[i]
      min_index = i
    end
  end

  #fancy
  # 1.upto(n) {|i|}
  return min_index
end

array = [2,4,1,5,3, -3]
p smallest(array)
