require './lib/computer_rps'

module Game 
  class RPS_App < Sinatra::Application

    get '/thow/:type' do
      @options = ["rock", "paper", "scissors"]

      if @options.includes? params[:type].downcase
        @computer_choice = ComputerRPS.new.play

      else
        "404 not found suckaaaa"
      end
      
    end

  end
end



