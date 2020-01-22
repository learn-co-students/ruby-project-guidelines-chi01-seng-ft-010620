class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name 
      t.string :venue
      t.string :date
      t.string :time
      t.string :artist
      t.integer :ticket_price
      t.string :genre
      t.timestamps
    end
  end
end
