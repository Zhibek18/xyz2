class LinksController < ApplicationController
  def index
  	@links = Link.all
  end


  def create
  	@link = Link.new(url_params)
  	if @link.save
  		respond_to do |format|
  			format.js
  		end
  	else
  		render :index
  	end


  end
  def redirect
  	l = Link.find_by_short(params[:short])
  	L.update_attribute(:count, l.count + 1)
  	redirect_to l.url
  end
private

def url_params
	params.require(:link).permit(:url)
	
end
end


