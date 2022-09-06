require_relative './person'

class Studet < Person
  def initialize(classroom = 'unknown')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
