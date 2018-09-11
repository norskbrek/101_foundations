

def digit_list(nums)
  nums.to_s.split('').map do |num|
    num.to_i
  end
end

digit_list(12345)
digit_list(458900)
digit_list(444)
