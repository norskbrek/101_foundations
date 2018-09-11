def what_age()
  Kernel.puts "What's your name?"
  name = gets().chomp().capitalize()
  age = rand(20..200)

  if name == ''
    name = "Teddy"
  else
    name
  end

  Kernel.puts "#{name} is #{age} years old!"
end

what_age
