puts """

QUICKSORT - elegant sorting algorithm that's used in practice.

New skill to apply to problems; a recursive technique called:

  DIVIDE AND CONQUER (D&C)



First thing we should ask when 'stumped' is...

---> 'can I use divide and conquer?'

Quicksort is much faster than selection sort


Three examples of Divide and Conquer:

  1). Suppose we are farmers with land.


  PROBLEM: We want to:
          1). Divide this land into even, square plots,
          2). They should be as big as possible.

  TRANSLATED QUESTION: What is the maximum amount and largest size of even square plots of the
                       that can be created from an input of an originating
                       land plot size of: 1680 width * 640 height ?

  PROBLEM VISUALLY:


  Land plot given:

                                    1680 meters
  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  640 meters
  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


  Solutions that will NOT work for us are boxes that:
    - Are not square
    - Too small
    - Are not the same size

  Meta question:
    How do you figure out the largest square size you can use for a plot of land?

    Using Divide and Conquer (DC algorithms are RECURSIVE):
      1). Figure out the base case, the simplest case.
      2). Divide or decrease your problem until it is the base case.


    So we know that the easiest case would be if one side were a multiple of the other side.

    For example:

            50m
    * * * * * * * * * *
    * * * * * * * * * *
    * * * * * * * * * * 25m
    * * * * * * * * * *
    * * * * * * * * * *

            then...

                   25m
    * * * * * | * * * * *
    * * * * * | * * * * *
    * * * * * | * * * * * 25m
    * * * * * | * * * * *
    * * * * * | * * * * *

  Essentially the question is: Figure the base case of a box size that we want, then extend this across logic to
  the patch of land which will tell us how many boxes we will need to recreate it.

   Base Case:
    - So if you have a 50 x 25 patch of land, then the largest box you could use is 25 x 25.
    - Two of these boxes are required to divide up the land.

  Now to figure out the recursive case using DC....

    Recursive Case:
      - With every recurse or recursive call, the problem must be reduced.
      - Can reduce the problem above (1680 x 640) by marking out the biggest possible boxes that can be used
      - See how many 640 x 640 boxes can be made. Then we can deal with the remainder

      Not to scale... at all.

              640                  640                400
      * * * * * * * * * * | * * * * * * * * * * | * * * * * *
      * * * * * * * * * * | * * * * * * * * * * | * * * * * *
640   * * * * * * * * * * | * * * * * * * * * * | * * * * * *
      * * * * * * * * * * | * * * * * * * * * * | * * * * * *
      * * * * * * * * * * | * * * * * * * * * * | * * * * * *


    We can fit up to 2x 640m squares with some land left over to be divided, the 400 plot of land.
    What if we used the same algorithm of finding how many boxes can be made, again, recursively?

        400
    * * * * * *
    * * * * * *
    * * * * * *  640
    * * * * * *
    * * * * * *

    So if we can find the biggest box that works for this, then we've found the the biggest box that works
    for all of the land.

      |
      V              Went from a 1680 x 640 to 400 x 640

    Enter Euclid's ALgorithm



    So we can apply the same algorithm again, starting with 640 x 400, the biggest box we can create is 400 x 400

        400
    * * * * * *
    * * * * * * } 240
    * * * * * * )
    * * * * * * } 400
    * * * * * * )

    Leaves us with 400 x 240:
        400
    * * * * * *  240
    * * * * * *


  Then we can get an even smaller segment if we draw a box

      240    160
  240 * * * * * *
      * * * * * *


Then:
          160
    240 * * * * *
        * * * * *

We can get an even smaller segment:
          160
        * * * * 80
        * * * * 160

So 160 x 80 is the base case.

80 is a factor of 160 and if you split up this segment, there is nothing left over.
      80   80
      * * * * 80
      * * * *



So, for the original farm, the biggest equal plot size is 80m x 80m


To recap DC
1). Figure out a simple case as the base case.
2). Figure out how to reduce the problem and get to the base case.


DC is NOT a simple algo that can be applied to a problem, rather it's a way of thinkng about a problem.

EXAMPLE: Given an array of numbers

array = [2,4,6]

PROBLEM: Have to add up all of the numbers and give the total.

Seems like the base case is to take number and add it to a total.

def add(arr)
  total = 0
  0.upto(arr.size-1) do |i|
    total += i
  end
  return total
end

p add(array)

How to do this with a recursive function?

def recursive_add(arr)

  total = arr.delete_at(0)
  return total += recursive_add(arr)


end




































































"""
