class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.text :story, null: false
      t.integer :category_id, null: false
      t.text :quote, null: false
      t.text :thought, null: false

      

      t.timestamps
    end
  end
end
