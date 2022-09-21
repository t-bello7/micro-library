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

def load_rentals
  rental_store = []
  rental_loc = './database/rental.json'
  if File.exist?(rental_loc)
    data = File.read(rental_loc)
    JSON.parse(data).each do |n|
      rental_store = Rental.new(n['person'], n['book'], n['date'])
    end
  else
    File.write(rental_loc, rental_store)
  end
end

def save_rentals(rental)
  rental_store = []
  rental_loc = './database/rental.json'
  rental.each do |n|
    rental_store << { 'person' => n.person, 'Book' => n.book, 'Date' => n.date }
  end
  File.write(rental_loc, rental_store.to_json)
end
