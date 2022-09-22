require './book'
require './rental'

describe Book do
  before :each do
    @book = Book.new 'Bello fight', 'Tom'
  end
context 'When testing the Book class' do
  it 'should print the book title' do
    expect(@book.title).to eq 'Bello fight'
  end
end
  it 'should print the book author' do
    expect(@book.author).to eq 'Tom'
  end
end

describe Book do
  before :each do
    @book = Book.new 'the 100', 'MJ john'
  end
  it 'should print the book title' do
    expect(@book.title).to eq 'the 100'
  end
  it 'should print the book author' do
    expect(@book.author).to eq 'MJ john'
  end
end

describe Book do
  before :each do
    @book = Book.new 'coding', 'Abel'
  end
  it 'should print the book title' do
    expect(@book.title).to eq 'coding'
  end
  it 'should print the book author' do
    expect(@book.author).to eq 'Abel'
  end
end