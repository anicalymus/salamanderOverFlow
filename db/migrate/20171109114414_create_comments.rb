class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.references :user_id
      t.references :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end
end
