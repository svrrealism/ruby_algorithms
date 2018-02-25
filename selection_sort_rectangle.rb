puts """

Suppose you have a rectangle with the dimensions of 150cm x 40cm

If the rectangle could be divided by the first largest, even square that you could find,
what would be the dimension of such a square?



                    150 centimeters
* * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * *  40 centimeters
* * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * *




1). First I try to determine how I can break up 150 evenly and have a remainder

THOUGHT...would Prime factorization help me here? Thinking of this for some reason.

Let's say I break up the square into three 50cm x 40cm squares

2). I think I will reach the base case when the 150 is completely at the smallest value? Or not necessarily...

  So basically, 50 breaks to 25....so do I have 25 x 40's?

    Let's say I do...

      25cm
    * * * *
    * * * *
    * * * * 40cm
    * * * *
    * * * *

If I divide 25 by 5 columns, I get 5cm x 40cm...I think this is base case. Then I can take 40 and divide it in half
5cm
*
* 20cm
*
* 20cm
*

This gives me 5cm x 20cm

Then divide it in half

5
*10cm
*
*
*10cm
*

Gives me 5cm x 10cm

Then divide in half to give

5cm x 5cm

Why did I start with dividing by 3 above? I think I was influenced from a previous problem that I saw.

So the question is, given a rectangle of any size can I define a fucntion that calculates what I just did? How would it look?


Ex). Another example with different dimensions:

                50m
        * * * * * * * * * *
        * * * * * * * * * *
        * * * * * * * * * * 25m
        * * * * * * * * * *
        * * * * * * * * * *

To figure out the base case, and easy way would be if one side were a multiple of the other side.

How to find multiples:


1. Make a list of multiples for each number.



2. Continue your list until at least two multiples are common to all lists.
3. Identify the common multiples.


On second thought, I just ran 150 modulo 40 and obtained 30 (remaninder 30)

So this means that 150 - 30 = 120

Splitting 120 in half, I get two 60's

So this means I have squares of the following:

Square 1: 60cm x 40cm
Square 2: 60cm x 40cm
Square 3: 30cm x 40cm



=============================
We are Farmers

Let me try the plot of land problem again but on my own.

                                  1680 meters
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  640 meters
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

U


===========================



"""
