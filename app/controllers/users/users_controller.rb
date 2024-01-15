class UsersController < ApplicationController
    def show
        @user = User.find()
        @event = @user.events
    end
    
    end