puts "Welcome to Loan Calculator!"
puts "Please enter your loan amount:"
loan_amount = gets.chomp.to_f
puts "Please enter your APR (Annual Percentage Rate):"
annual_percentage_rate = gets.chomp.to_f
puts "Please enter your loan term (in years):"
loan_duration_in_years = gets.chomp.to_i


monthly_interest_rate = annual_percentage_rate / 12 / 100
loan_duration_in_months = loan_duration_in_years * 12

monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate) ** -loan_duration_in_months))

puts "It looks like you'll be paying #{monthly_payment.round(2)} each month
      for #{loan_duration_in_months} months!"
