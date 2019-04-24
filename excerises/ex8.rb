def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create empty array
  students = []
  months = ["January", "February", "March", "April", "May", "June", "July", "August", "September",
            "October", "November", "December",]
  # get their first name
  name = gets.chomp
  puts "Which cohort are they on?"
  date = gets.chomp
  date = "November" if date == ""
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add student hash to array
    students << {name: name, cohort: date.to_sym}
    puts "Now we have #{students.count} students"
    # get another name from user
    name = gets.chomp
  end
  if !date.include?(months.to_s)
    puts "That month is wrong! Try again please"
    date = gets.chomp
  end
  # return array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-----------------"
end

def print(students)
  students.map 
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
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
