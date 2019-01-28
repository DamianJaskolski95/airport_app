class AddPaymentToFlights < ActiveRecord::Migration[5.2]
  def change
    add_reference :flights, :payment, index: true
  end
end
