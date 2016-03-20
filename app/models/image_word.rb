class ImageWord < ActiveRecord::Base
	belongs_to :image
	belongs_to :word
end
