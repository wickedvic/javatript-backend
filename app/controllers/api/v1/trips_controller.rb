class Api::V1::TripsController < ApplicationController
    
    def show
        trip = Trip.find(params[:id])
        render json: trip
    end

    def index
        trips = Trip.all 
        render json: trips 
    end 


end
