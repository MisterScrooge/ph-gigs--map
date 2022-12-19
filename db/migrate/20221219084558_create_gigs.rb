class CreateGigs < ActiveRecord::Migration[6.1]
  def change
    create_table :gigs do |t|
      t.references :location, null: false, foreign_key: true
      t.date :date
      t.time :start
      t.time :end
      t.text :description

      t.timestamps
    end
  end
end
