#Exercise2. Thanks to Marcos Souza for this exercise. A plain text file has the following contents:

#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test word test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test

#Observe that in this file, there exists a word 'word'. Write a clever but readable Ruby program that updates this file and the final contents become like this:
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test inserted word test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test
#test test test test test

#Do not hard-code the file name.

new_lines = ""
puts "Please enter the name of the file: "
STDOUT.flush
file_name = gets.chomp

IO.foreach(file_name) do |line|
  if line.include? "word"
    new_lines << line.gsub("word", "inserted word")
  else
    new_lines << line
  end
end

IO.write(file_name, new_lines)
