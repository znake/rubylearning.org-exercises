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

  def add_method(name, &block)
    raise ArgumentError, "need a block" if !block
    define_method(name, block)
  end

end

d = Dog.new("Pluto")
puts d.bark
puts d.eat
puts d.chase_cat
