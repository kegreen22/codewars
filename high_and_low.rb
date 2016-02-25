def high_and_low(number)

# put the input into an array and sort the numbers, choosing the highest (last) and first (lowest)
high = number.split(' ').sort.last
low = number.split(' ').sort.first

puts "High number is #{high} and the low number is #{low}"

end

# test
high_and_low("1 2 3 4 5")
high_and_low("1 2 -3 4 5")
high_and_low("1 9 3 4 -5")