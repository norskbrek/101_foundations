puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.new.year

years_left = retirement_age - current_age
retirement_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_left} years of work to go!"
