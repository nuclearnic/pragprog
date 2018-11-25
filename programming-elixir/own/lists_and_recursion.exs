defmodule MyList do
  def mapsum([], _func), do: 0
  def mapsum([head|tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def max([largest | []]), do: largest
  def max([largest | [head | tail]]) when largest > head do
    max([largest | tail])
  end
  def max([largest | [head | tail]]) do
    max([head | tail])
  end

  def caesar([], _), do: []
  def caesar([head | tail], n) when head + n > 120 do
    [ (head + n) - 26| caesar(tail,n)]
  end
  def caesar([head | tail], n), do: [head+n | caesar(tail,n)]
end