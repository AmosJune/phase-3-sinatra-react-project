class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :title
      t.string :description
      t.string :author_id
    end
  end
end
