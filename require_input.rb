def grab_book_data
  print 'Title:'
  title = gets.chomp
  print 'Author:'
  auther = gets.chomp
  [title, auther]
end

def grab_person_data
  puts 'Do you want to create a student (1) or a teacher (2) ? [Input the number]:'
  person_type = gets.chomp.to_i
  print 'Age:'
  age = gets.chomp
  print 'Name:'
  name = gets.chomp
  [person_type, age, name]
end

def grab_id
  print 'ID of person: '
  id = gets.chomp.to_i
  puts 'Rentals:'
  id
end

def grab_book_index
  puts 'Select a book from the following list by number:'
  list_books.each_with_index do |n, index|
    puts "#{index}) Title: \"#{n.title}\", Author: #{n.author}"
  end
  gets.chomp.to_i
end

def grab_person_index
  puts 'Select a person from the following list by number(not id):'
  list_people.each_with_index do |n, index|
    puts "#{index}) [#{n.class.name}] Name: #{n.name}, ID: #{n.id}, Age: #{n.age}"
  end
  gets.chomp.to_i
end

def grab_date
  print 'Date: '
  gets.chomp
end
