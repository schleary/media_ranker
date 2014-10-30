class MoviesController < ApplicationController


  def index
    @movies = Movie.all
  end

  def new
     @movie = Movie.new
  end

  def create
    @movie = Movie.new(find_params)
    @movie.rank = 0
    if @movie.save
      redirect_to movies_show_path(@movie)
    else
      render 'new'
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(find_params)
      redirect_to movies_show_path(@movie)
    else
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path(@movie)
  end

  def upvote
    @movie = Movie.find(params[:id])
    @movie.rank += 1
    if @movie.save
      redirect_to movies_show_path(@movie)
    else
      render 'show'
    end
  end

  private

  def find_params
    params.require(:movie).permit(:name, :director, :description)
  end

end
