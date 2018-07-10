class CreateSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :sitters do |t|

      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :hourly_rate
      
    end
  end
end
