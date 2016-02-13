class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name, null: false
      t.string :description
      t.date :date, null: false
      t.time :time, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
