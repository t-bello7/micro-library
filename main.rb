require_relative './app'
def main
  loop do
    display
    input = gets.chomp.to_i
    case input
    when 1
      display_books
    when 2
      display_people
    when 3
      display_create_people
    when 4
      display_create_book
    when 5
      display_create_rental
    when 6
      display_select_by_id
    when 7
      break
    end
  end
end
main
