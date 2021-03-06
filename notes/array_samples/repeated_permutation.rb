a = [1, 2, 3]

puts a.repeated_permutation(2).to_a.inspect

# [[1, 1], [1, 2], [1, 3], [2, 1], [2, 2], [2, 3], [3, 1], [3, 2], [3, 3]]

puts a.inspect

# [1, 2, 3]

puts "trying some blocks..."

b = a.repeated_permutation(2) { |n| print "newthing: #{n} \n" }
puts b.inspect

# newthing: [1, 1] 
# newthing: [1, 2] 
# newthing: [1, 3] 
# newthing: [2, 1] 
# newthing: [2, 2] 
# newthing: [2, 3] 
# newthing: [3, 1] 
# newthing: [3, 2] 
# newthing: [3, 3] 