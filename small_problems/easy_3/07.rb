def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end

  odd_elements
end

puts oddities([2, 3, 4, 5, 6])
puts oddities(['abc', 'def'])
puts oddities([123])
puts oddities([])
