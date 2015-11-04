fizzbuzzer = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

# fizzbuzzer.(0, 0, "Three")
# fizzbuzzer.(0, 1, "Three")
# fizzbuzzer.(1, 0, "Three")
# fizzbuzzer.(1, 1, "Three")

fizzbuzz = fn
  num -> IO.puts fizzbuzzer.(rem(num, 3), rem(num, 5), num)
end

fizzbuzz.(10)
fizzbuzz.(11)
fizzbuzz.(12)
fizzbuzz.(13)
fizzbuzz.(14)
fizzbuzz.(15)
fizzbuzz.(16)
