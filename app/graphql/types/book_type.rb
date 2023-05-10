module Types
  class BookType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :authors, [AuthorType], null: false

    def authors
      object.authors
    end
  end
end
