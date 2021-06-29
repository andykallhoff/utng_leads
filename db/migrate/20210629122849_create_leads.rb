class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.text :comment
      t.text :note

      t.timestamps

      t.timestamps
    end
  end
end
