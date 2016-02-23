def high_and_low(number)
# collapse string, put into array, sort and print out the first and last elements
# number = number.to_s

high = number.split(' ').sort.last
low = number.split(' ').sort.first

puts "High number is #{high} and the low number is #{low}"

end

# test
high_and_low("1 2 3 4 5")
high_and_low("1 2 -3 4 5")
high_and_low("1 9 3 4 -5")