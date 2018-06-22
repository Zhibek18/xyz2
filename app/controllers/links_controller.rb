class LinksController < ApplicationController
  def index
  	@links = Link.all
  end


  def redirect
  	l = Link.find_by_short(params[:id])
  	L.update_attribute(:count, count + 1)
  	redirect_to l.url
  end

end
