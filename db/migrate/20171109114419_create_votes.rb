class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :user
      t.integer :voteable_id
      t.string :voteable_type

      t.timestamps
    end
  end
end
