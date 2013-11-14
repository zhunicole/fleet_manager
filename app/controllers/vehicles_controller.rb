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
			Activity.new(log: ' created '+ @vehicle.name, created_by: current_user.email).save
			redirect_to root_path
		else 
			render root_path
		end
	end

	def edit
		@vehicle = Vehicle.find params[:id]
	end

	def update
		@vehicle = Vehicle.find params[:id]
  	if @vehicle.update_attributes(vehicle_params) then 
      redirect_to root_path
    else 
      render 'edit'
    end
	end

	def delete
		(Vehicle.find params[:id]).destroy
		redirect_to root_path

	end

	def vehicle_params
		params.require(:vehicle).permit(:name, :number, :category,
				:temp, :last_serviced, :projected_service, :last_mileage, :created_at, :updated_at)

	end
end