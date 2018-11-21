defmodule Recursively do
  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))
end

defmodule Chop do
  def guess(actual, range) do
    make_guess(actual, middle(range), range)
  end
  def make_guess(actual, actual, _), do: IO.puts "#{actual}"
  def make_guess(actual, guess, range) when actual < guess do
    make_guess(actual, middle(range), Enum.min(range)..(guess-1))
  end
  def make_guess(actual, guess, range) when actual > guess do
    # IO.puts "Elixir guess #{guess}"
    make_guess(actual, middle(range), (guess+1)..Enum.max(range))
  end
  def middle(range) do
    Enum.min(range) + div((Enum.max(range)-Enum.min(range)), 2)
  end
end