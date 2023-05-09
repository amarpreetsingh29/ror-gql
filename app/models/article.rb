class Article < ApplicationRecord
  has_and_belongs_to_many :authors, join_table: 'article_and_authors'
end
