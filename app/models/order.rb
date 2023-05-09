class Order < ApplicationRecord
  belongs_to :customer
  enum :status, [:shipped, :being_packed, :complete, :cancelled]
  has_and_belongs_to_many :books
end
