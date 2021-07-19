class BooksController < ApplicationController

  def index
   @books = Book.order("created_at DESC")
  end

  def new
    @books = Book.new
  end

  def create
    #binding.pry
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def book_params
    params.permit(:image, :title, :story, :quote, :thought, :category_id)
  end

end
