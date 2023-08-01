class Article < ApplicationRecord
  has_and_belongs_to_many :authors, join_table: 'article_and_authors'
  belongs_to :primary_author, class_name: 'Author'

   #article belongs to an order via order_resouce join table
  has_many :order_resources, as: :resource

  #identify article was part of which orders
  has_many :orders, through: :order_resources
end
