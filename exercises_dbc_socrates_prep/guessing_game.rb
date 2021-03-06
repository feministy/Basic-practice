# Create a GuessingGame class which is initialized with an integer called answer.

# Define an instance method GuessingGame#guess which takes an integer called guess as its input. 
# guess should return the symbol :high if the guess is larger than the answer, 
# :correct if the guess is equal to the answer, and :low if the guess is lower than the answer.

# Define an instance method GuessingGame#solved? which returns true if 
# the most recent guess was correct and false otherwise.

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(recent_guess) 

    guess_array = []

    guess_array.push(recent_guess)
    test_guess = guess_array.last
    @test_guess = test_guess

    return :correct if test_guess == @answer
    return :high if test_guess > @answer
    return :low if test_guess < @answer
  end
 
  def solved?
    @test_guess == @answer
  end
 
end

# Example (1)
game = GuessingGame.new(10)

game.solved? # => false
game.guess(5) # => :low
game.guess(20) # => :high
game.solved? # => false

game.guess(10) # :correct
game.solved? # => true

# Example (2)
game = GuessingGame.new rand(100)
last_guess = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops! Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"