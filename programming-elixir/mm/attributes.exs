defmodule Example do
  @author "Dave Thomas"
  def get_author, do: @author
end

IO.puts "Example written by #{Example.get_author}"

defmodule Example2 do
  @attr "one"
  def first, do: @attr
  @attr "two"
  def second, do: @attr
end

IO.puts "#{Example2.second} #{Example2.first}"