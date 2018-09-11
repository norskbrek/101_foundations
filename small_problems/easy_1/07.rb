def stringy(integer)
  array = []

  integer.times do |index|
    if index.even?
      array.push("1")
    else
      array.push("0")
    end
  end

  array.join
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)
