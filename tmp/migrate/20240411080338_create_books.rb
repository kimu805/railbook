class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.integer :price
      t.string :publisher
      t.date :published
      t.boolean :dl

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        execute 'CREATE VIEW gihyo_books AS SELECT * FROM books WHERE publisher = "技術評論社"'
      end
      dir.down do
        execute 'DROP VIEW gihyo_books'
      end
    end
  end
end
