class CreateActivitiesVenues < ActiveRecord::Migration
  def change
    create_table :activities_venues do |t|
      t.integer :activity_id, null: false
      t.integer :venue_id, null: false
    end
  end
end
