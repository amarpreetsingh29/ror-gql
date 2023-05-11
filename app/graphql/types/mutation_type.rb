module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :create_book, BookType, null: false do
      argument :name, String, required: true
    end

    def create_book(name:)
      Book.create!(name: name)
    end

    field :create_order, OrderType, null: true do
      argument :book_id, ID, required: true
      argument :customer_id, ID, required: true
    end

    def create_order(book_id:, customer_id:)
      order = nil
      ActiveRecord::Base.transaction do
        order = Order.create!(
          customer_id: customer_id
        )
        bo = BooksOrder.create!(
          book_id: book_id,
          order_id: order.id
        )
      end
      order
    rescue => e
      puts e
    end
  end
end
