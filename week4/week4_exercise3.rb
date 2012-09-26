#Exercise3. Call this program (p026zdeafgm2.rb) - Modify your Deaf Grandma program (Week 3 / Exercise6): What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma. You must shout BYE three separate times. If you shout BYEBYEBYE or BYE BYE BYE, grandma should pretend not to hear you (and not count it as a BYE).

count = 0
say = ""
until count >= 3 do
  puts count
  puts "What to say to your grandma?"
  STDOUT.flush
  say = gets.chomp
  if say == 'BYE'
    count += 1
  else
    count = 0
  end
  if say == say.upcase
    puts "NO, NOT SINCE #{rand(1930...1951)}"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
