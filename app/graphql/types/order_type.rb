module Types
  class OrderType < BaseObject
    field :id, ID, null: false
    field :status, String, null: false
    field :books, [BookType], null: false

    def books
      object.books
    end
  end
end
