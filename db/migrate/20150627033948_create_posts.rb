class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :owner_id
      t.string :title, null: false
      t.text :body, null: false

      t.timestamps null: false
    end

    add_index :posts, :owner_id
  end
end
