class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :titulo

      t.timestamps null: false
    end
  end
end
