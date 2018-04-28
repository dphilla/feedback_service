class TwilioController < ApplicationController
skip_before_action :verify_authenticity_token
  def index
    @speech = TwilioService.new.get_speech
    render :xml => @speech
  end

  def create
    if params['SpeechResult']
      asr_message = params['SpeechResult']
      asr_caller = params['From']
      Message.create(caller: asr_caller, body: asr_message)
    end
    @speech = TwilioService.new.say_goodbye
    render :xml => @speech
  end
end
