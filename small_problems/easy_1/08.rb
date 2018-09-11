def average(numbers)
  result = numbers.sum / numbers.length
  result.to_f
end

puts average([1, 5, 87, 45, 8, 8]) == 25.0
puts average([9, 47, 23, 95, 16, 52]) == 40.0
