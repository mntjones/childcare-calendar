class AddOpenToJobs < ActiveRecord::Migration[5.2]
  def change

  	add_column :jobs, :open, :boolean, default: true
  end
end
