def palindrome?(words)
  return true ? words == words.reverse : false
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?("madam i'm adam")
puts palindrome?('356653')

# Refactored:

def palindrome?(string)
  string == string.reverse
  # implicit return!
end
