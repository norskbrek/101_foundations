def room_area()
  puts "Enter the length of the room in meters:"
  length = gets().chomp().to_f
  puts "Enter the width of the room in meters:"
  width = gets().chomp().to_f

  metric_area = (length * width).round(2)
  standard_area = (metric_area * 10.7639).round(2)

  puts "The area of the room is #{metric_area} square meters (#{standard_area} square feet)."
end

room_area
