class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :remember_token
      t.string :first_name
      t.string :surname
      t.string :street
      t.string :house_number
      t.string :zip_code
      t.string :city
      t.integer :points

      t.timestamps
    end
  end
end
