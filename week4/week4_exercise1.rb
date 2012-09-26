class Dog

  def initialize(name)
    @name = name
  end

  def bark()
    "ruff ruff"
  end

  def eat()
    "nom nom"
  end

  def chase_cat()
    "chasing cat"
  end

end

d = Dog.new("Pluto")
puts d.bark
puts d.eat
puts d.chase_cat
