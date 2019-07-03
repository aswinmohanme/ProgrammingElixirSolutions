# Times Module
defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double(n))
end

Times.double(2)

defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n - 1)
end

Factorial.of(4)

defmodule Sum do
  def of(0), do: 0
  def of(n), do: n + of(n - 1)
end

defmodule Length do
  def of([]), do: 0
  def of([head | tail]), do: 1 + of(tail)
end
