#This challenge has been set by our Mentor Victor Goff. In his words:

#This is a modified version of a challenge delivered to my batch by José Carlos Monteiro that taught me and several of my classmates a lot about Ruby just by accepting and working through it:

#Write a program that asks for user input, then changes that input from one temperature unit to another based upon the user's wishes.

#Write code to handle user input. That code must include a succinct explanation of how the user should type the values so the program can understand if it's meant to convert from Celsius to Fahrenheit or vice-versa. It will then proceed to "parse" the input and obtain two "values": "conversion to make" and "value to use", where the first means to convert from Celsius to Fahrenheit or vice-versa and the second is the temperature value to be converted.

#Write DRY (Don't Repeat Yourself) code - method(s) - for the conversion process, assuming that the temperature value is always passed as a Float. This is to "prevent" you from writing code to validate the argument. But that doesn't mean you shouldn't validate the value. Meaning that you shouldn't worry if the argument is or is not a Float - assume it is - and instead worry if the value is within an "acceptable range". Consider absolute zero.

#If you want to take this challenge even further, then make the conversion program also able to handle other units of temperature (such as Kelvin, Rankine, etc).


# get the temperature unit and exits program if
# the user types a wrong input
def get_temperature_unit(input)
  case input
  when "1" then :celsius
  when "2" then :fahrenheit
  when "3" then :kelvin
  else :wrong_input
  end
end

# check if the given value is not to low for it's unit
def value_ok(unit, value_to_convert)
  is_ok = case unit
          when :celsius then
            begin
              celsius_min = -273.15
              value_to_convert > celsius_min
            end
          when :fahrenheit then
            begin
              fahrenheit_min = -459.67
              value_to_convert > fahrenheit_min
            end
          when :kelvin then
            begin
              kelvin_min = 0
              value_to_convert > kelvin_min
            end
          else false
          end
  is_ok
end

def celsius_to_fahrenheit(value_to_convert)
  value_to_convert.to_f * 9/5 + 32
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

def getResultString(unit_from, unit_to, value_to_convert, result)
  "\n#{format("%.2f", value_to_convert)} degrees of #{unit_from} are #{format("%.2f", result)} of #{unit_to}!"
end

# check here:
# http://en.wikipedia.org/wiki/Comparison_of_temperature_scales#Comparison_of_temperature_scales

test_values = [
  { "unit_from" => "1", "unit_to" => "2", "value_to_convert" => 0.01 },
  { "unit_from" => "1", "unit_to" => "3",     "value_to_convert" => 0.01 },

  { "unit_from" => "2", "unit_to" => "1", "value_to_convert" => 0 },
  { "unit_from" => "2", "unit_to" => "3",  "value_to_convert" => 0 },

  { "unit_from" => "3", "unit_to" => "1",    "value_to_convert" => 0 },
  { "unit_from" => "3", "unit_to" => "2", "value_to_convert" => 0 }
]

test_values.each do |test_input|

  unit_from        = get_temperature_unit(test_input["unit_from"])
  unit_to          = get_temperature_unit(test_input["unit_to"])
  value_to_convert = get_temperature_unit(test_input["value_to_convert"])

  case unit_from
  when :celsius then
    begin
      case unit_to
      when :fahrenheit then
        begin
          result = celsius_to_fahrenheit(value_to_convert)
          puts getResultString(unit_from, unit_to, value_to_convert, result)
        end
      when :kelvin then
        begin
          result = celsius_to_kelvin(value_to_convert)
          puts getResultString(unit_from, unit_to, value_to_convert, result)
        end
      end
    end
  when :fahrenheit then
    begin
      case unit_to
      when :celsius then
        begin
          result = fahrenheit_to_celsius(value_to_convert)
          puts getResultString(unit_from, unit_to, value_to_convert, result)
        end
      when :kelvin then
        begin
          result = fahrenheit_to_kelvin(value_to_convert)
          puts getResultString(unit_from, unit_to, value_to_convert, result)
        end
      end
    end
  when :kelvin then
    begin
      case unit_to
      when :celsius then
        begin
          result = kelvin_to_celsius(value_to_convert)
          puts getResultString(unit_from, unit_to, value_to_convert, result)
        end
      when :fahrenheit then
        begin
          result = kelvin_to_fahrenheit(value_to_convert)
          puts getResultString(unit_from, unit_to, value_to_convert, result)
        end
      end
    end
  end

end

