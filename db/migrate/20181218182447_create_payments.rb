class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.float :flight_cost
      t.text :currency

      t.timestamps
    end
  end
end
