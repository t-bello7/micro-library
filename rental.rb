class Rental
  attr_accessor :date , :person
  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
  end
end
