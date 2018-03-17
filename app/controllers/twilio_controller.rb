class TwilioController < ApplicationController
skip_before_action :verify_authenticity_token
  def index
    @speech = TwilioService.new.get_speech
    render :xml => @speech
    @asr_message = params["SpeechResult"]
  end
end
