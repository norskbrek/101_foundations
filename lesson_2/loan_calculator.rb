# require "yaml"
# MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(input)
  input.to_i.to_s == input ||
    input.to_f.to_s == input &&
      input > 0
end

loop do
  prompt("Welcome to Loan Calculator!")
  prompt("Please enter your loan amount:")
  loan_amount = gets.chomp
  # validate input here

  prompt("Please enter your APR (Annual Percentage Rate):")
  interest_rate = gets.chomp
  # validate input here

  prompt("Please enter your loan term (in years):")
  years = gets.chomp
  # validate input here

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate /
                      (1 - (1 + monthly_interest_rate)**-months.to_i))

  prompt("It looks like you'll be paying #{monthly_payment.round(2)} each month
        for #{months} months!")

  prompt("Would you like to calculate another loan? (enter Y/N):")
  answer = gets.chomp
  break unless answer.downcase == 'y'
  system('clear') || system('cls')
end
