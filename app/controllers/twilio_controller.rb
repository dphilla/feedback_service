class TwilioController < ApplicationController
skip_before_action :verify_authenticity_token
  def index
    @speech = TwilioService.new.get_speech
    render :xml => @speech
    #@speech.redirect('/messages', method: 'PUT')
  end

  def create
    if params['SpeechResult']
      asr_message = params["SpeechResult"]
      Message.create(caller: asr_message)
    else
    end
  end
end
