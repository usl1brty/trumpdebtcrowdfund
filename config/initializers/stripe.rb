Rails.configuration.stripe = {
    :publishable_key => Rails.application.credentials.dig(:stripe, :publishable_key),
    :secret_key => Rails.application.credentials.dig(:stripe, :secret_key)


}

Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)


# Rails.configuration.stripe = {
#     :publishable_key => 'pk_test_51IApMgGJp1yNhOtsLQUHXwcwVuWbulXpMR7gaTIPgPY4iMYOs13Z8BjrR2r0B6zUmPXXBeREu3TvFqsaD0D1MmGJ00IPPjkRcM',
#     :secret_key => 'sk_test_51IApMgGJp1yNhOtsDDtnWUbGpwehk6pojaC6VdPhCuvJJp6cAbTW163ctK175cq7YmGF84eF9pnERSILuwy2VDeS00HeT9kBg0'
# }
# Stripe.api_key = 'sk_test_51IApMgGJp1yNhOtsDDtnWUbGpwehk6pojaC6VdPhCuvJJp6cAbTW163ctK175cq7YmGF84eF9pnERSILuwy2VDeS00HeT9kBg0'

# Rails.configuration.stripe = {
#     :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
#     :secret_key => ENV['STRIPE_SECRET_KEY']
# }
# Stripe.api_key = Rails.configuration.stripe[:secret_key]
