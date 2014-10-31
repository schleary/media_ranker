class HomeController < ApplicationController

  def index
    @books = Book.sort_by_rank
    @movies = Movie.sort_by_rank
    @albums = Album.sort_by_rank
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
