module Services
  class Create
    class << self
      def perform(book_id:, customer_id:)
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
end
