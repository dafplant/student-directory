def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create empty array
  students = []
  # get their first name
  name = gets.chomp
  puts "Enter #{name} age:"
  age = gets.chomp.to_i
  puts "Enter #{name} height"
  height = gets.chomp
  puts "Enter #{name} hobbies:"
  hobbies = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add student hash to array
    students << {name: name, cohort: :november, age: age, height: height, hobbies: hobbies}
    puts "Now we have #{students.count} students"
    # get another name from user
    name = gets.chomp
    puts "Enter #{name} age:"
    age = gets.chomp.to_i
    puts "Enter #{name} height"
    height = gets.chomp
    puts "Enter #{name} hobbies:"
    hobbies = gets.chomp
    end
  end
  # return array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-----------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort), #{student[:age]} years old, #{student[:height]} tall,
    and hobbies are #{student[:hobbies]}"
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
# Nowt happens until we call the methods
print_header
print(students)
print_footer(students)
