#This challenge has been set by our Mentor Victor Goff. In his words:

#This is a modified version of a challenge delivered to my batch by José Carlos Monteiro that taught me and several of my classmates a lot about Ruby just by accepting and working through it:

#Write a program that asks for user input, then changes that input from one temperature unit to another based upon the user's wishes.

#Write code to handle user input. That code must include a succinct explanation of how the user should type the values so the program can understand if it's meant to convert from Celsius to Fahrenheit or vice-versa. It will then proceed to "parse" the input and obtain two "values": "conversion to make" and "value to use", where the first means to convert from Celsius to Fahrenheit or vice-versa and the second is the temperature value to be converted.

#Write DRY (Don't Repeat Yourself) code - method(s) - for the conversion process, assuming that the temperature value is always passed as a Float. This is to "prevent" you from writing code to validate the argument. But that doesn't mean you shouldn't validate the value. Meaning that you shouldn't worry if the argument is or is not a Float - assume it is - and instead worry if the value is within an "acceptable range". Consider absolute zero.

#If you want to take this challenge even further, then make the conversion program also able to handle other units of temperature (such as Kelvin, Rankine, etc).

@choose_options = "1 for celsius\n2 for fahrenheit\n3 for kelvin"

# get the temperature unit and exits program if
# the user types a wrong input
def get_temperature_unit(input)
  temperature_unit = case input
    when "1" then :celsius
    when "2" then :fahrenheit
    when "3" then :kelvin
    else :wrong_input
  end
  if temperature_unit == :wrong_input
    puts "\n------------------> Wrong input, only: \n#{@choose_options} \nare allowed. Please restart and try again!"
    exit
  end
  temperature_unit
end

def value_ok?(unit, value_to_convert)
  # check celsius
  if unit == :celsius then
    celsius_min = -273.15
    if value_to_convert < celsius_min then
      false
    else
      true
    end
  end
  # check fahrenheit
  if unit == :fahrenheit then
    fahrenheit_min = -459.67
    if value_to_convert < fahrenheit_min then
      false
    else
      true
    end
  end
  # check kelvin
  if unit == :kelvin then
    kelvin_min = 0
    if value_to_convert < kelvin_min then
      false
    else
      true
    end
  end
end

def celsius_to_fahrenheit(value_to_convert)
  value_to_convert.to_f * 9/5 * 32
end

def celsius_to_kelvin(value_to_convert)
  value_to_convert + 273.15
end

def fahrenheit_to_celsius(value_to_convert)
  (value_to_convert - 32).to_f * 5/9
end

def fahrenheit_to_kelvin(value_to_convert)
  (value_to_convert + 459.67) * 5/9
end

def kelvin_to_celsius(value_to_convert)
  value_to_convert - 273.15
end

def kelvin_to_fahrenheit(value_to_convert)
  value_to_convert * 9/5 - 459.67
end

# get the temperature unit_from
puts "Please insert a number for one of the following temperature units FROM which you want to make a conversion"
puts @choose_options
STDOUT.flush
unit_from = get_temperature_unit(gets.chomp)

# get the value to convert
puts "Please enter the #{unit_from} value you want to convert"
STDOUT.flush
value_to_convert = gets.chomp


# get the temperature unit_to
puts "Please insert a number for one of the following temperature units TO which you want to make the conversion"
puts @choose_options
STDOUT.flush
unit_to = get_temperature_unit(gets.chomp)
