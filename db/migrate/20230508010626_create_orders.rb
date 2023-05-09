class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :status
      t.string :customer_id

      t.timestamps
    end
  end
end
