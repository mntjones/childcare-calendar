class AddPhoneNumberToSitters < ActiveRecord::Migration[5.2]
  def change
  	add_column :sitters, :sitter_phone, :string
  end
end
