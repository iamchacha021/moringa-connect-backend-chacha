class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.date :date
      t.time :time
      t.string :venue

      t.timestamps
    end
  end
end
