class WordsController < ApplicationController
  def index
  	@words = Word.all
  	@tuplas=nil
  	unless params[:search].nil?
  		cadena=params[:search]
  		pal=cadena.split(" ")
  		pal.each do |p|
  			@tuplas=Word.where(palabra:p.strip)
  		end
  	end
  end

  def create
   
  end

   def word_params
      params.require(:word).permit(:palabra)
   end
end
