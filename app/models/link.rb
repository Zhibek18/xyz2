class Link < ApplicationRecord
	after_create :shorten
	URL_REG= /(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9]\.[^\s]{2,})/
	validates :url, presence: true, format: {with: URL_REG}
	default_scope -> {order("created_at DESC")}
	
	private 
	def shorten 
		update_attribute(:short, id.to_s(36))
	end 


end
