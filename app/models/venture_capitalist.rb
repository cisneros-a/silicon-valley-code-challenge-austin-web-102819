class VentureCapitalist
    attr_accessor :name, :networth

    @@all = []

    def initialize(name, networth)
        @name = name
        @networth = networth
        @@all << self
    end

    def offer_contract(startup, type_of_investment, amount_invested)
        FundingRound.new(type_of_investment, amount_invested, startup, self)
    end 

    def self.all
        @@all
    end 

    def self.tres_commas_club
        self.all.select {|vc| vc.networth >> 1000000000}
    end 
end



