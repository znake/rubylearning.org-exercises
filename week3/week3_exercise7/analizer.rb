file_name = "text.txt"

char_count = 0
char_count_without_spaces = 0
line_count = 0
word_count = 0
sentence_count = 0
paragraph_count = 0
avg_words_per_senctence = 0
avg_sentences_per_paragraph = 0
previous_line = ""

if File.zero?(file_name)
  puts "File is empty. No statistics possible!"
  exit
else
  # if file is not empty there is at least 1 paragraph
  paragraph_count = 1
end

IO.foreach(file_name) do |line|
  # count characters of line
  char_count += line.strip.length
  # count characters of line without spaces
  char_count_without_spaces += line.delete(' ').strip.length
  # count lines (if an empty line like "\n" counts)
  line_count += 1
  # count words
  word_count += line.split(' ').length
  # count sentences
  # count sentences with .
  sentence_count += line.split('.').length-1
  # count sentences with !
  sentence_count += line.split('!').length-1
  # count sentences with ?
  sentence_count += line.split('?').length-1
  # count paragraphs
  paragraph_test_string = previous_line << line
  #puts paragraph_test_string.inspect
  if paragraph_test_string.inspect.split('\n\n').length > 1
    paragraph_count += 1
  end
  previous_line = line
end

if sentence_count != 0
  avg_words_per_senctence = word_count / sentence_count
end

if paragraph_count != 0
  avg_sentences_per_paragraph = sentence_count / paragraph_count
end

puts "Character count: #{char_count}"
puts "Character count (excluding spaces): #{char_count_without_spaces}"
puts "Line count: #{line_count}"
puts "Word count: #{word_count}"
puts "Sentence count: #{sentence_count}"
puts "Paragraph count: #{paragraph_count}"
puts "Average number of words per sentence: #{avg_words_per_senctence}"
puts "Average number of sentences per paragraph: #{avg_sentences_per_paragraph}"
