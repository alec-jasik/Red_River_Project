class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        review = Review.create(review_params)
        render json: {review: review}
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
    end

    private

    def review_params
        params.require(:user_id).permit(:text, :rating )
    end
end
