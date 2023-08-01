
#a polymorphic join table, which gather information for different item types in an order
class OrderResource < ApplicationRecord
  #this would identify type of item in order-> book, article etc.
  belongs_to :resource, polymorphic: true

  #belongs to an order
  belongs_to :order
end
