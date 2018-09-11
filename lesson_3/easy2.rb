=begin

Question 1.
ages.include?("Spot")
ages.has_key?("Spot")
ages.member?("Spot")

Question 2.
munsters_description.capitalize
munsters_description.swapcase
munsters_description.downcase
munsters_description.upcase

Question 3.
ages.merge!(additional_ages)

Question 4.
advice.include?("Dino")
advice.match("Dino")

Question 5.
%w(Fred Barney Wilma...)

Question 6.
flintstones << "Dino"
flintstones.push("Dino")

Question 7.
flintstones.push("Dino", "Hoppy")
flintstones.concat(%w(Dino Hoppy))

Question 8.
first_advice = advice.slice!(0..38)
(I used advice[index] to search thru advice to find where the
requested sentence portion ended.)
If you use the #slice method, it returns the sliced portion, but
the original variable advice remains the same.
--LS answer: advice.slice!(0, advice.index('house'))

Question 9.
statement.count("t")

Question 10.
title.center(40)
