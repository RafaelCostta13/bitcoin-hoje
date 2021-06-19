class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.string :ticket_coin
      t.string :name
      t.text :description
      t.string :path_img
      t.timestamps
    end
  end
end
