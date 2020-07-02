class CreateTimelines < ActiveRecord::Migration[6.0]
  def change
    create_table :timelines do |t|
      t.string :timeline_id
      t.string :title
      t.string :description
      t.datetime :focus_date
      t.integer :initial_zoom
      t.string :timezone
      t.boolean :inverted
      t.integer :bottom
      t.boolean :collapsed

      t.timestamps
    end
  end
end
