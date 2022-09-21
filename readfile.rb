require_relative './book'
require 'json'

def load_books
  books_store = []
  book_loc = './database/book.json'
  if File.exist?(book_loc)
    data = File.read(book_loc)
    JSON.parse(data).each do |n|
      books_store << Book.new(n['Title'], n['Author'])
    end
  else
    File.write(book_loc, books_store)
  end
end

def save_book(books)
  books_store = []
  book_loc = './database/book.json'
  books.each do |n|
    books_store << { 'Title' => n.title, 'Author' => n.author }
  end
  File.write(book_loc, books_store.to_json)
end

def save_person
  # if files exist append to it
  # else create a new file and save to it
end

def save_rentals
  # if files exist append to it
  # else create a new file and save to it
end

# puts load_books
