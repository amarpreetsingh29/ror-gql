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
  end
end
