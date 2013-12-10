require './lib/computer_rps'
require './lib/outcome'
require 'bundler'
Bundler.require

module Game 
  class RPS_App < Sinatra::Application

    get '/throw/:type' do
      @user_play = params[:type]
      @user_options = ["rock", "paper", "scissors"]

      if @user_options.include? @user_play.downcase
        @computer_play = ComputerRPS.new.play
        @outcome = Outcome.new(@user_play, @computer_play)
        erb :outcome
      else
        erb :error
      end
    end

    get '/home' do

      erb :home
    end

  end
end



