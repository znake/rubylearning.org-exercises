y = false
z = true
x = y or z   # = has precedence here -> x is false
puts x
(x = y) or z # braces have precedence here -> x is false
puts x
x = (y or z) # braces have precedence here and or gives us true -> x is true
puts x
