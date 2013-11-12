

# - hoursLeft = (p.end_time - DateTime.now)/60/60/30
#         .project_card_counter= distance_of_time_in_words(DateTime.now, p.end_time)


@vehicles = Vehicle.find(:all, :order => 'projected_service', :limit => 8)
sequence = nil
Dashing.scheduler.every '4s' do

  @vehicles.each do |v|
  	
	 	last_serviced = (Date.today - v.last_serviced).to_i
 		next_service = (v.projected_service - Date.today).to_i
		
		if sequence == nil or sequence == 0 then 
			display_num = next_service
			display_text = 'till next service'
			sequence = 1
		else 
			display_num = last_serviced
			display_text = 'since last serviced'
			sequence = 0
		end
	  Dashing.send_event(v.id.to_s, { title: v.name, current: display_num, moreinfo: display_text })
	end
end
