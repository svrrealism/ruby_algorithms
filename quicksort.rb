puts """

QUICKSORT - elegant sorting algorithm that's used in practice.

New skill to apply to problems; a recursive technique called:

  DIVIDE AND CONQUER (D&C)



First thing we should asked when 'stumped' is...

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

  Now to figure out the recursive case....

    Recursive Case


















































"""
