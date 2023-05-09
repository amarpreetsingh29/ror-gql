class CreateBookOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :books_orders do |t|
      t.integer :book_id
      t.integer :order_id

      t.timestamps
    end
  end
end
