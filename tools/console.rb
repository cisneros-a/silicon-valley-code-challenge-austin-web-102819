require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


uber = Startup.new("Uber", "Travis", "Transportation")
wework = Startup.new("WeWork", "Adam", "Real Estate")
flatrion = Startup.new("Flatiron School", "Avi", "Education")
lyft = Startup.new("Lyft", "Idk", "Transportation")

 # Startup.domains

uber.pivot("New name", "New domain")
uber.domain

mark = VentureCapitalist.new("Mark Cuban", 4000000000)
daymond = VentureCapitalist.new("Daymond John", 800000000)
barb = VentureCapitalist.new("Barb Cooper", 3000000000)
wonderful = VentureCapitalist.new("Kevin O'Leary", 700000000)

 #VentureCapitalist.tres_commas_club

 funding1 = FundingRound.new("Pre-Seed", 12000, uber, mark)
 funding2 = FundingRound.new("Series-A", 450000000, wework, barb)
 binding.pry





0 #leave this here to ensure binding.pry isn't the last line


 #          Bank - User - Accounts
# A Bank has many Users(User belongs to a Bank- store Bank in User class)
# A User has many Accounts(Account belongs to User- store User in Account class)
# A Bank has many Accounts through Users(Account belongs to Bank- Store bank in Account class)

 #         Startup - Funding Round - Venture Capitalist 
# A Startup has many Funding Round(s)(F.R belongs to a Startup- store Startup in F.R)
# A Funding Round has many Venture Capitaliasts(V.C belongs to a F.R. store F.R in V.C)
# A Startup has many Venture Capitalists through a Funding Round(V.C belong to a Startup- Store Startup in V.C)








