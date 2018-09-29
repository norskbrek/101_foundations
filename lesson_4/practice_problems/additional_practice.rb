# Problem 1.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = Hash.new

flintstones.each_with_index { |name, index|
  flintstones_hash[name] = index
}

# Problem 2.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0
ages.each {|_, age| total_ages += age}
total_ages

# Problem 3.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.delete_if {|name, age| age >= 100}
puts ages

# Problem 4.

ages.values.min

# Problem 5.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index {|name| name[0..1] == "Be"}

# Problem 6.

flintstones.map! {|name| name[0, 3]}

# Problem 7.

statement = "The Flintstones Rock"

# Problem 8.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number # prints number, returns number
  numbers.shift(1) # removes first item from array
end

# prints:
# 1
# 3

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1) # removes last item from array
end

# prints:
# 1
# 2

# Problem 9.

words = "the flintstones rock"

def titleize(str)
  str = str.split(" ")
  str.each do |word|
    word.capitalize
  end
  str.join(" ")
  str
end

# or - words.split.map {|word| word.capitalize }.join(' ')

# Problem 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end 
