class Dog
  def initialize(species, name, age, gender)
    @species = species
    @name = name
    @age = age
    @gender = gender
  end

  def adult?
    return @age >= 2
  end

  def barks
    if adult?
      return "Bow-wow!"
    else
      return "Yip!"
    end
  end
end

nala = Dog.new(......)
nala.barks









class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def say_my_name
    puts "I'm #{@name}"
  end
end

class Employee < Person
  attr_reader :name
  attr_writer :name

  def initialize(name, age, position)
    super(name, age)
    # @name = name
    # @age = age

    @position = position
  end

  private

  def say_my_name
    super
    puts "I'm a good employee!!!"
  end
end

luca = Employee.new("Luca", 23, "Teacher")
luca.say_my_name
