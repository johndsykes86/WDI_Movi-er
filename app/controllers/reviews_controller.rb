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
    @review = Review.update({

      title: params[:review][:title],
      body: params[:review][:body],
      id: params[:id]
      })


  end

  def destroy
    @review = Review.find(params[:id])
    @review.delete
    redirect_to movies_path
  end
end
