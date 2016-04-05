class CreateSceneImages < ActiveRecord::Migration
  def change
    create_table :scene_images do |t|
      t.references :scene, index: true, foreign_key: true
      t.references :image, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
