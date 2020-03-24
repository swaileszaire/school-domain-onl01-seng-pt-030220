class School

  attr_reader :name 

  def initialize(name)
    @name = name 
    @roster = Hash.new {|h, k| h[k] = []}
   end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      roster[grade] << name 
    else roster[grade] = name
  end 

  def grade(grade)
    self.roster[grade]
  end 
   
  def sort 
  self.roster.each do |grade, students| 
    students.sort!
  end
end 

school = School.new("Bayside High School")
school.add_student("AC Slater" , 9)
school.add_student("Blake Johnson", 7)
school.add_student("John Bauer", 7)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11) 
school.add_student("Bart Simpson", 9)
school.roster
school.sort   
