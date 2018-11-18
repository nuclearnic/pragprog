greeter = fn -> (
            fn name ->
              IO.puts "Hello #{name}"
            end
          )
          end


greetings = greeter.()

greetings.("Tenderlove")