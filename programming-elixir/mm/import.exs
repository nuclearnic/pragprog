defmodule Example do
  import List, only: [flatten: 1, duplicate: 2]
  def func1 do
    List.flatten [1, [2, 3], 4]
  end
  def func2 do
    flatten [5, [6, 7], 8]
  end
end

# IO.inspect Example.func2

defmodule Example2 do
  def do_things_with_eg1 do
    alias Example, as: Eg
    IO.puts "in do things"
    IO.inspect Eg.func2
  end
end

Example2.do_things_with_eg1