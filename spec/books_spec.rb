require './book'
require './rental'

describe Book do
  before :each do
    @book = Book.new 'Bello fight', 'Tom'
  end

  it 'should print the book title' do
    expect(@book.title).to eq 'Bello fight'
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