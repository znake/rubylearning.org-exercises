#Exercise3. Write a Ruby program that displays how old I am, if I am 979000000 seconds old. Display the result as a floating point (decimal) number to two decimal places (for example, 17.23).
#Note: To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57

# 60sec -> 1min, 60min -> 1h, 24h -> 1 day, 365 days -> 1 year
age_in_seconds = 979000000.to_f / 60 / 60 / 24 / 365
puts format("%.2f", age_in_seconds) + " years old"
