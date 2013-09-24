module Calllogic 
  #Start here!!!
  # Now I need to figure out the counter and validation for brasil numbers. (63) 9979-3040
  # Decided to do the counter increment on each individual model for now
  def calllogic_entrypoint(msg, number, country, language, obj=nil)
   
  end
  #def send_text_to_voice_via_twilio_to_number, from_number, url
  #def send_text_to_sms_via_twilio_to_number, from_number, url
  def send_recording_via_twilio(to_number, from_number, url)
    if false#Donotcall.find_by_number(number)
      #cannot call
      puts "BLOCKED: - Number:#{number}"
    else
      begin
        # credentials
        @account_sid = ENV['TWILIO_ACCOUNT_SID']
        @auth_token = ENV['TWILIO_AUTH_TOKEN']
        # set up a client to talk to the Twilio REST API
        @client = Twilio::REST::Client.new(@account_sid, @auth_token)
      
        #call
        # make a new outgoing call
        @call = @client.account.calls.create(
          :from => "+1" + from_number,
          :to => "+1" + to_number,
          :url => url,
          'IfMachine' => 'continue'
        )
      rescue StandardError => failedWith
        send_via_tropo_call("Error twilio_with_URL #{url}", ENV['ADMIN_PHONE_NUMBER'], 'United States', 1, 1) 
        #Deliveryerror.create(:objecttype => 1, :deliverytype => 2, :objectid => announce.id, :errormessage => failedWith, :user_id => user.id).save
      end
    end
  end

end