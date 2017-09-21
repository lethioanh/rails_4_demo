class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :microposts, :user_id
  end
end
