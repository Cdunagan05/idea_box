class CreateImagesIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :images_ideas do |t|
      t.references :idea, foreign_key: true
      t.references :image, foreign_key: true

      t.timestamps null: false
    end
  end
end
