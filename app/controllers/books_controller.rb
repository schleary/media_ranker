class BooksController < ApplicationController

  def index
    puts "********************"
    puts "INDEX"
    puts "********************"
    @books = Book.all
  end

  def new
    puts "********************"
    puts "NEW"
    puts "********************"
     @book = Book.new
  end

  def save
    puts "********************"
    puts "SAVE"
    puts "********************"
  end

  def create
    puts "********************"
    puts "CREATE"
    puts "********************"
    @book = Book.new(find_params)
    puts "********************"
    puts "NEW"
    puts "********************"
    if @book.save
      puts "********************"
      puts "SAVE"
      puts "********************"
      redirect_to books_show_path(@book)
      #render 'show'
    else
      puts "********************"
      puts "NOTSAVE"
      puts "********************"
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
      redirect_to @book
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
    puts "********************"
    puts "PARAMS"
    puts "********************"
    params.require(:book).permit(:name, :author, :description)
  end

end
