#Exercise3. Write a Ruby program that displays how old I am, if I am 979000000 seconds old. Display the result as a floating point (decimal) number to two decimal places (for example, 17.23).
#Note: To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57

age_in_seconds = 979000000
# 60sec -> 1min, 60min -> 1h, 24h -> 1 day, 356 days -> 1 year
one_year_in_seconds = 60 * 60 * 24 * 356
age_in_years = age_in_seconds / one_year_in_seconds.to_f
puts format("%.2f", age_in_years) + " years old"
