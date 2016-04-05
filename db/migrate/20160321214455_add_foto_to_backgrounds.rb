class AddFotoToBackgrounds < ActiveRecord::Migration
  def change
  	add_attachment :backgrounds , :foto
  end
end
