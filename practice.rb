#Specify arrays to use multiple times in the script

SORTED_I = [1,2,3,4,5,6,7,8,9,10]
SORTED_S = %w(
Annie Alligator
Barry Bear
Carol Cat
Danny Dog
Emily Elephant
Fernando Firefly
Gary Goose
Holly Horse
Isabel Iguana
Jerry Jaguar
Karen Kangaroo
Lester Lion
Mickey Moose
Nancy Nightingale
Oliver Ostrich
Penelope Pig
Quentin Quail
Rosie Racoon
Sally Snake
Tina Turtle
Underwood Umbrella Bird
Vicki Vulture
Willy Wolf
Oxford Ox
Yolanda Yak
Zelda Zebra
)

#Note that calling shuffle! with the exclamation will change the original var contents in place
UNSORTED_I = SORTED_I.shuffle
UNSORTED_S = SORTED_S.shuffle

p SORTED_I
p SORTED_S

p UNSORTED_I
p UNSORTED_S


#Binary search
