defmodule M do
  def do_stuff do
    IO.puts factorial(4)
  end

  def factorial(1), do: 1

  def factorial(n) do
    n * factorial(n-1)
  end
end