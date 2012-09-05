#Exercise11. Write a Ruby program that, when given an array: collection = [12, 23, 456, 123, 4579] prints each number, and tells you whether it is odd or even.

collection = [12, 23, 456, 123, 4579]
for number in collection
  if number % 2 == 0
    puts "The number #{number} is even."
  else
    puts "The number #{number} is odd."
  end
end
