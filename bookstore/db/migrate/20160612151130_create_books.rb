class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :category_id
      t.integer :author_id
      t.integer :publisher_id
      t.string :isbn
      t.string :year
      t.string :format
      t.text :excerpt
      t.integer :pages
      t.string :language
      t.string :price
      t.string :buy

      t.timestamps null: false
    end
  end
end
