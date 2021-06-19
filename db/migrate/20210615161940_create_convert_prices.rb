class CreateConvertPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :convert_prices do |t|

      t.timestamps
    end
  end
end
