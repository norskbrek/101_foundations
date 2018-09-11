def is_odd?(num)
  num = num.abs
  if num % 2 != 0
    puts true
  else
    puts false
  end
end

is_odd?(3)
is_odd?(4)
is_odd?(0)
is_odd?(-17)
