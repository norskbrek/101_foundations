def palindromic_number?(number)
  number = number.to_s
  number == number.reverse
end

puts palindromic_number?(34543)
puts palindromic_number?(123210)
puts palindromic_number?(22)
puts palindromic_number?(5)


# Refactored:

def palindromic_number?(number)
  palindrome?(number.to_s)
end
