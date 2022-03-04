# Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.

def get_student student = {
    name: "",
    hobbies: "",
    birthplace: "",
    cohort: "November"
  }

  print "Enter name: "
  name = gets.chomp
  student[:name] = name
  if !name.empty?
    print "Enter hobbies: "
    hobbies = gets.chomp
    student[:hobbies] = hobbies
    print "Enter birthplace: "
    birthplace = gets.chomp
    student[:placeofbirth] = birthplace
  end
  return student
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = get_student

  name = gets.chomp

  while !name.empty? do 
     students << {name: name, cohort: :november}
     puts "Now we have #{students.count} students"
     name = gets.chomp
  end
  students = get_student
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
     puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)