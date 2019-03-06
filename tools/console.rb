require_relative '../config/environment.rb'
require 'pry'

# create your variables and/or write any tests here

buffy = Student.new("Buffy Summers")
willow = Student.new("Willow Rosenberg")
xander = Student.new("Xander Harris")

bio = Course.new("Biology", "Science")
chem = Course.new("Chemistry", "Science")
geo = Course.new("Geometry", "Math")

en1 = Enrollment.new(buffy, bio)
en2 = Enrollment.new(buffy, geo)
en3 = Enrollment.new(willow, bio)
en4 = Enrollment.new(xander, bio)

puts "Knows all students?"
puts Student.all == [buffy, willow, xander]

puts "Knows student name?"
puts buffy.name == "Buffy Summers"

puts "Can find student by name?"
puts Student.find_by_name("Buffy Summers") == buffy 

puts "Can get student's enrollments?"
puts buffy.enrollments == [en1, en2]

puts "Can get student's courses?"
puts buffy.courses == [bio, geo]

puts "Knows all courses?"
puts Course.all == [bio, chem, geo]

puts "Knows all courses in a department?"
puts Course.find_by_department("Science") == [bio, chem]

puts "Knows all students in a course?"
puts bio.students == [buffy, willow, xander]

puts "Knows all enrollments?"
puts Enrollment.all == [en1, en2, en3, en4]

puts "Knows student of an enrollment?"
puts en1.student == buffy 

puts "Knows course of an enrollment?"
puts en1.course = bio