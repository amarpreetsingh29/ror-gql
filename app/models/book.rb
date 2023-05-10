class Book < ApplicationRecord
  # has_many :book_and_authors
  # has_many :author, through: :book_and_authors
  has_and_belongs_to_many :orders
  has_and_belongs_to_many :authors, join_table: 'book_and_authors'
end
