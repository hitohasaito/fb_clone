class FacebooksController < ApplicationController
  before_action :set_facebook,only:[:edit,:update,:destroy]

  def index
    @facebooks = Facebook.all
  end
  def new
    if params[:back]
      @facebook = Facebook.new(fb_params)
    else
      @facebook = Facebook.new
    end
  end
  def create
    @facebook = Facebook.new(fb_params)
    if @facebook.save
      redirect_to new_facebook_path
    else
      render "new"
    end
  end
  def edit
  end
  def update
    if @facebook.update(fb_params)
      redirect_to facebooks_path
    else
      render "edit"
    end
  end
  def destroy
    @facebook.destroy
    redirect_to facebooks_path
  end
  def confirm
    @facebook = Facebook.new(fb_params)
    render "new" if @facebook.invalid?
  end


  
  private

  def fb_params
    params.require(:facebook).permit(:name,:content,:image,:image_cache,:back)
  end
  def set_facebook
    @facebook = Facebook.find(params[:id])
  end
end
