module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :books, [BookType], null: true,
    description: "List of books"
    def books
      ::Book.all
    end

    field(:customers, [CustomerType], null: true, method: :customers) do
        description "List of customers"
    end
    def customers
      ::Customer.all
    end

    field(:book, BookType, null: true) do
      argument :id, ID, default_value: 1
    end

    def book(id:)
      Book.find(id)
    end
  end
end
