class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :titulo
      t.string :autor

      t.timestamps null: false
    end
  end
end
