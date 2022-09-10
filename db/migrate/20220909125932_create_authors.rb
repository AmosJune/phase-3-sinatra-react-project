class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :category
      t.integer :age
      t.string :hometown
      t.timestamps
    end
  end
end
