#Exercise6. Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950. You can't stop talking to grandma until you shout BYE.

#Adapted from Chris Pine's Book.

#For example:

#You enter: Hello Grandma
#Grandma responds: HUH?! SPEAK UP, SONNY!
#You enter: HELLO GRANDMA
#Grandma responds: NO, NOT SINCE 1938!

say = ""
until say == "BYE" do
  puts "What to say to your grandma?"
  STDOUT.flush
  say = gets.chomp
  if say == say.upcase
    puts "NO, NOT SINCE #{rand(1930...1950)}"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end

