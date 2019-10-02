class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.text :lyrics
      t.integer :seconds

      t.timestamps null: false
    end
  end
end

