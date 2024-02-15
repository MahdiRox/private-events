class UsersController < ApplicationController
    before_action :set_current_user
def show
    
end
    
def index
    @users = User.all
end

private

def set_current_user
  @current_user = current_user 
end

end