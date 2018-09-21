require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key, input='')
  message = messages(key, LANGUAGE)
  puts("=> #{message} #{input}")
end

def valid_number?(input)
  input.to_i.to_s == input || input.to_f.to_s == input
end

def operation_to_message(operator)
  case operator
  when '1' then messages('adding')
  when '2' then messages('subtracting')
  when '3' then messages('multiplying')
  when '4' then messages('dividing')
  end
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp

  if name.empty? || name.strip == ''
    prompt('valid_name')
  else
    name = name.strip.capitalize!
    break
  end
end

prompt('greeting', name)

loop do # main loop
  number1 = ''
  loop do
    prompt('first_num')
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt('not_valid')
    end
  end

  number2 = ''
  loop do
    prompt('second_num')
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(not_valid)
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
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt('result', result)

  prompt('do_again')
  answer = gets.chomp
  break unless answer.downcase == 'y'
  system('clear') || system('cls')
end

prompt('thanks')
