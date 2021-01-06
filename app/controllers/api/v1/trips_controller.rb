class Api::V1::TripsController < ApplicationController
    
    def show
        trip = Trip.find(params[:id])
        render json: trip
    end

    def index
        trips = Trip.all 
        render json: trips 
    end 

    def create
        trip = Trip.create(trip_params)
        render json: trip
    end

    def update 
        trip = Trip.find(params[:id])
        trip.update(trip_params)
        render json: trip 
    end 
    
private 

    def trip_params 
        params.require(:trip).permit(:location, :date, :user_id, :latitude, :longitude)
    end
end
