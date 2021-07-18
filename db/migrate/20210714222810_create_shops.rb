class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :host
      t.string :price_selector, default: "meta[itemprop='price']"
      t.string :currency_selector, default: "meta[itemprop='priceCurrency']"
      t.string :description_selector, default: "meta[name='description']"

      t.timestamps
    end

    add_index(:shops, :host)
  end
end
