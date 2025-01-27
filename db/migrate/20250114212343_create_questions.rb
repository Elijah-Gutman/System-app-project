class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.string :content
      t.string :answer
      t.json :options

      t.timestamps
    end
  end
end
