#write binary search 3 times


def binary_search(sorted_array, value)
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


def b_search(sorted_array, value)
  left = 0
  right = sorted_array.length - 1

  while left <= right
    mid = (right+left)/2
    guess = sorted_array[mid]

    if guess == value
      return mid
    end

    if guess < value
      left = mid + 1
    else
      right = mid - 1
    end
  end

  return nil
end



def bin_search(sorted_collection, value)
  low = 0
  high = sorted_collection.length - 1

  while low <= high
    mid = (low + high)/2

    if sorted_collection[mid] == value
      return mid
    elsif sorted_collection[mid] < value
      low = mid + 1
    else
      high = mid - 1
    end
  end

  return nil
end

gigs = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192]

p binary_search(gigs, 256)
p b_search(gigs, 512)
p bin_search(gigs, 128)


##########################################

#Write Selection Sort Algorithm 3 times.


def smallest(arr)
  tmp = arr[0]
  tmp_index = 0

  1.upto(arr.size-1) do |i|
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
    smallest_number = smallest(arr)
    new_arr.push(arr.delete_at(smallest_number))
  end
  return new_arr
end

def find_small_int(arr)
  tmp = arr[0]
  tmp_index = 0

  1.upto(arr.size-1) do |i|
    if arr[i] < tmp
      tmp = arr[i]
      tmp_index = i
    end
  end
  return tmp_index
end


def selecty_sort(arr)
  new_arr = []

  (arr.size).times do |i|
    smallest_int = find_small_int(arr)
    new_arr.push(arr.delete_at(smallest_int))
  end

  return new_arr
end


def get_smallest(arr)
  tmp = arr[0]
  tmp_index = 0

  1.upto(arr.size-1) do |i|
    if arr[i] < tmp
      tmp = arr[i]
      tmp_index = i
    end
  end
  return tmp_index
end

def selecty_sorty(arr)
  new_arr = []

  n = arr.size
  n.times do |i|
    smallest_integer = get_smallest(arr)
    new_arr.push(arr.delete_at(smallest_integer))
  end
  return new_arr
end

blah = gigs.shuffle()
blah2 = gigs.shuffle()
blah3 = gigs.shuffle()

p blah
p blah2
p blah3

p selection_sort(blah)
p selecty_sort(blah2)
p selecty_sorty(blah3)
