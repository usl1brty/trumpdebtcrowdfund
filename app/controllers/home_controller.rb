class HomeController < ApplicationController
  def index
    @user = current_user
    @users = User.all.order(created_at: :desc)
    @donations = Donation.all
    @charges = Charge.all

  end

  def terms
  end

  def privacy
  end

  def paymentthankyou
    @user = current_user
    @users = User.all.order(created_at: :desc)
    @donations = Donation.all
  end

  def paymentcanceled
    @user = current_user
    @users = User.all.order(created_at: :desc)
  end


end
