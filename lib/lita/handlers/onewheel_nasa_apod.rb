require 'rest-client'

module Lita
  module Handlers
    class OnewheelNasaApod < Handler
      route(/cosmos/i,
            :handle_cosmos,
            help: { 'cosmos' => 'Get today\'s NASA APOD image.'})
      route(/Good morning./,
            :handle_cosmos)

      def handle_cosmos(response)
        response.reply RestClient::get('https://kpp0tmzh76.execute-api.us-west-2.amazonaws.com/prod/nasaapod')
      end

    Lita.register_handler(OnewheelNasaApod)
  end
end
