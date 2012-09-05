#Exercise5.
#Given a string s = 'key=value', create two strings s1 and s2 such that s1 contains key and s2 contains value. Hint: Use some of the String functions.

s = 'key=value'
a = s.split('=')

s1 = a[0]
s2 = a[1]

puts s1
puts s2
