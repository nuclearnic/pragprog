greeter = fn name -> (
            fn ->
              IO.puts "Hello #{name}"
            end
          )
          end


tender_greeter = greeter.("Tenderlove")
tender_greeter.()