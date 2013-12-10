

class Outcome

  attr_reader :user_inp, :comp_inp

  RULES = {
    :rock       =>  {:rock => "tie", :paper => "paper", :scissors => "rock"}
    :paper      =>  {:rock => "paper", :paper => "tie", :scissors => "scissors"}
    :scissors   =>  {:rock => "rock", :paper => "scissors", :scissor => "tie"}
  }

	def initialize(user_inp, comp_inp)
    @user_inp = user_inp
    @comp_inp = comp_inp
  end

  def tie
    if user_inp == comp_inp
      true
    else
      false
    end
  end

  def comp_wins
    if 

  end

  def user_wins

  end

end

<=>