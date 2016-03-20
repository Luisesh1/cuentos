class AddImageRefImageWords < ActiveRecord::Migration
  def change
  	add_reference :image_words, :image, index: true, foreign_key: true
  	add_reference :image_words, :word, index: true, foreign_key: true
  end
end
