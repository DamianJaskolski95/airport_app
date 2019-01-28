class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.text :city
      t.text :country

      t.timestamps
    end
  end
end
