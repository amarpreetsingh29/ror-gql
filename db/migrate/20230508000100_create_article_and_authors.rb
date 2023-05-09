class CreateArticleAndAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :article_and_authors do |t|
      t.integer :article_id
      t.integer :author_id

      t.timestamps
    end
  end
end
