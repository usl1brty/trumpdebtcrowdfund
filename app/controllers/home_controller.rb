class HomeController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end

  def terms
  end

  def privacy
  end

  def paymentthankyou
    @user = current_user
    @users = User.all
  end

  def paymentcanceled
    @user = current_user
    @users = User.all
  end


end
