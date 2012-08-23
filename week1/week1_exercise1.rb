#Exercise1. Before executing the code given below, guess the results. Next, execute the code. Did you get it right? If you did not get it right, can you think of why?

#Discuss your first guess and what you got when running the code.
#Goal: Understanding operator precedence and association.


y = false
z = true
x = y or z   # = has precedence here -> x is false
puts x
(x = y) or z # braces have precedence here -> x is false
puts x
x = (y or z) # braces have precedence here and or gives us true -> x is true
puts x
