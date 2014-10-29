class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
     @book = Book.new
  end

  def save
  end

  def create
    @book = Book.new(find_params)
    if @book.save
      redirect_to books_show_path(@book)
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(find_params)
      redirect_to books_show_path(@book)
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def find_params
    params.require(:book).permit(:name, :author, :description)
  end

end
