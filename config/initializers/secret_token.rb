# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Feedback::Application.config.secret_key_base = ' 68f2b402d973f9387b7bc9a18e7ef56f9de3ab70c6a3a61cbabc65b9fb3539ddde8da4c3aa7500d8fc015974619ffc8ec72a09bb644dab971728c8f56ccb1e9b'#ENV['SECRET_TOKEN']
