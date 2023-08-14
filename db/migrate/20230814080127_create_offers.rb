class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :cuisine
      t.integer :price_pp
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
