class CreateBookAndAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :book_and_authors do |t|
      t.integer :book_id
      t.integer :author_id

      t.timestamps
    end
  end
end
