class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    nah
  end

  def edit
    @review = Review.find(params[:id])

  end

  def update
    @review = Review.find(params[:id])
    @review.update(title: params[:review][:title], body: params[:review][:body])
    redirect_to movies_path
  end

  def destroy
    @review = Review.find(params[:id])
    @review.delete
    redirect_to movies_path
  end
end
