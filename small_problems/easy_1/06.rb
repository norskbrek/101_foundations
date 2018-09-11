def reverse_words(string)
  new_string = string.split.map do |word|
    if word.length > 4
      word.reverse
    else
      word
    end
  end

  new_string.join(' ')
end

puts reverse_words("Professional")
puts reverse_words("Walk around the block")
puts reverse_words("Launch School")
