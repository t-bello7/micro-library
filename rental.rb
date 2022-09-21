class Rental
  attr_accessor :date, :person, :book

  @@instances = []

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
    @@instances << self
  end

  def self.all
    @@instances
  end
end
