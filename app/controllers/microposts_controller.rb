class MicropostsController < ApplicationController
	before_filter :signed_in_user
	
	def index
  end
  
  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = [] # Not sure if there should be a space between brackets.
      render 'static_pages/home'
	  end
  end
	
	def destroy
	end
end