class BooksController < ApplicationController

  get('/books') do
    @books = Book.all
    erb(:'books/index.html')
  end

  get('/books/new') do
    erb(:'books/new.html')
  end

  post '/books' do
    binding.pry
    # params = {book: {title: 'Power of Habit', snippet: 'Some snippet'}}
    ## Now what?
    # attributes = {title: params[:title], snippet: params[:snippet]}
    @book = Book.create(params[:book])
    redirect "/books/#{@book.id}"
    # @book = Book.new
    # @book.title = params[:title]
    # @book.snippet = params[:snippet]
    # @book.save
    # 3. When we receive the 'POST' request, we should save the new book to the database based on the user input
    # 4. After the book is saved, redirect to the show page for that particular book
  end

  get('/books/:id') do
    @book = Book.find(params[:id])
    erb(:'books/show.html')
  end
end
