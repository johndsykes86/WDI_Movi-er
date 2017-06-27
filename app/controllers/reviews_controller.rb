class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new({
      title: params[:review][:title],
      body: params[:review][:body],
      user_id: current_user.id,
      movie_id: params[:id]
      })


    @review.save

    if @review.save
      redirect_to movie_path(params[:id])
    else
      redirect_to new_review_path
  end
  end
  #
  # def edit
  # end
  #
  # def update
  # end
  #
  def destroy
    @review = Review.find(params[:id])
    @review.delete
    redirect_to movies_path
  end
end
