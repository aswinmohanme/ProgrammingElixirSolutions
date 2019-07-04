# Times Module
defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double(n))
end

Times.double(2)

defmodule Factorial do
  def of(0), do: 1
  def of(n) when is_integer(n) and n > 0 do
    n * of(n - 1)
  end
end

Factorial.of(4)
Factorial.of(-4)

defmodule Sum do
  def of(0), do: 0
  def of(n), do: n + of(n - 1)
end

defmodule Length do
  def of([]), do: 0
  def of([head | tail]), do: 1 + of(tail)
end

# Guard Cluases
defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts("#{x} is a number")
  end

  def what_is(x) when is_list(x) do
    IO.puts("#{inspect(x)} is a list")
  end

  def what_is(x) when is_atom(x) do
    IO.puts("#{x} is an atom")
  end
end

Guard.what_is(:hey)
Guard.what_is([1, 1])

# Default Parameters
defmodule DefaultParameters  do
  def hello(p1, p2, p3 \\ 100) do
    p3
  end
end

DefaultParameters.hello(1, 2, 3)
DefaultParameters.hello(1, 2)

