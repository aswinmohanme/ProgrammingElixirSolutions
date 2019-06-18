
# Elixir works on Pattern Matching, checks if left can be assined from right side
a = 1
1 = a

# Lists
["hello", "there", ["Dude"]]

a = ["hello"]
b = a
[a, _, c] = [1, 2, 3]


# Pin operator
a = 1
a = 2
^a = 2
^a = 1
