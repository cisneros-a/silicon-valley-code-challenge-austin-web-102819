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
  
    def sign_contract(v_c, t_o_i, amount_invested )
       FundingRound.new(t_o_i, amount_invested, self, v_c )  
    end

    def num_funding_rounds
        FundingRound.all.select{|funding_round| funding_round.startup == self}.length
    end 

    def total_funds
        rounds = FundingRound.all.select {|funding_round| funding_round.startup == self}
        rounds.reduce(0) {|sum, round| sum + round.investment}
    end 

    def investors
        my_funding_rounds = FundingRound.all.select{ |funding_round| funding_round.startup == self}
        my_funding_rounds.map { |funding_round| funding_round.venture_capitalist}.uniq    
    end

    def big_investors
        investors = self.investors  
        investors.select{|investor| investor.networth > 1000000000}
    end 
  
  









  
    private
  
    def domain=(domain)
      @domain = domain
    end
  
end 




