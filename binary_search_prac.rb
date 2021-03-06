#get our datasets
require './data_sets'

# What helps me mentally in binary search is to not subsitute real values,
# but is this because  used to and now think more abstractly?

#Binary search - returns the sought out item's position in an array
def binary_search_integers(sorted_array, value)
  low = 0
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

# THIS IS NOT COMPLETE, MUST FINISH

def binary_search_strings(sorted_array, value)
  low = 0
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

#this should return the position of 6
p binary_search_integers(SORTED_I, 7)
#this should return the position of 25
# p binary_search_strings(SORTED_S, "Zelda Zebra")

#repetition with right and left versa high and low
# WE ALWAYS WANT TO RETURN THE POSITION THAT THE VALUE SEARCHED FOR IS AT!!!
def b_s(sorted_arr, value)
    left = 0
    right = sorted_arr.length - 1

    while left <= right
      #specify the middle of the array, if you get a decimal, it is automatically rounded down
      mid = (left+right)/2

      # So now we are saying that we have:
        # beginning of array
        # end of the array,
        # middle of the array
        # value to check between either the right or left side

      #compare the value of the position is currently at with the supplied value

      #return the position that the value is at if the evaluation of mid in the array is equal
      if sorted_arr[mid] == value
        #return the position of value
        return mid
      end
      # if the evalution turns out to be less than the value...
      if sorted_arr[mid] < value
        # since we know the evaluation on the left side is less than the value,
        # set left to current mid plus one to converge towards the right
        # do this so that you are pinching the value you are looking for.
        # think of it as pinching the array.
        # as a result of this analogy, I came up with this other strange analogy:
        # or think of it as your brain implementing an algorithm in spacetime where you
        # you are pinching in spacetime for an object, where once you have grasp, the message is
        # returned back to your brain telling you the value in space time was found and you calculate further.
        left = mid + 1

      # notice how we don't even have to set the conditional of arr[mid] > value...we can just:
      else
        # since the last element (right) is less than the evalution of arr[mid],
        # we readjust the right to be less
        right = mid - 1
      end
    end
  return nil
end

puts b_s(SORTED_I, 9)
