#Exercise3. Write a method leap_year?. It should accept a year value from the user, check whether it's a leap year, and then return true or false. With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) and the number of minutes in a non-leap year (1900 and 2005). Note: Every year whose number is divisible by four without a remainder is a leap year, excepting the full centuries, which, to be leap years, must be divisible by 400 without a remainder. If not so divisible they are common years. 1900, therefore, is not a leap year.

def leap_year?(year)
  return_value = false
  if year % 4 == 0
    if year % 100 != 0
      return_value = true
    end
    if year % 100 == 0 and year % 400 == 0
      return_value = true
    end
  end
  return_value
end

puts leap_year?(2000)
puts leap_year?(1900)
puts leap_year?(2004)
puts leap_year?(2005)
