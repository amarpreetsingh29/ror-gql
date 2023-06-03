require "test_helper"

class AccountTest < ActiveSupport::TestCase
  def setup
    @book = create(:book)
    @customer = create(:customer)
  end

  test "creates the order" do
    assert_difference 'Order.count', 1 do
      order  = Services::CreateOrder.perform(
        book_id: @book.id,
        customer_id: @customer.id
      )
    end
  end
end
