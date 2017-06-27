class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new({
      title: params[:movie][:title],
      synopsis: params[:movie][:synopsis],
      user_id: current_user.id
      })

      
    @movie.save

    if @movie.save
      redirect_to movies_path
    else
      redirect_to new_movie_path
  end
end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = Review.where("movie_id =?", params[:id])
    @user = User.find(@movie.user_id)
  end

end
