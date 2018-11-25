defmodule Recursively do
  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))
end

defmodule Chop do
  def guess(actual, min..max) when actual < min or actual > max,
    do: "Number not within range. Exiting..."

  def guess(actual, min..max) do
    attempt = div(min+max, 2)
    IO.puts "Is it #{attempt}"
    guess(actual, min..max , attempt)
  end

  defp guess(attempt, _, attempt), do: IO.puts attempt

  defp guess(actual, _..max, attempt) when attempt < actual,
    do: guess(actual, attempt+1..max)

  defp guess(actual, min.._, attempt) when attempt > actual,
    do: guess(actual, min..attempt-1)
end

defmodule  do

end