class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :call_number, null: false
      t.string :isbn, null: false
      t.string :description
      t.integar :quantity, null: false, default: 1

      t.timestamps
    end
    add_index :books, :isbn, unique: true
    add_index :books, :call_number, unique: true
  end


end
