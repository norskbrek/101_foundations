numbers = []

puts "==> Enter the 1st number:"
number_1 = Kernel.gets().chomp().to_i
numbers << number_1
puts "==> Enter the 2nd number:"
number_2 = Kernel.gets().chomp().to_i
numbers << number_2
puts "==> Enter the 3rd number:"
number_3 = Kernel.gets().chomp().to_i
numbers << number_3
puts "==> Enter the 4th number:"
number_4 = Kernel.gets().chomp().to_i
numbers << number_4
puts "==> Enter the 5th number:"
number_5 = Kernel.gets().chomp().to_i
numbers << number_5
puts "==> Enter the last number:"
last_number = Kernel.gets().chomp().to_i

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end

# You can refactor this by using numbers << gets.chomp.to_i
