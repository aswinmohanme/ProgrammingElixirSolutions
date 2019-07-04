# Guess the number between an elixir range

defmodule Guess do
  def middle(min, max), do: div(min + max, 2)

  def number(actual, first..last) when actual < div(first + last, 2) do
    IO.puts("Is it #{middle(first, last)}")
    number(actual, first..middle(first, last))
  end

  def number(actual, first..last) when actual > div(first + last, 2) do
    IO.puts("Is it #{middle(first, last)}")
    number(actual, middle(first, last)..last)
  end

  def number(_, first..last) do
    IO.puts(middle(first, last))
  end
end

Guess.number(273, 1..1000)
