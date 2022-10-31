class Rental
  attr_accessor :date, :person

  def initialize(date, person, book)
    book.rentals << self
    person.rentals << self
    @date = date
    @person = person
    @book = book
  end
end
