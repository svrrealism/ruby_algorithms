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
  - Movie Theater Seats : n-Friends :: Address in memory : to Array


  Big-O of an Array
  -----------------
  - Arrays can be accessed/read with a speed of O(1) as you can just read any random element.
    a). Example: Give me the the contents of arr[some_item]..... 'Oh, arr[some_item] evals to this...'

  - Insertion into an array is slower with a speed of O(n)
    a). You have to shift everything down when something new gets added.

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
IMPORTANT

Sequential Access - you have to access all elements to get the memory address of a particular element
  -(Linked-lists can ONLY do sequential access)

Random Access - you can jump around in the data structure (Arrays are good at this)
----------------------------------------------------------------



-------------------------------------
INSERTING INTO THE MIDDLE OF THE LIST
-------------------------------------

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

              Arrays         Linked-Lists

Reading       O(1)            O(n)

Insertion     O(n)            O(1)

Deletion      O(n)            O(1) -> ONLY IF YOU CAN ACCESS THAT ELEMENT INSTANTLY. Common practice to keep track of first and last elements

It's important to note that linked-lists are only fast if you can instantaneously access them.
  - Standard practice to keep track of beginning and end of the data structure
    to ensure O(1) read/deletions of those elements.

Arrays and Lists are used to implement other data structures


EXERCISE 2.1:
------------
Suppose that you are jotting down items and you:
- take note every day of what you spent and the total you spent on them at the end of the month.
Q: What is the best data structure to use?




A: Rationalization:

   - Think about it. I am inserting (writing stuff down) everyday.
   - Then I'm reading ONCE at the end of the month (how fast that read is, is another issue).

   >>>>>>> Linked-List !!!

EXERCISE 2.2
------------
Suppose that you are building a restaurant app to take customer orders
- You need to store a list of orders.
- Servers keep adding to the list, chefs take off orders.
- It's an order queue, basically: Orders are inserted, then taken off to be made.

Q: Would you use an array or a linked-list for this queue implementation?

A: Rationalization:
    - Arrays are O(n+1) insertions in a queue,
      Chefs deleted from the queue...O(n) in principle (worst case),
      but O(1) best case if the last element in the array is tokenized and always deleted...
        ...but then the index has to change...so the shift occurs which is O(n)

    - Linked-List are O(1) at insertions and O(1) at deletions (assuming you can instantly access the list). Just better overall.




>>>>>>> Linked-list!!! Servers are adding orders (insertion), which linked-lists excel at.



EXERCISE 2.3
------------
Suppose that FB keeps a list of users. When users try to login, a search is done for that name.
People log in quite often, many searches. Say the search is binary search.

Binary Search NEEDS random access, because you need to get to the middle of that list.

Q: Would you use an array or linked-list to store your users?

A: Rationalization:

   - Since binary search is being used, I know that it takes an input that must be sorted. Seems faster to sort an array versus a linked list.
   - I also know that, since arrays are faster, O(1), at random access than linked-lists, arrays seem ideal.


>>>>>>> Arrays!!



EXERCISE 2.4
------------

Continuing the example above, people sign up quite often.
Suppose we decide to use an array to store the list of users.

Q1: What are the drawbacks to using an array for inserts?
A1: Rationalization:
      - The downsides are, while you have access to the alphabetic order of the users,
        you would need to shift the entire array if you did an insert (sign up).
        This is a problem because what if multiple users are signing up,
        the array would need to account for more space in memory every single time someone signed up!!!

    >>>>>>> My above rationalization but also, if that element is added to the end
            and binary search needs order, you need to sort the entire array again. Try logging in...eventually.

Q2: More specific than the above question, supposing that you are using binary search
    to search for logins, what if you add new users?

A2: Rationalization:

    - Since binary search needs a sorted array, and searches based on knowledge of the
      first, middle, and last elements of the array, if you are signing users up, the array will constantly shift.
      If the array is constantly shifting, then it seems like multiple users could not realiably log into their
      accounts when binary search is predicated on calculating values that rarely shift

EXERCISE 2.5
------------

So actually FB uses neither linked-lists nor arrays.

Let's suppose an idea of a HYBRID data structure, say, an array of linked-lists.

We have an array with 26 slots. Each slot points to a linked-list.


sorted_users_array =
[
    a = {Adam ... Annie ... Alice ... Al },
    b = {Bob ... Blake ... Bilson ... Blaine },
    c = {Cate ... Caleb ... Carrie ... Carol },
    ...
]

Scenario 1:
  Suppose Annie B signs up and you want to add her to the list?
    - We go to the first slot in the array and add her to the end of the list.

Scenario 2:
  We want to find Zachary R.
    - If we wanted to search for Zachary R. in the last slot, we'd search the list until we found him.



Let's compare this hybrid data structure to arrays and linked-lists.


Q: Is the hybrid slower or faster than each for searching and inserting?

A: Rationalization:
   - The hybrid as compared to the array:
      a). Searching (Reading): The hybrid is O(1+n) or O(n) since we can drop constants if there is an n VS. an array's O(1)
      b). Inserting: The hybrid is O(1+1) or O(2) VS. an array's O(n) shifting elements unless it's at the end
          * You are comparing the Read+Insert here VS. Insert of array.

   - The hybrid as compared to the linked-list:
      a). Searching: The hybrid is O(1+n) or O(n) VS. a linked-list's O(n)
      b). Inserting: The hyrbid is O(1+1) or O(2) VS. a linked-list's O(1)


>>>>>>>(WTF) Searching...slower than arrays, faster than linked-lists
       (this doesn't make sense to me because searching through the list will be inevitable for hybrid plus the constant time)
>>>>>>> Inserting...faster than arrays, same speed as linked-lists


FB probably uses many different databases, with various data structures such as:
  a). Hash Trees
  b). B-Trees


--------------------------------------------------------------------------------------------------------------------------------
Algorithm: Selection Sort

Scenario: You have a table of products and the amount of time the product was purchased.
Problem: You would like to sort the products from most to least so that you focus more on the popular items. How would you do this?

METHOD 1: One way is to go through the list and find the the most played artist. Add the artist to a new list. Do it again and again till sorted.

So recall that O(n), means that you touch every element once.

This means, we go through the list checking what's the highest number in that list.
  - Then popping it out of the stack, adding it to a new one each time.

Remember that this list is not sorted initially, so you have to do this n times.

NEW CONCEPT....this takes O(n) x O(n) = O(n^2)

Armed with this knowledge, we can sort things like:
  - Names in a phone book
  - Emails from newest to oldest
  - User sign ups from oldest to newest
  - Travel Dates

Example:









"""
