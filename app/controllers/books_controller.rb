class BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def show
    render json: Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create(book_params)
    render json: book
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(:title=> params[:title], :author=> params[:author], :publisher=> params[:publisher], :year=> params[:year])
    render json: book

  end

  def destroy
    Book.destroy(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :publisher, :year)
  end
end
