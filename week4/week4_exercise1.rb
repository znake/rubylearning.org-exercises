class Dog

  def initialize(name)
    @name = name
  end

  def bark()
    puts "wau wau"
  end

  def eat()
    puts "nom nom"
  end

  def chase_cat()
    puts "fu cat I'll get u"
  end

end

d = Dog.new('Pluto')
d.bark
