class RenameOpenInJobs < ActiveRecord::Migration[5.2]
  def change
  	rename_column :jobs, :open, :open_jobs
  end
end
