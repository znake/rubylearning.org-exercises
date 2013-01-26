# c to f
def celcius_to_fahrenheit (celsius)
  celsius.to_f * 9 / 5 + 32
end
puts format("%.2f", celcius_to_fahrenheit(37))
