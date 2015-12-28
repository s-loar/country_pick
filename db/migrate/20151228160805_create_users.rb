class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :state_code
      t.string :country_code
      t.string :postal_code

      t.timestamps null: false
    end
  end
end
