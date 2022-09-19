
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
    [id]
end
