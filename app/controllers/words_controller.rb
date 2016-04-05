class WordsController < ApplicationController
  def index
  	@images= Word.search(params[:search])
  	respond_to do |format|
  		format.html
  		format.js
  	end
  end

end
