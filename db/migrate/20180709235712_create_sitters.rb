class CreateSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :sitters do |t|

      t.timestamps
    end
  end
end
