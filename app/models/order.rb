class Order < ApplicationRecord
  belongs_to :customer
  enum :status, [:shipped, :being_packed, :complete, :cancelled]

  #removing in light of order_resources.
  # has_and_belongs_to_many :books

  has_many :order_resources

  # fetching books/articles of an order in a polymorphic join table
  has_many :books, through: :order_resources, source: :resource, source_type: "Book"
  has_many :articles, through: :order_resources, source: :resource, source_type: "Article"
end
