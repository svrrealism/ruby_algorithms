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















"""
