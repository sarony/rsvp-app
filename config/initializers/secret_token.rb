# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
RsvpApp::Application.config.secret_key_base = '5468006ab03f05acc0ab4b0dc7a05ecc69bf42806a4a6d64fa84304ff44c4e832de517c77d2bd36d8d2f8666ea122be6af9bab343edc3af7f3cf8e86e3971b49'
