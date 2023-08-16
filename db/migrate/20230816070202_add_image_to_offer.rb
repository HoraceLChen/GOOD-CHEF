class AddImageToOffer < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :img, :string
  end
end
