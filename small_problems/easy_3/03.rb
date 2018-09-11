puts "Please write word or multiple words:"
input = Kernel.gets().chomp()
x = input.delete(' ').size

puts "There are #{x} characters in \"#{input}\"."
