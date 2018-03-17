require 'twilio-ruby'

class TwilioService

  def initialize
    @response = Twilio::TwiML::VoiceResponse.new
  end

  def get_speech
    @response.gather(input: 'speech dtmf', timeout: 3, num_digits: 1) do |gather|
      gather.say('What is your message for Daniels Banana Cabana?')
    end


  end


end


