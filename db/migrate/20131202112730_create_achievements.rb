class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name
      t.string :image
      t.string :unlock_point

      t.timestamps
    end
  end
end
