class UsersController < ApplicationController
    def index
        User.all
        head :ok
    end
  end