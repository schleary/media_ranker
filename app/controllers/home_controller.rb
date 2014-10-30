class HomeController < ApplicationController

  def index
    @books = Book.all.limit(10)
    @movies = Movie.all.limit(10)
    @albums = Album.all.limit(10)
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
