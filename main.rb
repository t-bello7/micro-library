require_relative './app'
def main
  app = App.new
  loop do
    app.display
    input = gets.chomp.to_i
    case input
    when 1
      app.display_books
    when 2
      app.display_people
    when 3
      app.display_create_people
    when 4
      app.display_create_book
    when 5
      app.display_create_rental
    when 6
      app.display_select_by_id
    when 7
      break
    end
  end
end
main
