# Anonymous Functions

sum = fn a, b -> a + b end
sum.(10, 20)

swap = fn {a, b} -> {b, a} end
swap.({1, 2})

# Elixir's way of handling Function Overloading
handle_open = fn
  {:ok, file} -> "Read Data: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

handle_open.(File.open("mix.exs"))

# Multiple Functions
greeter = fn name -> fn -> "Hello #{name}" end end
dave_greeter = greeter.("Dave")

add = fn x -> fn y -> x + y end end
add_5 = add.(5)
add_7 = add.(7)

# Passing functions as arguments
times_2 = fn n -> n * 2 end
apply = fn fun, value -> fun.(value) end
apply.(times_2, 6)

list = 1..10
Enum.map(list, fn elem -> elem * 2 end)
Enum.map(list, fn elem -> rem(elem, 2) end)

#  Pinned Values
defmodule Greeter do
  def greet(name, greeting) do
    fn
      ^name -> "#{greeting} #{name}"
      _ -> "I don't know you"
    end
  end
end

mr_valim = Greeter.greet("Jose", "Oi")
mr_valim.("Jose")
mr_valim.("Freddy")

# & Notation
add_one = &(&1 + 1)
square = &(&1 * &1)
speak = &IO.puts(&1)

rnd = &Float.round(&1, &2)
divrem = &{div(&1, &2), rem(&1, &2)}

s = &"bacon and #{&1}"

# Return an anonymous function that calls another function
l = &length/1

Enum.map(1..10, &(&1 * &1))
Enum.map(1..10, &(&1 < 3))
