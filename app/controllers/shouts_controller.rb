class ShoutsController < ApplicationController
  def show
  	@shout = Shout.find(params[:id])
  end
  def create
  	shout = current_user.shouts.build(shout_para)
  	if shout.save
  	  flash.alert = "Shouted!"	
  	  redirect_to dashboard_path
    else
      flash.alert = "Can't shout without words :P"
      redirect_to dashboard_path
    end
  end

  private

  def shout_para
  	params.require(:shout).permit(:body)
  end

end