#Exercise8. Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz". Discuss this in the FizzBuzz Forum.

s = ""

for i in 1..100 do
  if i % 3 == 0 && i % 5 == 0
    s += "FizzBuzz\n"
  elsif i % 3 == 0
    s += "Fizz\n"
  elsif i % 5 == 0
    s += "Buzz\n"
  else
    s += "#{i}\n"
  end
end

puts s.inspect
