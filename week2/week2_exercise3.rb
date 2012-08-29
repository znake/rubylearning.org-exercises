#Exercise3. Write a method leap_year?. It should accept a year value from the user, check whether it's a leap year, and then return true or false. With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) and the number of minutes in a non-leap year (1900 and 2005). Note: Every year whose number is divisible by four without a remainder is a leap year, excepting the full centuries, which, to be leap years, must be divisible by 400 without a remainder. If not so divisible they are common years. 1900, therefore, is not a leap year.

# check's if given year is a leap year
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

# calculates minutes of the given year
def minutes_of_year(year)
  minute           = 1
  minutes_per_hour = minute * 60
  minutes_per_day  = minutes_per_hour * 24
  minutes_per_year = 0
  if leap_year?(year)
    minutes_per_year = minutes_per_day * 366
  else
    minutes_per_year = minutes_per_day * 365
  end
  minutes_per_year
end

puts minutes_of_year(2004) # leap year
puts minutes_of_year(2000) # leap year
puts minutes_of_year(1900) # non-leap year
puts minutes_of_year(2005) # non-leap year
