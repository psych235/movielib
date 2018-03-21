class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      flash[:notice] = "Success!!!"
      redirect_to new_movie_path
    else
      flash[:error] = "Failure!!!"
      redirect_to new_movie_path
    end
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  private

  def movie_params
    params.require(:movie).permit!
  end
end
