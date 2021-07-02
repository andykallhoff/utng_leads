class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender, default: 0
      t.integer :age, default: 18
      t.string :email
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.boolean :active_contact, default: true
      t.boolean :is_army, default: false
      t.text :comment
      t.text :note

      t.timestamps
    end
  end
end
