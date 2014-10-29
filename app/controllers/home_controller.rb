class HomeController < ApplicationController

  def index
    @books = Book.all.limit(10)
    @movies = Movie.all
    @albums = Album.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
