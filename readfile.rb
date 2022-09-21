require_relative './book'
require_relative './person'
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

def load_person
  person_store = []
  person_loc = './database/person.json'
  if File.exist?(person_loc)
    data = File.read(person_loc)
    JSON.parse(data).each do |n|
      person_store = Person.new(n['Age'], n['Name'])
    end
  else
    File.write(person_loc, person_store)
  end
end

def save_person(person)
  person_store = []
  person_loc = './database/person.json'
  person.each do |n|
    person_store << { 'Age' => n.age, 'Name' => n.name }
  end
  File.write(person_loc, person_store.to_json)
end

def save_rentals
  # if files exist append to it
  # else create a new file and save to it
end

# puts load_books
