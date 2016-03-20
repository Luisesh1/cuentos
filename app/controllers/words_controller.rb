class WordsController < ApplicationController
  def index
  	@words = Word.all
  	
  end

  def create
   
  end

   def word_params
      params.require(:word).permit(:palabra)
   end
end
