defmodule MyList do
  def len([]), do: 0
  def len([_|tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head*head | square(tail)]

  def factorial(1), do: 1
  def factorial(x), do: x * factorial(x-1)

  def add_1([]), do: []
  def add_1([ head | tail ]), do: [ head+1 | add_1(tail)]

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def reduce([], value, _fun), do: value
  def reduce([head|tail],value,fun) do
    reduce(tail, fun.(head, value), fun)
  end

  def span(from, to) when from <= to, do: [ from | span(from+1, to)]
  def span( _ , _ ), do: []
end
