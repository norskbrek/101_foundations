vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']


def count_occurrences(array)
  new_array = array.uniq
  new_array.each do |item|
    puts "#{item} => #{array.count(item)}"
  end
end


count_occurrences(vehicles)
