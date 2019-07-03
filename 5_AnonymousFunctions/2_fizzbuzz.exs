# Fizzbuzz
fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

fizzbuzz_solution = fn
  n -> fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

fizzbuzz_solution.(10)
fizzbuzz_solution.(11)
fizzbuzz_solution.(12)
fizzbuzz_solution.(13)
fizzbuzz_solution.(14)
fizzbuzz_solution.(15)
fizzbuzz_solution.(16)
