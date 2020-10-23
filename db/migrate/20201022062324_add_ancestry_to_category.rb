class AddAncestryToCategory < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.integer :user_id
      t.integer :book_id
      t.string  :ancestry

      t.timestamps
    end
  end
end
    #add_column :categories, :ancestry, :string
    #add_index :categories, :ancestry