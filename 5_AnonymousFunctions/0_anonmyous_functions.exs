# Anonymous Functions

sum = fn a, b -> a + b end
sum.(10, 20)

swap = fn {a, b} -> {b, a} end
swap.({1, 2})
