module Api
  module V1
    class GreetingsController < ApplicationController
      def random
        @greeting = Greeting.order('RANDOM()').first
        render json: { greeting: @greeting.content }
      end
    end
  end
end
