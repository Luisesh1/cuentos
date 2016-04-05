class Background < ActiveRecord::Base
	validates :foto, presence: true
	validates :titulo, presence: true
	has_attached_file :foto, styles: { backgroud: "600x400>", item: "100x100>" }
	validates_attachment_content_type :foto, content_type: /\Aimage\/.*\Z/
	has_many :background_words
	has_many :words, through: :background_words

	has_many :scenes
end
