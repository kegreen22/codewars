# Codewars - vampire numbers
# 6 * 21 = 126
# 6 and 21 would be valid 'fangs' for a vampire number as the
# digits 6, 1, and 2 are present in both the product and multiplicands

# 10 * 11 = 110
# 110 is not a vampire number since there are three 1's in the
# multiplicands, but only two 1's in the product
# Create a function that can receive two 'fangs' and determine if the product of the two is a valid vampire number.
def vampire_test(num1, num2)
  product = num1 * num2
  vampire = false

  check1 = num1.to_s.split('') #split the numbers into strings and put them into an array to facilitate checking
  check2 = num2.to_s.split('')

  # check that all of the numbers in the factors appear in the product

  product_check = product.to_s.split('')

  flag1, flag2 = true
  flag1 = array_check(check1, product_check)
  flag2 = array_check(check2, product_check)

    if (flag1 && flag2) == true
      puts "The two numbers are #{num1} and #{num2} and they are fangs of the product #{product}"
      return true   # values are vampire numbers

    else
      puts "The two numbers are #{num1} and #{num2} and they are not fangs of the product #{product}"
      return false   # values are not vampire numbers

    end
end


def array_check(arr, prod)   # check that the numbers appear in the product
  flag = true
  arr.each do |x|
    if (prod.include?(x) == false)
      flag = false
      else
        prod.include?(x)
        index_to_remove = prod.index(x)
        prod.slice!(index_to_remove)
      end

  end
    flag
end

# test values
vampire_test(21, 60)
vampire_test(10, 50)
vampire_test(20, 80)
vampire_test(6, 21)
vampire_test(150, 340)
vampire_test(110, 262)
vampire_test(31, 33)