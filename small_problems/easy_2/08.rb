def integer_sum(num)
  total = 0
  1.upto(num) {|x| total += x}
  total
end

def integer_product(num)
  total = 1
  1.upto(num) {|x| total *= x}
  total
end

puts "Please enter an integer greater than 0: "
num = Kernel.gets().chomp().to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = Kernel.gets().chomp()

if choice == 's'
  sum = integer_sum(num)
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif choice == 'p'
  product = integer_product(num)
  puts "The product of the integers between 1 and #{num} is #{product}."
else
  puts "Try again!"
end
