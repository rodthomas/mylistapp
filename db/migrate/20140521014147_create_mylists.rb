class CreateMylists < ActiveRecord::Migration
  def change
    create_table :mylists do |t|
      t.string :productName
      t.integer :quantity
      t.string :itemsPerPack
      t.string :unit
      t.BigDecimal :price

      t.timestamps
    end
  end
end
