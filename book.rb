class Book
  attr_accessor :title, :author, :books

  @@instances = []
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    @@instances << self
  end

  def add_rental(rental)
    @rentals << rental
  end

  def self.all
    @@instances
  end
end
