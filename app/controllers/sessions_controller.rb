class SessionsController < ApplicationController
  def new
 end

  def create

auth_hash = request.env['omniauth.auth']




@image =auth_hash["info"]["image"]
@name=auth_hash["info"]["name"]
  @access= auth_hash["credentials"]["token"]
  @graph = Koala::Facebook::GraphAPI.new(@access)

#@graph.put_wall_post('This is test thing')
#  @rest = Koala::Facebook::RestAPI.new(@access)

#render :text => @graph.get_object("me")
#render :text => @rest.get_object("me")
end


  def destroy
	session[:user_id]=nil
	auth_hash=nil
	redirect_to "/login"
  end

end
