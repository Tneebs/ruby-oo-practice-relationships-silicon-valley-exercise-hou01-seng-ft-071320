require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# company = Startup.new("falt", "will", "ted")
# company2 = Startup.new("flatiron", "shivang", "angelo")
# venture_cap1 = VentureCapitalist.new("Flatiron", 99)
# venture_cap2 = VentureCapitalist.new("bill gates", 1000000001)
# funding_round1 = FundingRound.new("Flatiron", "Google")
# funding_round1.investment = 100
# funding_round1.type = "angel"
# company.sign_contract("bill", 1000, "angel")
# venture_cap1.join

company1 = Startup.new("Google","Bill","Tech")
company2 = Startup.new("Amazon","Ted","Tech")
company3 = Startup.new("Yahoo","John","Tech")
# company1.pivot("Microsoft","Design")

vc1 = VentureCapitalist.new("Angelo",90000000000000000)
vc2 = VentureCapitalist.new("Josh",50)
vc3 = VentureCapitalist.new("Brandon",10000000000)

fr1 = FundingRound.new(company1,vc1)
fr2 = FundingRound.new(company2,vc2)
fr3 = FundingRound.new(company3,vc3)
fr4 = FundingRound.new(company1,vc3)

# company1.sign_contract("Ted","Ed",10)


binding.pry



0 #leave this here to ensure binding.pry isn't the last line