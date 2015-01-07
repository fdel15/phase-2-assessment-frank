class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.text :correct_answer
      t.text :references
      t.references :user
      t.references :test
      t.timestamps
    end
  end
end
