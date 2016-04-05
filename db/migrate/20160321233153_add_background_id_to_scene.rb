class AddBackgroundIdToScene < ActiveRecord::Migration
  def change
    add_reference :scenes, :background, index: true, foreign_key: true
  end
end
