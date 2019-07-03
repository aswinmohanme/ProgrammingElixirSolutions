# Create a funciton that takes in a string and returns a new function which takes the string and adds a space in between

prefix = fn first -> (fn last -> "#{first} #{last}" end) end
