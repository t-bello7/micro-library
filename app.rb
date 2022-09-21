require_relative './book'
require_relative './person'
require_relative './rental'
require_relative './student'
require_relative './teacher'
require_relative './require_input'
require_relative './readfile'

class App
  def initialize
    load_books
    load_person
    load_rentals
  end

  def create_person(person_type, age, name, more_info, parent_permission: true)
    if person_type == 1
      Student.new(age, name, more_info, parent_permission: parent_permission)
    else
      Teacher.new(age, name, more_info)
    end
  end

  def create_book(title, author)
    Book.new(title, author)
  end

  def create_rental(date, person, book)
    Rental.new(date, person, book)
  end

  def list_rentals(id)
    list_people.each do |n|
      next unless n.id == id

      n.rentals.each do |m|
        puts "Date: #{m.date}, Book \"#{m.book.title}\" by #{m.book.author}"
      end
    end
  end

  def list_books
    Book.all
  end

  def list_rental
    Rental.all
  end

  def list_people
    Person.all
  end

  def display
    puts
    puts ' ****************************************'
    puts 'Welcome to School library'
    puts
    puts 'Please choose an option by entering a number:'
    puts ['1 - List all books', '2 - List all people', '3 - Create a person', '4 - Create a book',
          '5 - Create a rental', '6 - List all rentals for a given id', '7 - Exit']
  end

  def display_books
    list_books.each do |n|
      puts "Title: \"#{n.title}\", Author: #{n.author}"
    end
  end

  def display_people
    list_people.each do |n|
      puts "[#{n.class.name}] Name: #{n.name}, ID: #{n.id}, Age: #{n.age}"
    end
  end

  def display_create_people
    person_type, age, name = grab_person_data
    case person_type
    when 2
      print 'specialization:'
      specalization = gets.chomp
      create_person(person_type, age, name, specalization)
    when 1
      print 'Has parent permission ? [Y/N]:'
      parent_permission = gets.chomp
      print 'classroom:'
      classroom = gets.chomp
      create_person(person_type, age, name, classroom, parent_permission: true) if %w[Y y].include?(parent_permission)
      create_person(person_type, age, name, classroom, parent_permission: false) if %w[N n].include?(parent_permission)
    end
  end

  def display_create_book
    title, author = grab_book_data
    create_book(title, author)
    puts 'Book created successfully'
  end

  def display_create_rental
    book_id = grab_book_index
    book = list_books[book_id]
    person_id = grab_person_index
    person = list_people[person_id]
    date = grab_date
    new_rental = create_rental(date, person, book)
    person.add_rental(new_rental)
    puts 'Rental created successfully'
  end

  def display_select_by_id
    id = grab_id
    list_rentals(id)
  end

  def exit_app
    save_book(list_books)
    save_person(list_people)
    save_rentals(list_rental)
  end
end
