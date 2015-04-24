require "data.rb"

class InformationController < ApplicationController
  def piece
  	content = params[:content]  		
  	@new_content = Data.encrypt(content) unless content.nil? or content.length < 5 or content.length > 54 

  	respond_to do |format|
  		format.js if request.xhr?
  		format.html  		
  	end
  end
end
