handle_open = fn
  {:ok , file} -> "First line: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts "File that exists:"
IO.puts handle_open.(File.open("first_steps/handle_open.exs"))

IO.puts "File that doesn't exist:"
IO.puts handle_open.(File.open("nonexistant.file"))