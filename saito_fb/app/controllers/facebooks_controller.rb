class FacebooksController < ApplicationController
  def index
  end

  def new
    @facebook = Facebook.new
  end
   def create
     Facebook.create(fb_params)
     redirect_to new_facebook_path
   end


   private

   def fb_params
     params.require(:facebook).permit(:name,:content,:image)
   end

end
