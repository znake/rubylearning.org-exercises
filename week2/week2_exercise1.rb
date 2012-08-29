#Exercise1. Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time, using all that we have learned so far. The expected output is:

#>ruby tmp.rb
#Line 1: Welcome to the forum.
#Line 2: Here you can learn Ruby.
#Line 3: Along with other members.
#>Exit code: 0

def addLines(text)
  lines = text.split("\n")
  linified_text = ""
  lines.each do |line|
    line_index = lines.index(line)
    linified_text << "\n" if line_index > 0
    linified_text << "Line #{line_index+1}: #{line}"
  end
  linified_text
end

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

puts addLines(s)
