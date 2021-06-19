class AddColumnPriceCoin < ActiveRecord::Migration[6.1]
  def change
    add_column :coins, :price, :float
  end
end
