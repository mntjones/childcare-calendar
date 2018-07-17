class RemoveEnddatetimeFromJobs < ActiveRecord::Migration[5.2]
  def change
  	remove_column :jobs, :end_date_time
  	add_column :jobs, :duration, :integer
  end
end
