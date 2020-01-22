class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :venue
      t.datetime :date
      t.string :artist
      t.float :ticket_price
      t.string :genre
      t.timestamps
    end
  end
end
