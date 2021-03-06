# From the book, I did not write this
# Notes are some mine, some from the book
# This is confusing
# How do I fix the "one thousand and nine hundred" 
# so that it returns "nineteen hundred?"

def wedding_number(number)
  if number < 0
    return "Please enter a number that isn't negative"
  end

  if number == 0
    return "zero"
  end

  # No more special cases. Now creating a string to return.
  num_string = ""

  # Arrays with the information we need to access 
  ones_place  =   ['one', 'two', 'three', 'four', 'five',
                  'six', 'seven', 'eight', 'nine']
  tens_place  =   ['ten', 'twenty', 'thirty', 'forty', 'fifty',
                  'sixty', 'seventy', 'eighty', 'ninety']
  teenagers   =   ['eleven', 'twelve', 'thirteen', 'fourteen',
                  'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have to write out
  # "write" is the part we are writing right now 
  left = number
  write = left/1000
  left = left - write * 1000

  if write > 0
    # Recursion
    thousands = wedding_number write
    num_string = "#{num_string} #{thousands} thousand and"

    if left > 0
      num_string = "#{num_string} "
    end
  end

  write = left/100 # How many hundreds left?
  left = left - write * 100 # Subtract the hundreds

  if write > 0
    # Recursion
    hundreds = wedding_number write
    num_string = "#{num_string}#{hundreds} hundred and"

    if left > 0
      num_string = "#{num_string} "
    end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract the tens

  if write > 0
    if ((write == 1) && (left > 0))
      # Special exception for the teenager numbers
      # -1 because teenagers[3] is fourteen, not thirteen
      num_string = "#{num_string}#{teenagers[left-1]}"
      # This includes the digit in the ones place, nothing else to write 
      left = 0
    else 
      # -1 for the same reason as above
      num_string = "#{num_string}#{tens_place[write-1]}"
    end

    if left > 0
      num_string = "#{num_string} and "
    end
  end

  write = left # How many ones left?
  left = 0 # Take away the ones. This should be zero!

  if write > 0
    num_string = "#{num_string}#{ones_place[write-1]}"
  end

  return num_string
end

puts wedding_number(1910)
puts wedding_number(1985)
puts wedding_number(1912)
puts wedding_number(2013)
puts wedding_number(2122)
puts wedding_number(1872)

