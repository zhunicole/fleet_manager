class UsersController < Devise::SessionsController
  def create
    super
  end

 def index
 end

 def login

 	redirect_to new_user_session_path

end