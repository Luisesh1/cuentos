class AddStoryIdToScenes < ActiveRecord::Migration
  def change
    add_reference :scenes, :story, index: true, foreign_key: true
  end
end
