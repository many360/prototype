class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id
      t.integer :route_id
      t.float :distance
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps
    end
  end
end
