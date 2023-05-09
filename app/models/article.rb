class Article < ApplicationRecord
  has_and_belongs_to_many :author, join_table: 'article_and_authors'
end
