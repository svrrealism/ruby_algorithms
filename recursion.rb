puts """

Enter Recursion...


Note: It's also helpful to step through recursion with pen and paper as pseudocode.

Pseudocode is a high level description of the problem you are trying to solve in code.
It's written like code but meant be written like human speech.

In the case of factorial:

  'I pass 5 into factorial, then I return 5 times passing 4 into factorial,
   which returns 4 times 3 passed into factorial, which results in 3 times
   2 passed into factorial, which returns 2 times 1 passed into factorial,
   which returns 1.'




So... about Recursion...

It's the year 2300.

You are digging in a friend's garage and you find an old, mysterious, and locked safe.

Your friend tells you that the keycode for this safe is probably in another box.

And in this main box, it contains more boxes(nested boxes). The key is in a box somewhere....

What's an algorithm to search for the key?

Seems obvious to do a linear O(n) search over each box that we see... no?

Or maybe:

Knowing that the key is somewhere in this one, main box:

  1). Make a pile of boxes to look through (get all of the boxes in the box)

  2). Grab a box and look through it

  3). If you find a box add it to the pile and look through it later.

  4). If you find a key in the box you've grabbed, you're done!!!

  5). Repeat


Or alternatively:

  1). Look through the box
  2). If you find a box, do what you did in step 1.
  3). If you find a key, you're done.



Method 1 proposes:

  def find_safe_key(main_box)
    pile = main_box.make_pile_to_search_through()

    while pile.empty?
      box = pile.grab_box_from_pile()
      box.each do |item|
        if item.is_another_box?
          pile.push(item)
        else
          if item.is_safe_key?
            return 'found key'
          end
        end
      end
    end
  end

  Method 2: Proposes recursion

    def find_safe_key(main_box)
      for i in main_box
        if i.is_box?
          find_safe_key(i)
        elsif i.is_key?
          return 'key found!'
        else
          return nil
        end
      end
    end


Loops: may achieve a performance gain for your program
Recursion: may achieve a performance gain for your programmer.

Always choose within the right context.


In every recursive program there is:
  - Base case
  - Recursive case

Consider the following infinite loop:

def infinite(n)
  print n
  infinite(n-1)
end

The above prints the result of n-1 recursively, infinitely. There is no point in which the recursive case will end.

To correct this:

def no_longer_infinite(n)

  print n
  if n <= 0
    return n
  else
    no_longer_infinite(n-1)
  end
end

Recursion is used when it makes the solution clearer.


---------------------
Introducing the Stack
---------------------
Our computers use a stack called the 'call stack'

The CALL STACK is important to programming and recursion.

Suppose you host a party and you keep a todo list in the form of a stack of index cards.

Recall that in arrays we can insert and delete randomly.

In Stacks
  - Insertions = only get put onto the top of the stack (PUSH)
  - Reading = will always be the topmost item AND it's taken off of the list to read (POP)

For example, a stack could be to get:

Burgers  <---- Top of the stack.
Buns
Plates
Beer
More Beer

implementation in code could look similar to:

get_party_stuff = ['More Beer', 'Beer', 'Plates', 'Buns', 'Burgers']


This data structure is called a stack.

Have been using a stack the whole time.


HOW CALL STACK WORKS
--------------------

Let's analyze the above function again albeit slightly modified:

    def no_longer_infinite(n)
      num = n
      print num

      if num <= 0
        return num
      else
        no_longer_infinite(num-1)
      end
    end


1). Say we call no_longer_infinite(2) = 2
2). num gets set to 2, which is allocated in memory
3). But then no_longer_infinite(2-1) = 1 is called which gets put on top of the stack in memory

When you call a function with a function, the main function is paused in a partially completed state.

So the stack looks like:

1 <- Top of the stack (recursive case)
2 <- Base case

implemented in pseudocode:

[2,1]



--------------------------------------------------------------------------------------------------------
IMPORTANT:
*** We've effectively saved variables from the calls of different functions. This is the call stack. ***
---------------------------------------------------------------------------------------------------------


Exercise 3.1

Suppose there exists a stack:

-------------
hello_world2
name: 'alice'
-------------
hello_world
name: 'alice'
-------------

Q: What information can be given based on the above?

A: Rationalization:
    - The hello_world function is the main function returning a var into a call stack in memory

    - The hello_world2 function executed and placed a var of name into call stack in memory but
      at the top of the stack

    - the calling of these functions create a stack in which the total of variable values of
      differing scopes is populated with.





-------------------------
CALL STACK WITH RECURSION
-------------------------

Take factorial for instance...

For any number n, it's factorial, n! = n * n-1 * n-2 * ... * 2 * 1

def factorial(n)
  if n == 1
    return 1
  else
    return n * factorial(n-1)
  end
end

Say we call factorial(3)

Line by line:

  - The top most box in the stack tells us what call to factorial we are currently on.

  CODE                          CALL STACK

factorial(3)                    factorial(3) | n = 3  <--- First call to factorial, n = 3

if n == 1                       factorial(3) | n = 3

return 1                        factorial(3) | n = 1; program exits, returns the value 1 if this condition is true.

else                            factorial(3) | n = 3; still in the base case of the factorial function.

return n * factorial(n-1)       factorial(2) | n = 2; recursive call (recursive case)
                                factorial(3) | n = 3; base case

                                  NOTE: You cannot access factorial(2)'s n-var from the base case or any other case.


------------------------------- Now in factorial(2) call ----------------------------------------

if n == 1                       factorial(2) | n = 2

return 1                        factorial(2) | n = 1; program exits, returns a value of 1 if this condition is true.

else                            factorial(2) | n = 2

return n * factorial(n-1)       factorial(1) | n = 1; recursive call (recursive case)
                                factorial(2) | n = 2; recursive call (recursive case)
                                factorial(3) | n = 3; base case

                                NOTE: Again you cannot access any of the factorial calls' n-vars through each other.
                                      ex). factorial(2)'s as a function has no access to what factorial(1) returns


------------------------------- Now in factorial(1) call ----------------------------------------

if n == 1                       factorial(1) | n = 1

return 1                        factorial(1) | n = 1; program will now terminate, returning a value of 1 since n = 1


REMEMBER: We INITIATED three 'calls'

BUT...we never COMPLETED an actual call until factorial(1)

STACK
-----
factorial(1)  <-- This gets popped off of the stack first, which means it's the first call we return from.
factorial(2)
factorial(3)


So 1 gets returned FIRST.


There's a cost to having a stack with recursion...takes up a lot of memory since you are returning all these values.

If your program's stack grows too big, there are 2 options:

  - Rewrite code to use a loop instead.

  - Use something called TAIL RECURSION...only supported by some languages. Advanced.


EXERCISE 3.2

Suppose a recursive function is written that runs forever.
Computers allocate memory for the base and recursive cases.

Q: What happens to the stack when the function runs forever?
A: It keeps growing, taking up more address space.


RECAP

- Recursion is when a function calls itself.

- Every recursive function has two cases:
  1. Base case
  2. Recursive case

- Stack has two operations:
  1. Push
  2. Pop

- All functions go onto the call stack

- The call stack can get ginormous, which gobbles up tons and tons of memory

"""
