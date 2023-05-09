module Types
  class BookType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :author, [AuthorType], null: false

    def author
      object.author
    end
  end
end
