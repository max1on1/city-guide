class CreateExcursions < ActiveRecord::Migration[5.0]
  def change
    create_table :excursions do |t|
      t.string :title
      t.string :phone
      t.integer :duration
      t.text :imgurl
      t.integer :price
      t.text :about
      t.references :city, index: true

      t.timestamps
    end
  end
end
