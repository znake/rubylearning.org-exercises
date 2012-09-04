#Exercise1. Why is the output of this program as shown below:

#50
#10

def method
  a = 50
  puts a
end

a = 10
method
puts a

# because the a is once in the local scope of the method and once a global one
