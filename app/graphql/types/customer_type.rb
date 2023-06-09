module Types
  class CustomerType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :orders, OrderType.connection_type, null: false

    def orders
      object.orders.includes(:books)
    end
  end
end
