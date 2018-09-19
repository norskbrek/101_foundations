=begin

Question 1.
10.times {|x| puts (" " * x) + "The Flintstones Rock!"}

Question 2.
Raises error "no implicit conversion of Integer into String"
Fixes?
String interpolation:
puts "the value of 40 + 2 is #{40 + 2}."
String conversion:
puts "the value of 40 + 2 is " + (40 + 2).to_s

Question 3.
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

Bonus 1 - number % dividend == 0 gives a conditional statement dictating
how to decide which numbers to push to the array.
Bonus 2 - Ensures the method always returns the divisors array.

Question 4.
In rolling_buffer1, the "buffer" input is modified after the method returns.
In rolling_buffer2, the "input_array" is not modified.

Question 5.
The "limit" variable is not available within the method. Solution: make the
"limit" variable into a third argument of the "fib" method.

Question 6.
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

Question 7.
The output is 34, because the method does nothing to the variable answer.
We simply print answer - 8, which is 42 - 8, which is 34.

Question 8.
Yes - the hash is run through the method and then mutated.

Question 9.
"paper"

Question 10.
"no"
