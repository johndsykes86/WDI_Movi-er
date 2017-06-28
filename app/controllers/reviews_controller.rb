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
        flash[:notice] = "Review created successfully"
        redirect_to movie_path(params[:movie_id])
      else
        flash[:alert] = "Something went wrong, please try again..."
        redirect_to new_review_path(params[:movie_id])
      end
  end

  def edit
    @review = Review.find(params[:id])

  end

  def update
    @review = Review.find(params[:id])
    @review.update(title: params[:review][:title], body: params[:review][:body])
    redirect_to movie_path(params[:movie_id])
    flash[:notice] = "Your review has been updated"
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:alert] = "Your review has been deleted"
    redirect_to movie_path(params[:movie_id])
  end
end
