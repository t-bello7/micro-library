require_relative './person'

class Student < Person
  attr_getter :classroom

  def initialize(classroom = 'unknown')
    super(age, name, parent_permission)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
