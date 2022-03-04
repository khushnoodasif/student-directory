def save_students
   file = File.open("students.csv", "w")
   @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv_line = student_data.join(",")
      file.puts csv_line
   end
   file.close
end