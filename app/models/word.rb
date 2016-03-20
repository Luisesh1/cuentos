class Word < ActiveRecord::Base
	has_many :image_words
	has_many :images, through: :image_words
	validates :palabra, presence: :true, uniqueness: true
end
