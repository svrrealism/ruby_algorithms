def factorial(n)
  if n == 1
    return 1
  else
    return n * factorial(n-1)
  end
end

p factorial(1)
p factorial(2)
p factorial(3)
p factorial(4)
p factorial(5)
