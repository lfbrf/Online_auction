class CreateAuctions < ActiveRecord::Migration[5.0]
  def change
    create_table :auctions do |t|
      t.datetime :begin_date
      t.datetime :end_date
      t.string :title
      t.timestamps
    end
  end
end
