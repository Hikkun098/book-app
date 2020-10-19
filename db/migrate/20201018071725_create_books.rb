class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string           :book_name,     null: false, limit: 30
      t.text             :description,   null: false, limit: 300
      t.integer          :category_id,      null: false
      t.integer          :age,           null: false
      t.integer          :price,         null: false
      t.references       :user,          null: false, foreign_key: true

      t.timestamps
    end
  end
end
