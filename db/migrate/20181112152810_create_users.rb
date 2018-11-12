class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      #
      t.with_options index:{unique:true} do
        string :name
        string :email
      end
      #
      t.with_options 
      t.boolean :moderator, default: false
      t.boolean :creator, default: false
      t.boolean :banned, default: false
      #
      t.timestamps
    end
    # add_index :users, :email, unique: true
  end
end
