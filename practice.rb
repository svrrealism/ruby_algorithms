#Specify arrays to use multiple times in the script

SORTED_I = [1,2,3,4,5,6,7,8,9,10]
SORTED_S = [
"Annie Alligator",
"Barry Bear",
"Carol Cat",
"Danny Dog",
"Emily Elephant",
"Fernando Firefly",
"Gary Goose",
"Holly Horse",
"Isabel Iguana",
"Jerry Jaguar",
"Karen Kangaroo",
"Lester Lion",
"Mickey Moose",
"Nancy Nightingale",
"Oliver Ostrich",
"Penelope Pig",
"Quentin Quail",
"Rosie Racoon",
"Sally Snake",
"Tina Turtle",
"Underwood Umbrella Bird",
"Vicki Vulture",
"Willy Wolf",
"Oxford Ox",
"Yolanda Yak",
"Zelda Zebra"
]

#Note that calling shuffle! with the exclamation will change the original var contents in place
UNSORTED_I = SORTED_I.shuffle
UNSORTED_S = SORTED_S.shuffle

#Binary search - returns the sought out item's position in an array
def binary_search_integers(sorted_array, value)
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

# THIS IS NOT COMPLETE, MUST FINISH

def binary_search_strings(sorted_array, value)
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

#this should return the position of 6
p binary_search_integers(SORTED_I, 7)
#this should return the position of 25
# p binary_search_strings(SORTED_S, "Zelda Zebra")
