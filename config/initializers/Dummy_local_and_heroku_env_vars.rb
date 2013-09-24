=begin
Set up these variables in a file called 'local_and_heroku_env_vars.rb' inside this folder to have outgoing Third party services work (Twilio, Amazon S3 etc)
ENV['USERNAME']              = ###########################################
ENV['PASSWORD']              = ###########################################
ENV['GMAIL_USERNAME_ROBOT']  = ###########################################
ENV['GMAIL_PASSWORD_ROBOT']  = ###########################################

ENV['MASTER_PASSWORD']       = ###########################################
ENV['AWS_ACCESS_KEY_ID']     = ###########################################
ENV['AWS_SECRET_ACCESS_KEY'] = ###########################################
ENV['S3_BUCKET']             = ###########################################
ENV['CACHE_DIR']             = "#{Rails.root}/tmp/uploads"
ENV['TWILIO_ACCOUNT_SID']    = ###########################################
ENV['TWILIO_AUTH_TOKEN']     = ###########################################
ENV['APP_NAME']              = Rails.env.staging? ? 'sbox' : 'Sparkroad'
ENV['ADMIN_PHONE_NUMBER']    = '5416474904'
ENV['TROPO_TOKEN']           = ###########################################
ENV['LEARSPROUT_API_KEY']    = ###########################################
ENV['TWILIO_ACCESS_NAME']    = 
ENV['TWILIO_ACCESS_PASSWORD']= 

=end
