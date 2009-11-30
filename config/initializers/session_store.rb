# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_enmatz.com_session',
  :secret      => 'c0412693c672898b4c789244f9e3acab497ebf2aaac36578dbb77db8c19d6eb58a206e066110cb5304793137f67fefb57f349b2685afee63bfa7b99dab43acc0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
