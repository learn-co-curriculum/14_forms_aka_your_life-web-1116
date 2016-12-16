class BooksController < ApplicationController

  get('/books') do
    @books = Book.all
    erb(:'books/index.html')
  end

  get('/books/:id') do
    @book = Book.find(params[:id])
    erb(:'books/show.html')
  end
end
