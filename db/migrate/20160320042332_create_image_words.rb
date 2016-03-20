class CreateImageWords < ActiveRecord::Migration
  def change
    create_table :image_words do |t|

      t.timestamps null: false
    end
  end
end
