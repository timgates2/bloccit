class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :,
      t.text :body
      t.string :,
      t.boolean :resolved

      t.timestamps null: false
    end
  end
end
