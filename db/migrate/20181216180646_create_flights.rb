class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.date :fl_date
      t.references :airplane
      t.references :airport_source
      t.references :airport_dest

      t.timestamps
    end
  end
end
