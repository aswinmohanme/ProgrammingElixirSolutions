# Guess the number between an elixir range

defmodule Guess do
  def middle(min, max), do: div(min + max, 2)

  def number(actual, first..last) do
    number(actual, middle(first, last), first..last)
  end

  def number(actual, guess, _) when actual == guess do
    IO.puts "Is it #{guess}"
    actual
  end

  def number(actual, guess, first..last) when actual < guess do
    IO.puts "Is it #{guess}"
    number(actual, middle(first, last), first..guess)
  end

  def number(actual, guess, first..last) when actual > guess do
    IO.puts "Is it #{guess}"
    number(actual, middle(first, last), guess..last)
  end
end

Guess.number(273, 1..1000)
