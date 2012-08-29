#Exercise2. Run the following two programs and try and understand the difference in the outputs of the two programs. The program:
#def mtdarry
 #10.times do |num|
 #puts num
 #end
#end

#mtdarry
#and the program:

#def mtdarry
 #10.times do |num|
 #puts num
 #end
#end
 #puts mtdarry

def mtdarry
  10.times do |num|
    puts num
  end
end
mtdarry

def mtdarry
  10.times do |num|
    puts num
  end
end
puts mtdarry

# Answer:
# In the second statement the value of the method gets printed and this happen to be 10 since it starts counting instead of 0 with 1
