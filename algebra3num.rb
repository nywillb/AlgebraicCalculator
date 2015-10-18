require 'colorize'

puts "Welcome to our calculator".light_blue.blink


puts "What is your #{"variable".green}?"
equVar = gets.chomp

puts "What #{"operation".blue} is in your equation?"
user_input_operation = gets.chomp
def pick(var)
  if var.downcase == "addition" || var == "+" || var.downcase == "plus"
    operation = "+"
  elsif var.downcase == "subtraction" || var == "-" || var.downcase == "minus"
    operation = "-"
  elsif var.downcase == "multiplication" || var == "*" || var.downcase == "x" || var.downcase == "times"
    operation = "*"
  elsif var.downcase == "division" || var == "÷" || var.downcase == "/" || var.downcase == "divided"
    operation = "/"
  elsif var.downcase == "exponent" || var == "^"
    operation = "^"
  else
    puts "You did not put a valid operation :( The program is now restarting."
    operation = "invalid"
  end
  return operation
end
puts pick(user_input_operation)

operation = pick(user_input_operation)
if operation != "invalid"
  puts "What is the first number in your equation (eg.#{equVar.green} = #{"first number".red} #{operation.blue} #{"second number".light_blue} #{operation.blue} #{"third number".blue.on_red})"
  numberOne = gets.chomp.to_f
  puts "What is the second number in your equation (eg.#{equVar.green} = #{"first number".red} #{operation.blue} #{"second number".light_blue} #{operation.blue} #{"third number".blue.on_red})"
  numberTwo = gets.chomp.to_f
  puts "What is the third number in your equation (eg.#{equVar.green} = #{"first number".red} #{operation.blue} #{"second number".light_blue} #{operation.blue} #{"third number".blue.on_red})"
  numberThree = gets.chomp.to_f
  if operation == "+"
    puts "#{equVar.green} = #{numberOne + numberTwo + numberThree}"
    total = numberOne. + numberTwo
  elsif operation == "-"
    puts "#{equVar.green} = #{numberOne - numberTwo - numberThree}"
    total = numberOne - numberTwo
  elsif operation == "*"
    puts "#{equVar.green} = #{numberOne * numberTwo - numberThree}"
    total = numberOne * numberTwo
  elsif operation == "/"
    puts "#{equVar.green} = #{numberOne / numberTwo / numberThree}"
    total = numberOne / numberTwo
  elsif operation == "^"
    puts "#{equVar.green} = #{numberOne^numberTwo^numberThree}"
  end
end

again = gets.chomp
puts plusone
puts "Thank you for using the awesome calculator! Have a great day!".light_blue