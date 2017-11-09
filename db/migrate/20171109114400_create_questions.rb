class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :body
      t.references :user_id

      t.timestamps
    end
  end
end
