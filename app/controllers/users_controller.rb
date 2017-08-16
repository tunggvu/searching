class UsersController < ApplicationController
  def index
    @users = params[:term].present? ? User.search("name: #{params[:term]}") : User.search("id: 1")
    @count = @users.count
  end
end
