class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :body
      t.references :user
      t.references :question

      t.timestamp
    end
  end
end
