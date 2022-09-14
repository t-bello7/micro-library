require_relative './book'
require_relative './person'
require_relative './rental'
require_relative './student'
require_relative './teacher'

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
        '5 - Create a rental']
  puts ['6 - List all rentals for a given id', '7 - exit']
end

loop do
  display
  input = gets.chomp.to_i
  case input
  when 1
    list_books.each do |n|
      puts "Title: \"#{n.title}\", Author: #{n.author}"
    end
  when 2
    list_people.each do |n|
      puts "[#{n.class.name}] Name: #{n.name}, ID: #{n.id}, Age: #{n.age}"
    end
  when 3
    puts 'Do you want to create a student (1) or a teacher (2) ? [Input the number]:'
    person_type = gets.chomp.to_i
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    case person_type
    when 2
      print 'specialization:'
      specalization = gets.chomp
      create_person(person_type, age, name, specalization)
      puts 'Person created successfully'
    when 1
      print 'Has parent permission ? [Y/N]:'
      parent_permission = gets.chomp
      print 'classroom:'
      classroom = gets.chomp
      create_person(person_type, age, name, classroom, parent_permission: true) if %w[Y y].include?(parent_permission)
      create_person(person_type, age, name, classroom, parent_permission: false) if %w[N n].include?(parent_permission)
      puts 'Person created successfully'
    end
  when 4
    print 'Title:'
    title = gets.chomp
    print 'Author:'
    author = gets.chomp
    create_book(title, author)
    puts 'Book created successfully'
  when 5
    puts 'Select a book from the following list by number:'
    list_books.each_with_index do |n, index|
      puts "#{index}) Title: \"#{n.title}\", Author: #{n.author}"
    end
    book_id = gets.chomp.to_i
    book = list_books[book_id]
    puts 'Select a person from the following list by number(not id):'
    list_people.each_with_index do |n, index|
      puts "#{index}) [#{n.class.name}] Name: #{n.name}, ID: #{n.id}, Age: #{n.age}"
    end
    person_id = gets.chomp.to_i
    person = list_people[person_id]
    print 'Date: '
    date = gets.chomp
    new_rental = create_rental(date, person, book)
    person.add_rental(new_rental)
  when 6
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals:'
    list_rentals(id)
  when 7
    break
  end
end
