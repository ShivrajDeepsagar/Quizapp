class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :reply, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true
      t.references :possible_answer, index: true, foreign_key: true
      t.string :value

      t.timestamps null: false
    end
  end
end
