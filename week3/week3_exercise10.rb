#Exercise10. Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5] calculates the sum of its elements.

collection = [1, 2, 3, 4, 5]
sum = 0
for element in collection
  sum += element
end

puts sum
