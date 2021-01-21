class ReservationsController < ApplicationController
    def index
        reservations = Reservation.all
        render json: reservations
    end

    def show
        reservation =Reservation.find(params[:id])
        render json: reservation
    end

    def create
        reservation = Reservation.create(reservation_params)
        render json: {reservation: reservation}
    end

    def destroy
        reservation = Reservation.find(params[:id])
        reservation.destroy
    end

    private

    def reservation_params
        params.require(:user_id).permit(:arrival, :departure)
    end
end
