class HomeController < ApplicationController

  def index
    @books = Book.all.limit(10).sort_by{|i| -i[:rank]}
    @movies = Movie.all.limit(10).sort_by{|i| -i[:rank]}
    @albums = Album.all.limit(10).sort_by{|i| -i[:rank]}
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
