class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_id
      t.string :title
      t.string :description
      t.datetime :startdate
      t.datetime :enddate
      t.string :date_display
      t.string :link
      t.string :icon
      t.integer :importance
      t.integer :low_threshold
      t.integer :high_threshold
      t.string :span_color
      t.string :css_class
      t.string :click_callback

      t.timestamps
    end
  end
end
