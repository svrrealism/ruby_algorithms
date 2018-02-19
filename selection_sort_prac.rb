#get our datasets
require './data_sets'

puts '-'*15
puts "SELECTION SORT"
puts '-'*15
puts "\n\n"

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

  #we are doing this, the array size of times.
  #since we are deleting from the array, in effect we are doing this loop,
  # the amount of times that the array is morphing
  1.upto(arr.size) do |x|
    #THIS IS AN INDEX NOT AN ACTUAL ELEMENT!
    smallest = find_smallest(arr)
    sorted_array << arr.delete_at(smallest)
  end

  return sorted_array
end

p "#1"

p UN
p selection_sort(UN)
p "And another..."
p UNSORTED_I
p selection_sort(UNSORTED_I)

p "end #1"
puts "\n\n\n"

#Sources for other sorts below: https://gist.github.com/brianstorti/953310

def selection_sort2(array)
  #ex). [5, 3, 6, 2, 10]
  #capture amount of array indices
  n = array.size - 1 # n = 4

  n.times do |i| #loop with an interator of i, 4 times starting from 0. So... 0,1,2,3

    #start at 2nd element in array, going upto the max
    #do an iteration of j, where the second element
    #(i + 1).upto(n) { |j| array[i], array[j] = array[j], array[i] if array[i] > array[j] }

    # the above 4.times combines with the (0+1).upto(4) to recreate iteration starting at the 2nd element (position 1; hence 0+1)
  	(i + 1).upto(n) { |j| #First pass 0+1 upto 4 or 1 upto 4... for 4 TIMES iterate with j, so now j = 1 but we are on element 2
      #1st pass: if the first element array[0] is greater than first pass of j, evaluating to array[1]....
      if array[i] > array[j]

        #this whole line is evaluating to class of array,
          #e.g. array[0], array[1] is actually an operation resulting in an array of combined numbers:
          #[5,3] first pass on the left side
          # We then set this array equal a mini array with the values in a traded/swapped position.

        array[i], array[j] = array[j], array[i]

      #Formula: Loop Construct {|iterator_for_it| }

      # n = array.size - 1

      # "MASTER LOOP": n = 4 for this example

      # First pass: loop over the master loop i times starting with 0; so 0,1,2,3 (4 Times)..ok? Ok.
      # So...since: i = 0
      # we want to use the above range to say (0,1,2,3) or 4 elements ahead of something like:
        # array[0] is 5 so we want to compare operations ahead of it, but we also have to want to use the number of operations
        # to do that comparison, the same number of times.
        # Press a button 4 times, do somthing the same number of times n^2 - some constant to get 4 times for each time pressed once.

     #

      #Second pass:
      # i = 1;
      # (1+1).upto(4) or (2).upto(4) or for 2 elements ahead of element 3; (j = 2; we are on element 3 which is 6


      #then


      end
    }
  end
  array
end

p UN
p selection_sort2(UN)
p "And another..."
p UNSORTED_I
p selection_sort2(UNSORTED_I)


def selection_sort3(arr)
  (arr.size-1).times do |index|
    tmp_item, tmp_index = arr[index], index
      for i in index...arr.size
        tmp_item, tmp_index = arr[i], i if arr[i] < tmp_item
      end
    arr[index], arr[tmp_index] = arr[tmp_index], arr[index]
  end
  arr
end


def selection_sort4(data)
  n = data.count
  0.upto(n - 1) do |i|
    min_idx = i
    (i + 1).upto(n - 1) { |j| min_idx = j if data[j] < data[min_idx] }
    data[i], data[min_idx] = data[min_idx], data[i] # unless min.eql?(i)
  end
end











#Task: write our known way of doing selection sort and then refactor.

# So far we know that we use two methods to achive this.

# The final goal is to use only one.

#Does: Returns the index of the smallest number in the array, adds to a new array.
def selction_sortv2(arr)
  #Example array: [5,3,6,2,10]

  #initialize an array to add sorted items
  sorted = []

  # do this array size times in terms of i
  1.upto(arr.size) do |i|
    #Since we are returning an index, we have to capture it somehow
    tmp = arr[0]

    #next, we want check if any of the other numbers are less than this one
    # if they are, we swap that number for lesser one. We keep doing this.
    #capture total amount of indices
    n = arr.size - 1
    #from the range of all the indices after the first, tmp...
    (1).upto(n) do |x|
      if tmp > arr[x]
        tmp = arr[x]
        sorted << arr.delete_at(arr[tmp])
      end
    end
  end
  return sorted
end

p "cool"
p selction_sortv2(UN)
