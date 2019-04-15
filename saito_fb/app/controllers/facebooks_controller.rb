class FacebooksController < ApplicationController

  def index
    @facebooks = Facebook.all
  end

  def new
    @facebook = Facebook.new
  end
  def create
     @facebook=Facebook.new(fb_params)
      if @facebook.save
        redirect_to new_facebook_path
      else
        render "new"
      end
  end
  def edit
    @facebook=Facebook.find(params[:id])
  end
  def update
   @facebook = Facebook.find(params[:id])
   if @facebook.update(fb_params)
     redirect_to facebooks_path
   else
     render 'edit'
   end
  end
end



   private

   def fb_params
     params.require(:facebook).permit(:name,:content,:image,:image_cache)
   end
