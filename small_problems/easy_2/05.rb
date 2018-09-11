puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  name
  puts "Hello, #{name}."
end


# TERNARY?
