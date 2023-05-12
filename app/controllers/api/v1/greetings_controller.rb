class Api::V1::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
  end
  def random_greeting
    @greeting = Greeting.order("RANDOM()").first
         render json: { message: @greeting }
  end

end
