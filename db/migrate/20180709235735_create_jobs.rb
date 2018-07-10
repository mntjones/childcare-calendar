class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|

      t.string :address
      t.string :user_phone
      t.string :sitter_phone
      t.datetime :start_date_time
      t.datetime :end_date_time

    end
  end
end
