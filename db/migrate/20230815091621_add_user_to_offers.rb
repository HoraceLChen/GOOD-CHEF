class AddUserToOffers < ActiveRecord::Migration[7.0]
  def change
    add_reference :offers, :user, foreign_key: true
    # need to add null: false after fixing seed
  end
end
