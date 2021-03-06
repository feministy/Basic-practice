#practice from dbc socrates
num = 5
puts num
puts " "

name = "Josh"
puts name
puts " "

programming_language = "Ruby"
puts programming_language
puts " "

num1  = 5
num2 = 10
result = num1 + num2
#adding two variables together to produce a new variable

puts result
puts " "

#gets.chomp
puts "Enter your name"
name = gets.chomp
puts "Hello, " + name + ". How are you?"

#gets always determines that the content entered is a str
puts "Enter a number"
num3 = gets.chomp
puts "Great, enter another one"
num4 = gets.chomp
result2 = num3 + num4
puts "The sum of #{num3} and #{num4} is #{result2}."
puts " "

#but you can change it to be an integer
result2 = num3.to_i + num4.to_i
puts "The sum of #{num3} and #{num4} is #{result2}."
puts " "

#using #{variable} allows you to put Ruby code or a variable 
#into a str without a bunch of concatenation 

#combined assignment operators
num = 5
puts num
puts " "

#multiply the current value of num5 and store the new value
num = num * 4
puts num

#or add 1 to the current value result3 and store that new value
result = result + 1
puts result

#these expressions are very common, so there are shortcuts in Ruby
num *= 4
puts num
result += 1
puts result