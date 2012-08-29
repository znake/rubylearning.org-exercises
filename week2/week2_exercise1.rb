#Exercise1. Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time, using all that we have learned so far. The expected output is:

#>ruby tmp.rb
#Line 1: Welcome to the forum.
#Line 2: Here you can learn Ruby.
#Line 3: Along with other members.
#>Exit code: 0

def addLines(text)
  lines = text.split("\n")
  linified_text = ""
  counter = 0
  lines.each do |line|
    linified_text << "\n" if counter > 0
    linified_text << "Line #{counter+1}: #{lines[counter]}"
    counter += 1
  end
  linified_text
end

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

puts addLines(s)
