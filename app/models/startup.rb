class Startup
  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def initialize(name, founder, domain)
      @name = name
      @founder = founder
      @domain = domain
      @@all << self
  end 

  def pivot(name, domain)
    self.name = name
    domain = self.domain
  end 

  def self.all
    @@all
  end

  def self.find_by_founder(founder)
    @@all.find {|startup| startup.founder == founder}
  end 

  def self.domains
    all.map{ |startup| p startup.domain}.uniq
  end 

  def pivot(name, domain)
    self.domain=(domain)
    @name = name
  end 

  def sign_contract(venture_capitalist, type, investment_amount)
    FundingRound.new(type, investment_amount, self, venture_capitalist)
  end 

  private

  def domain=(domain)
    @domain = domain
  end

end




