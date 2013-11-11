class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|

    	t.integer :number
    	t.string :name
    	t.string :type
    	
    	t.integer :temp 
    	t.date :last_serviced
    	t.date :projected_service
    	t.integer :last_mileage
    	
      t.timestamps
    end
  end
end
