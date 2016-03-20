class AddFotoToImages < ActiveRecord::Migration
  def change
    add_column :images, :tipo, :integer
    add_attachment :images,:foto
  end
end
