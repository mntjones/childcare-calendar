class RemoveColumnsFromJobs < ActiveRecord::Migration[5.2]
  def change
  	remove_column :jobs, :sitter_phone
  	remove_column :jobs, :user_phone
  	remove_column :jobs, :address
  end
end
