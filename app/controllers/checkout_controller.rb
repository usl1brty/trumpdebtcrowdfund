class CheckoutController < ApplicationController


def create

  donation = Donation.find(params[:id])

  if donation.nil?
    redirect_to root_path
    return
  end


  Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)
    @session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
        name: donation.name,
        description: donation.name,
        currency: 'usd',
        :amount   => (donation.amount).to_i * 100,
        # :image 'https://trumpdebt.s3.ca-central-1.amazonaws.com/trumpfamily.jpeg',
        quantity: 1
    }],
    success_url: 'http://localhost:3000/paymentthankyou',
    cancel_url: 'http://localhost:3000/paymentcanceled'
  )

  respond_to do |format|
    format.js # render create.js.erb

    Charge.create(amount: donation.amount)

end
end

def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
end



def paymentcanceled
end

def paymentthankyou
  @donations = Donation.all
  @user = User.all
end


end
