#learn how to program exercise 5.6
#practice with gets.chomp
puts 'Hi! Let\'s be friends! What is your first name?'
nameF = gets.chomp
puts 'Amazing. What is your middle name?'
nameM = gets.chomp
puts 'What is your last name?'
nameL = gets.chomp
puts 'Now I can steal your identity, ' + nameF + ' ' + nameM + ' ' + nameL + '! I am laughing maniacally.'
puts ''

#str to integer and vice versa
puts 'What is your favorite number?'
faveN = gets.chomp
faveNu = faveN.to_i + 1
puts 'Really? My favorite number is ' + faveNu.to_s + ', which I think you can agree is much better.'