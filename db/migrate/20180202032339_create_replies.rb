class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.references :user, foreign_key: true
      t.references :micropost, foreign_key: true
      
      t.string :user_name
      t.text :message

      t.timestamps
    end
  end
end