class AddLogsToActivities < ActiveRecord::Migration
  def change
  	add_column :activities, :log, :text
  	add_column :activities, :created_by, :string
  end
end
