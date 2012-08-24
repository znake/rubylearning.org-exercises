#Using what we have learned so far: I wonder if anyone could have a crack at working out the age in years and months form. For example “I’m 32 years and 6 months old.”
#Use the following values for age_in_seconds:

#979000000
#2158493738
#246144023
#1270166272
#1025600095

seconds_in_minute = 60
seconds_in_hour   = 60  * seconds_in_minute
seconds_in_day    = 24  * seconds_in_hour
@seconds_in_year  = 365 * seconds_in_day
@seconds_in_month = 30  * seconds_in_day

def sec_to_years(age_in_seconds)
  age_in_seconds / @seconds_in_year
end

def sec_to_month(age_in_seconds)
  (age_in_seconds % @seconds_in_year) / @seconds_in_month
end

def print_age(age_in_seconds)
  puts "I'm #{sec_to_years(age_in_seconds)} years and #{sec_to_month(age_in_seconds)} months old."
end

print_age(979000000)
print_age(2158493738)
print_age(246144023)
print_age(1270166272)
print_age(1025600095)
