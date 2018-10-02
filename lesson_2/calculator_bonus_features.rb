require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message_key, lang='en')
  MESSAGES[lang][message_key]
end

def prompt(message_key, input='')
  message = messages(message_key, LANGUAGE)
  puts "=> #{message}#{input}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  case op
  when '1' then messages('adding', LANGUAGE)
  when '2' then messages('subtracting', LANGUAGE)
  when '3' then messages('multiplying', LANGUAGE)
  when '4' then messages('dividing', LANGUAGE)
  end
end

prompt('welcome')
prompt('enter_name')

name = ''
loop do
  name = gets.chomp.strip.capitalize

  if name.empty? || name.strip == ''
    prompt('invalid_name')
  else
    break
  end
  name
end

prompt('greet_user', name)

loop do # main loop
  number1 = ''
  loop do
    prompt('number_1')
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt('invalid_number')
    end
  end

  number2 = ''
  loop do
    prompt('number_2')
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt('invalid_number')
    end
  end

  prompt('operator_prompt')

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('invalid_choice')
    end
  end

  prompt('operation_status', operation_to_message(operator))

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

  prompt('operation_result', result)

  prompt('calculate_again')
  answer = gets.chomp
  break unless answer.downcase == 'y'
  system('clear') || system('cls')
end

prompt('thank_user')
