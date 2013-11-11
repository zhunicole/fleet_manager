# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	

		vehicles = Vehicle.create([

			{name: 'Fire Engine 1', temp: 20, last_serviced: Date.today, 
				projected_service: Date.new(2013, 12, 25), last_mileage: 59000},
			{name: 'Fire Engine 2', temp: 40, last_serviced: Date.beginning_of_week, 
				projected_service: Date.new(2013, 11, 30), last_mileage: 999330},
			{name: 'Police Car 1', temp: 15, last_serviced: Date.today, 
				projected_service: Date.new(2014, 2, 2), last_mileage: 300} 

			])
