class CreateAuctions < ActiveRecord::Migration[5.0]
  def change
    create_table :auctions do |t|
      t.string :product_name
      t.string :number
      t.string :price
      t.string :end_time
      t.string :description
      t.string  :status
      t.timestamps
    end
  end
end
