class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews, :include => [:user]
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        # byebug
        review = Review.create(review_params)
        render json: review, :include => [:user]
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :text, :rating )
    end
end
