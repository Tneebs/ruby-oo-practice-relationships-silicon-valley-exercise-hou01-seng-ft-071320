require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

company = Startup.new("falt", "will", "ted")
company2 = Startup.new("flatiron", "shivang", "angelo")
venture_cap1 = VentureCapitalist.new("Flatiron", 99)
venture_cap2 = VentureCapitalist.new("bill gates", 1000000001)
funding_round1 = FundingRound.new("Flatiron", "Google")
funding_round1.investment = 100
funding_round1.type = "angel"
company.sign_contract("bill", 1000, "angel")
venture_cap1.join

binding.pry
0 #leave this here to ensure binding.pry isn't the last line