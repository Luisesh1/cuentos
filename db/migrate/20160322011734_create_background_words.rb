class CreateBackgroundWords < ActiveRecord::Migration
  def change
    create_table :background_words do |t|
      t.references :background, index: true, foreign_key: true
      t.references :word, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
