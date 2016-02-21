# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contains any char.

# Examples input/output:

# XO("ooxx") =&gt; true
# XO("xooxx") =&gt; false
# XO("ooxXm") =&gt; true
# XO("zpzpzpp") =&gt; true // when no 'x' and 'o' is present should return true
# XO("zzoo") =&gt; false

def xo(str)

  # compare elements/chars in string to see how often 'x's and 'o's occur
  amount_of_x = str.downcase.count('x')
  amount_of_o = str.downcase.count('o')

  # return true if amount of 'x's and 'o's are the same or if there are no 'x's or 'o's
  if (amount_of_x == amount_of_o)
    puts "The string is #{str} and the x's and o's are the same or there are no x's or o's"
  else
  # return false if amount of 'x's and 'o's are not the same
    puts "The string is #{str} and the x's and o's are not the same"
  end
end

# test
xo("xxxzaaaooo")
xo('jumpman')
xo('ooxx')
xo('xooxx')

