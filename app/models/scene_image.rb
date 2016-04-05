class SceneImage < ActiveRecord::Base
  belongs_to :scene
  belongs_to :image
end
