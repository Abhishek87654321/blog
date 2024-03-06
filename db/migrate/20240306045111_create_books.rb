class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :quantity
      t.string :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
