puts "\n"*5
puts "-"*25
puts "WARNING: The word index is meant to mean the position in an array. Oki?"
puts "-"*25

puts "\n"*5

puts "Moving on...."
puts """

Here we explore linked lists and arrays.

Movie theater analogy:
  Arrays
  ------
  - All of your friends need seats so that you are all sitting next to each other.
  - The moment a new friend comes along, you need an entire new set of seats to accommodate
  - Seats are analogous to memory
  - Movie Theater Seats is to n-Friends as Address in memory is to Array

  Big-O of an Array
  -----------------
  - Arrays can be accessed/read with a speed of O(1) as you can just read any random element.
    a). Example: Give me the the contents of arr[some_item]..... 'Oh, arr[some_item] evals to this...'

  - Insertion into an array is slower with a speed of O(n)
    a).

  - Slow inserts, fast reads.

  Linked-Lists
  ------------
  - All of your friends don't care about sitting next to each other (Your items can be anywhere in memory)
  - But to know where your friends were sitting, you'd have to go to every seat.
  - To determine what the next element is in the linked-list(memory address), it means that
    you read all elements to get and idea of where each are pointing to each other in memory.

  Big O of a Linked-List
  ----------------------
  - Therefore, reading a linked-list has a speed of O(n)

  - Insertion into a linked-list is SO EASSSSSSSSSY AND FAST!.........has a speed of O(1))
    a). You're just plugging an item into it and having the
        last known element point to said inserted element's address!!!!

  - Only slow reads if you are accessing random elements
    a). For example: you want to access a random element...you go to the beginning of the
                     linked-list and the first element says:
                     'Nope not me, but I have the next element...the princess is in another castle.'

    ANALOGY TIME:
      - Random Access in Linked-Lists : O(n) :: Mario is looking : for the princess in another castle

      If you are going to keep jumping around, then linked lists are TERRRRRRRIBLE!!!
      Mario would potentially miss out on finding the princess...and that's SAD.



----------------------------------------------------------------

INSERTING INTO THE MIDDLE OF THE LIST

Q. Suppose you wanted your app to work more like a calendar?

A. You'd use a linked list because they are completely unordered.

If you want to add a new element, then just point to a new element and point that to the next, etc.
  - There is no necessary ordering as there is in an array.

With arrays, you'd have to shift everything down. What if there is no space?
  - You'd need to move everything! Not ideal.


DELETION

Q: What if you want to delete? What data structure to use?

A: Again you'd use linked-lists because you can just unlink the references to that element.
    - If you tried this with an array, you'd have to shift the entire array which leaves free memory.

Big O for Deletions in either data structure:

              Arrays         Lists

Reading       O(1)            O(n)

Insertion     O(n)            O(1)

Deletion      O(n)            O(1)

It's important to note that lists are only fast if you can instantaneously access them.
  - Standard practice to keep track beginning and
end of the data structure to ensure O(1) read/deletions of those elements.

Arrays and Lists are used to implement other data structures





EXERCISE 2.1:
------------
Suppose that you are jotting down items and you:
- take note every day of what you spent and the total you spent on them at the end of the month.
Q: What is the best data structure to use?

A: Linked-List because you are merely adding to it daily more than you are reading.

EXERCISE 2.2
------------
Suppose that you are building a restaurant app to take customer orders
- You need to store a list of orders.
- Servers keep adding to the list, chefs take off orders.
- It's an order queue, basically: Orders are inserted, then taken off to be made.

Q: Would you use an array or a linked-list for this queue implementation?

A: Linked-list. Servers are adding orders (insertion), which linked-lists excel at.




"""
