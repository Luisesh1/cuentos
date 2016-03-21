class Word < ActiveRecord::Base
	has_many :image_words
	has_many :images, through: :image_words
	validates :palabra, presence: :true, uniqueness: true
	def self.search (v)
		unless v.nil? or v.empty?
			tuplas=[]
	  		v.split(" ").each do |p|
	  			tuplas+=self.where(palabra:p.strip)
	  		end
			tuplas
		else
		  	self.all
		end
	end
end
