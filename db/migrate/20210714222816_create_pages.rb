class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :url
      t.references :product, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true
      t.decimal :price
      t.string :currency
      t.text :description

      t.timestamps
    end
  end
end
