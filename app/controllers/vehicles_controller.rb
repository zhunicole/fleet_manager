class VehiclesController < ApplicationController

	def index


	end

	def sample
		@total_v_num = Vehicle.count

		redirect_to ''
	end


end
