@vehicles = Vehicle.find(:all, :order => 'projected_service', :limit => 8)
sequence = false

Dashing.scheduler.every '6s' do

  @vehicles.each do |v|

	 	last_serviced = (Date.today - v.last_serviced).to_i
 		next_service = (v.projected_service - Date.today).to_i
		
		if sequence then
			display_num = next_service
			display_text = 'till next service'
		else 
			display_num = last_serviced
			display_text = 'since last serviced'
		end

		

	  Dashing.send_event(v.id.to_s, { title: v.name, current: display_num, moreinfo: display_text})
	end
	sequence = sequence ? false : true

end
