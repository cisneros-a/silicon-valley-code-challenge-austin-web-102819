class FundingRound

attr_accessor :type, :investment
attr_reader :venture_capitalist, :startup

@@all = []

def initialize(type, investment, startup, venture_capitalist)
    @type = type
    @investment = investment
    @startup = startup
    @venture_capitalist = venture_capitalist
    @@all << self
end 

def self.all
    @@all
end 

end
