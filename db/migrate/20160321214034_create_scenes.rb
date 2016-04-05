class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :titulo

      t.timestamps null: false
    end
  end
end
