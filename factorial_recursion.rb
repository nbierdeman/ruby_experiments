=begin
Here is a recursive implementation of the factorial method.

Recursion occurs in Ruby (and other languages) when a method calls itself
from inside itself.

A factorial is a non-negative integer, which is the product of all
the positive integers less than or equal to itself.

Example: 5! (5 factorial) is 5 * 4 * 3 * 2 * 1 = 120.
Notice that 5! = 5 * 4!, 4! = 4 * 3!, etc.
1! = 1, also known as the base case, can be calculated w/o any more factorials.
The factorial of 0 is always 1.
=end
module RecursiveFactorial
  def fact(n)
    n == 0 ? 1 : n * fact(n - 1)
  end
end
class Fun
  include RecursiveFactorial
end
# Correct output is 120.
fun = Fun.new
puts fun.fact(5)
