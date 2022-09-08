class Book
  attr_accessor :title, :author, :books

  def initialize(title, author)
    @title = title
    @author = author
    @books = []
  end

  def add_rental(book)
    @books << book
  end
end
