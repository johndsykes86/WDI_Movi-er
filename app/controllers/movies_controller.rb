class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new({
      title: params[:movie][:title],
      synopsis: params[:movie][:synopsis],
      user_id: current_user.id,
      poster: params[:movie][:poster]
      })


    @movie.save

    if @movie.save
      flash[:notice] = "Movie saved successfully"
      redirect_to movies_path
    else
      flash[:alert] = "Something went wrong, please try again..."
      redirect_to new_movie_path
  end
end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = Review.where("movie_id =?", params[:id])

  end

end
