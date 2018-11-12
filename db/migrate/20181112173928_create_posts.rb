class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, index: {unique: true}
      t.text :body
      t.references :user, foreign_key: true
      t.boolean :visible, default: false

      t.timestamps
    end
    # add_index :posts, :title, unique: true
  end
end
