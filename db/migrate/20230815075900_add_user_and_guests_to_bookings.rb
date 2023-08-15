class AddUserAndGuestsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :user, null: false, foreign_key: true
    add_column :bookings, :guests, :integer
  end
end
