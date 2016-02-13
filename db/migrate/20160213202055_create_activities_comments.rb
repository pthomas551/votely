class CreateActivitiesComments < ActiveRecord::Migration
  def change
    create_table :activities_comments do |t|
      t.integer :user_id, null: false
      t.integer :activity_id, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end
