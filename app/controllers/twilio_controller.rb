class TwilioController < ApplicationController
skip_before_action :verify_authenticity_token
  def index
    @speech = TwilioService.new.get_speech
    render :xml => @speech
  end

  def create
    if params['SpeechResult']
      asr_message = params["SpeechResult"]
      Message.create(body: asr_message)
    end
    @speech = TwilioService.new.say_goodbye  # how does this even hook into the current call?
    render :xml => @speech
  end
end
