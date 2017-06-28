class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
       @review = Review.new({
       title: params[:review][:title],
       body: params[:review][:body],
       user_id: current_user.id,
       movie_id: params[:movie_id]
       })
       @review.save

      if @review.save
        redirect_to movie_path(params[:movie_id])
      else
        redirect_to new_review_path(params[:movie_id])
      end
  end

  def edit
    @review = Review.find(params[:id])

  end

  def update
    @review = Review.find(params[:id])
    @review.update(title: params[:review][:title], body: params[:review][:body])
    if @review.update
      redirect_to movie_path(params[:movie_id])
    else
      redirect_to new_review_path(params[:movie_id])
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.delete
    redirect_to movies_path
  end
end
