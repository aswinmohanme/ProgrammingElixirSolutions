# Basics of Elixir

# Integers, no fixed size
a = 100
big_with_underscore = 100_100_100
div(3, 2)
rem(3, 2)

# floats
float_numbers = 1.32
3 / 2

# Atoms, name is their values
:hello
:is_binary?
:name@

# Ranges

# Regular Expressions
reg_string = "caterpillar"
Regex.run(~r{[aeiou]}, reg_string)
Regex.scan(~r{[aeiou]}, reg_string)
Regex.split(~r{[aeiou]}, reg_string)
Regex.replace(~r{[aeiou]}, reg_string, "*")

# System Processes
# PID, gives pid
self

# Tuples
tuple_example = {1, 2, 3}
# Write passing guards
{:ok, _} = File.open("mix.exs")

# Lists
[1, 2, 3]
[1, 2, 3] ++ [2, 3, 4]
[1, 2, 3] -- [2, 3, 4]
1 in [1, 2, 3]

# Keyword Lists
[name: "Dave", age: 12]

# Map collection of key value pairs
states = %{"KL" => "Kerala", "TN" => "Tamil Nadu"}
colors = %{red: "red", black: "black"}
states["KL"]
colors.black
colors.blue

# Binary Data
bin = <<1, 2>>

# Dates
{:ok, d1} = Date.new(2018, 2, 3)
Date.day_of_year(d1)

# with
with {:ok, file} = File.open("mix.exs"),
     content = "Hello" do
end

mean =
  with count = Enum.count([1, 2, 3]),
       sum = Enum.sum(count),
       do: sum / count
