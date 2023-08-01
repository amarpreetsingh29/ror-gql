class Book < ApplicationRecord
  # has_many :book_and_authors
  # has_many :author, through: :book_and_authors

  #removing in light of order_resources table
  # has_and_belongs_to_many :orders

  has_and_belongs_to_many :authors, join_table: 'book_and_authors'

  # book belongs to an order via order_resouce join table
  has_many  :order_resources, as: :resource

  #identify book was part of which orders
  has_many :orders, through: :order_resources
end
