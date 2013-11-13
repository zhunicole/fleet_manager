class VehiclesController < ApplicationController

	before_action :authenticate_user!   

	def index 

		
	end

	def new
		@vehicle = Vehicle.new

	end


	def create
		
		@vehicle = Vehicle.new(vehicle_params)
		if @vehicle.save then 
			redirect_to dashing_path
		else
			render 'new'
		end

	end


	def vehicle_params
		params.require(:vehicle).permit(:name, :number, :category,
				:temp, :last_serviced, :projected_service, :last_mileage, :created_at, :updated_at)

	end
end