module Smslogic 
  include Sharedmethodz  
  #Start here!!!
  #TODO: Now I need to figure out the counter and validation for brasil numbers. (63) 9979-3040
  # Decided to do the counter increment on each individual model for now
  
  #TODO: PRIORITY 01: Need to split messages into small twilio consumable chunks (140 chars) see code in other models
  def split_large_sms (message)
    arraySMS = []
    if message.length > 150 
      arraySMS = message.scan(/.{1,145}/)
    elsif message.length < 150 && message.length > 20
      arraySMS[0] = message
    else
      arraySMS[0] = message
    end
    return arraySMS
  end
  def smslogic_entrypoint(msg, number, country, obj=nil)
    arraySMS = split_large_sms(msg)
    begin
      arraySMS.length.times do |i|
        sms = arraySMS[i]+"[#{i+1}/#{arraySMS.length}]"
        if obj && obj.class.name == "Attendancesheet"
          #send_via_twilio_sms_with_number(sms, user_number, number)
          send_via_twilio_sms_with_number(sms, number,"7078095995")
        else
          #["United States", "Brasil", "France"] 
          if country == 'Brasil'
            #Send through Tropo
            send_via_tropo_sms(msg, number, country, 55)
          elsif country == 'United States'
            send_via_tropo_sms(msg, number, country, 1)
          else
            #unknown country, log error
             send_via_tropo_sms("SMSLOGIC failed: [if]", ENV['ADMIN_PHONE_NUMBER'], 'United States', 1)
          end#if
        end#if
      end#array.lenght.times
    rescue
      return send_via_tropo_sms("SMSLOGIC failed: [begin]", ENV['ADMIN_PHONE_NUMBER'], 'United States', 1)
    end
  end#smslogic

  def send_via_tropo_sms(msg, number, country, country_code)
    if Donotcall.find_by_number(number)
      #cannot call
      puts "NUMBER BLOCKED for SMS:  - Number:#{number}"
      rsp = Hash.new
      return rsp
    else
      msg = URI.escape("#{msg}")
      #Enviei uma mensagem test para o Thompson.      21 9520 1780 VIVO??
      #Enviei uma mensagem test para o Rodrigo TBM    21 7991 8990 TIM
      #
      #https://api.tropo.com/1.0/sessions?action=create&token=132c74398fba9b49b3dc850af7d3289660c9265006f0c63f6698c2ad7b33a3805206600d26069a515c663bdb&numberToDial=15416474904&customerName=Parents&msg=Um+beijinho+na+testa+by+Sparkroad
      url = "https://api.tropo.com/1.0/sessions?action=create&token=#{ENV['TROPO_TOKEN']}&numberToDial=#{country_code}#{number}&customerName=Parents&msg=#{msg}&module=smslogic"
      response = HTTParty.get(url)
      rsp = Hash.from_xml(response.body)
      if rsp["session"]["success"] && rsp["session"]["success"] == "true"
        return rsp
      elsif rsp["session"]["success"] && rsp["session"]["success"] == "false"
        #Right now I just sms myself. Will keep this TODO on top of mind.
        error = "Failed via Tropo. Reason:" + rsp["session"]["reason"]
        send_via_twilio_sms(error)
        return rsp
      elsif !rsp["session"]["success"]#response does not exist
        error = "Failed via Tropo. No known Reason"
        send_via_twilio_sms(error)
        return rsp
      else
        return rsp
      end
    end#donotcall
  end
  
  def send_via_twilio_sms(sms)#TODO: change to send_via_twilio
    if Donotcall.find_by_number(number)
      #cannot call
      puts "BLOCKED: Number:#{number}"
    else
      begin
        # credentials
        @account_sid = ENV['TWILIO_ACCOUNT_SID']
        @auth_token = ENV['TWILIO_AUTH_TOKEN']
        # set up a client to talk to the Twilio REST API
        @client = Twilio::REST::Client.new(@account_sid, @auth_token)

        #send text message
        @client.account.sms.messages.create(
          :from => '+19162359121',
          :to => "+1" + ENV['ADMIN_PHONE_NUMBER'],
          :body => sms
        )
      rescue StandardError => failedWith
        #Deliveryerror.create(:objecttype => 1, :deliverytype => 2, :objectid => announce.id, :errormessage => failedWith, :user_id => user.id).save
      end
    end#donotcall
  end
  def send_via_twilio_sms_with_number(sms, user_number, number)
    begin
      # credentials
      @account_sid = ENV['TWILIO_ACCOUNT_SID']
      @auth_token = ENV['TWILIO_AUTH_TOKEN']
      # set up a client to talk to the Twilio REST API
      @client = Twilio::REST::Client.new(@account_sid, @auth_token)

      #send text message
      @client.account.sms.messages.create(
        :from => "+1" + number,
        :to => "+1" +  user_number,
        :body => sms
      )
    rescue StandardError => failedWith
      #Deliveryerror.create(:objecttype => 1, :deliverytype => 2, :objectid => announce.id, :errormessage => failedWith, :user_id => user.id).save
    end
  end

end