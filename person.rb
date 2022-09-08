class Nameable
  def correct_name
    raise NotImplementedError
  end
end

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rental

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    parent_permission || @age >= 18
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals << rental
  end

  private

  def of_age?
    @age >= 18
  end
end

class NameableBaseDecorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < NameableBaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < NameableBaseDecorator
  def correct_name
    @nameable.correct_name
    @nameable.correct_name[0...10] if @nameable.correct_name.length > 10
  end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
