class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :unlock_level
      t.string :coordinates

      t.timestamps
    end
  end
end
