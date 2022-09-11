class CreateFavourites < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :author_id
      t.integer :quote_id
    end
  end
end
