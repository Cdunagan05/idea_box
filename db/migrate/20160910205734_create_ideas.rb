class CreateIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas do |t|
      t.string :idea_text
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps null: false
    end
  end
end
