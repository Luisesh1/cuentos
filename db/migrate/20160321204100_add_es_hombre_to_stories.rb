class AddEsHombreToStories < ActiveRecord::Migration
  def change
    add_column :stories, :es_hombre, :boolean
  end
end
