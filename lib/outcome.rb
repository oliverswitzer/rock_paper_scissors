
class Outcome

  attr_reader :user_inp, :comp_inp, :result, :user_img, :comp_img

  RULES = {
    :rock       =>  {:rock => "tie", :paper => "paper", :scissors => "rock"},
    :paper      =>  {:rock => "paper", :paper => "tie", :scissors => "scissors"},
    :scissors   =>  {:rock => "rock", :paper => "scissors", :scissor => "tie"}
  }

	def initialize(user_inp, comp_inp)
    @user_inp = user_inp
    @comp_inp = comp_inp
    @user_img = "img/#{user_inp}.png"
    @comp_img = "img/#{comp_inp}.png"
    @result = RULES[user_inp.to_sym][comp_inp.to_sym]
  end

end

