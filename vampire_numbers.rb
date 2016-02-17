# Codewars - vampire numbers
# 6 * 21 = 126
# 6 and 21 would be valid 'fangs' for a vampire number as the
# digits 6, 1, and 2 are present in both the product and multiplicands

# 10 * 11 = 110
# 110 is not a vampire number since there are three 1's in the
# multiplicands, but only two 1's in the product
# Create a function that can receive two 'fangs' and determine if the product of the two is a valid vampire number.
require 'set'  # needed to see if numbers are a subset of their product

def vampire_test(num1, num2)
  product = num1 * num2
  vampire = false

    # check criteria - that both numbers don't end in zero
  check1 = num1.to_s.split('') #split the numbers into strings and put them into an array to facilitate checking
  check2 = num2.to_s.split('')

  # puts check1
  # puts check2

  if ((check1[-1] == '0') && (check2[-1] == '0'))
    puts "The two numbers are #{num1} and #{num2} and they are not fangs of the product #{product}"

  elsif
    # check that all of the numbers in the factors appear in the product
    #check1_set = check1.to_set
    #check2_set = check2.to_set
    product_check = product.to_s.split('')

    #product_check_set = product_check.to_set
    check3 = check1 + check2
    p check3
    p product_check

      if product_check.eql?(check3)
        # if (check1_set.subset?(product_check_set) && check2_set.subset?(product_check_set))
        #  if (product_check_set.proper_superset?(check1_set) && product_check_set.proper_superset?(check2_set))
        vampire = true
        puts "The two numbers are #{num1} and #{num2} and they are fangs of the product #{product}"
      end
  else
    puts "The two numbers are #{num1} and #{num2} and they are not fangs of the product #{product}"

  end

end

# test values
vampire_test(21, 60)
vampire_test(10, 50)
vampire_test(20, 80)
vampire_test(6, 21)
vampire_test(150, 340)
vampire_test(110, 262)
vampire_test(31, 33)