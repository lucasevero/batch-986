class Student
  # STATE + BEHAVIOR

  # attr_reader :first_name
  # attr_writer :first_name
  attr_accessor :first_name

  def initialize(first_name, age, tired = false)
    # STATE
    @first_name = first_name
    @age = age
    @tired = tired
  end

  # Behavior!
  def say_hi
    "Hi, #{first_name}"
  end

  def went_out_late_last_night!
    @tired = true
  end

  def fresh?
    !@tired
  end

  # def first_name
  #   @first_name
  # end

  # def first_name=(new_name)
  #   @first_name = new_name
  # end
end

thomas = Student.new("Thomas", 26)
luca = Student.new("Luca", 23)


puts thomas.fresh?
thomas.went_out_late_last_night!
puts thomas.fresh?

# p thomas.first_name = "Luca"
# p thomas.first_name
