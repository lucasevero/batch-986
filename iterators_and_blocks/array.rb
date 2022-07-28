# ITERATIONS WITH ARRAYS

students = ["Verity", "Amanda", "Ahmed"]

# for caroline in students do
#   puts "#{caroline}"
# end

# for element in array do

# end

# students.each_with_index do |student, index|
#   puts "#{index + 1} - #{student} am great!"
# end

# students.each do |student|
#   p student
# end

# new_array = students.map do |student|
#   student.upcase
# end

# new_array.each do |student|
#   p student
# end

# selected_arr = students.select do |student|
#   "A lot of trash"
#   student.start_with?("A")
# end
# p selected_arr

# BLOCKS
# do |variable1|

# end

# { |variable2| }


# WRITING METHODS WITH BLOCKS
# def simple_method
#   puts "Calling the method"
#   puts "Not in the block yet"
#   yield
#   puts "Outside of the block again... all done!"
# end

# simple_method do
#   puts "I'm in the block now"
# end

# def timer(secs)
#   puts "starting the method"
#   yield(secs)
#   puts "ending the method"
# end

# timer(5) do |secs|
#   sleep(secs)
# end

p students.count do |student|
  student.start_with?("A")
end
p counter
