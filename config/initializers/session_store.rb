# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
#TODO set :key
  :key         => '_counter_session',
  :secret      => '6fcda971bb147cec4762ce0ce7359b8ed2e1920719885020e5f30e10cbc8c78ddb37a27554e401ef66f46d7807ef70cccc6e851ac1c65b590403987d2190f4f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
