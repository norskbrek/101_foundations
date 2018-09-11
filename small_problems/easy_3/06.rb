# My solution:

def xor?(num_1, num_2)
  if (num_1 == true && num_2 == false) || (num_1 == false && num_2 == true)
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)

# Refactored:

def xor?(num_1, num_2)
  return true if num_1 && !num_2
  return true if num_2 && !num_1
  false
end

# More refactored:

def xor?(num_1, num_2)
  (num_1 && ! num_2) || (num_2 && !num_1)
end
