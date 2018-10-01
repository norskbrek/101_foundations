require 'yaml'
require 'pry'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key, user_input='')
  message = messages(key, LANGUAGE)
  puts "=> #{message} #{user_input}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  case op
  when '1'
    'adding...'
  when '2'
    'subtracting...'
  when '3'
    'multiplying...'
  when '4'
    'dividing...'
  end
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp.capitalize

  if name.empty? || name.strip == ''
    prompt('valid_name')
  else
    break
  end
  name
end

# binding.pry
prompt('greeting', name)

loop do # main loop
  number1 = ''
  loop do
    prompt('first_num')
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt('not_valid')
    end
  end

  number2 = ''
  loop do
    prompt('second_num')
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt('not_valid')
    end
  end

  prompt('operator_prompt')

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('must_choose')
    end
  end

  prompt('operation', operation_to_message(operator))

  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             (number1.to_f * number2.to_f).round(2)
           when '4'
             (number1.to_f / number2.to_f).round(2)
           end

  prompt('result', result)

  prompt('do_again')
  answer = gets.chomp
  break unless answer.downcase == 'y'
  system('clear') || system('cls')
end

prompt('thanks')
