fizzbuzz1 = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

fizzbuzz2 = fn
  n -> IO.puts fizzbuzz1.(rem(n, 5), rem(n, 3), n)
end

fizzbuzz2.(10)
fizzbuzz2.(11)
fizzbuzz2.(12)
fizzbuzz2.(13)
fizzbuzz2.(14)
fizzbuzz2.(15)
fizzbuzz2.(16)
fizzbuzz2.(17)

