class Author < ApplicationRecord
  has_and_belongs_to_many :articles, join_table: 'article_and_authors'
  # has_many :book_and_authors
  # has_many :book, through: :book_and_authors
  has_one :account
  has_and_belongs_to_many :books, join_table: 'book_and_authors'
end
