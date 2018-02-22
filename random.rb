def recursive_add(arr)
  total = 0
  if !arr.empty?
    i = arr.delete_at(total)
  end
    return i + recursive_add(arr)
end


arr = [1,2,3]

p recursive_add(arr)

#Take number from the array, add it total.
