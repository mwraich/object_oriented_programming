# # 1

# module Greeting
#   puts "Hi, my name is #{name}"
# end

class Person
attr_accessor :name
def initialize(name)
  @name = name
  puts "Hi, my name is #{name}"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object."
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

chris = Instructor.new("Chris")
christina = Student.new("Christina")
chris.teach
christina.learn
#christina.teach => This produces and error because that method is restricted to
# the instructor class and as a student she cannot access that method
