require 'pry'

class Startup
    attr_accessor :name, :domain, :contract
    attr_reader :founder
    @@all = []
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all <<  self
    end
    def pivot(domain, name)
        self.domain = domain
        self.name = name
    end
    def self.all
        @@all
    end
    def self.find_by_founder(founder)
        self.all.find {|index| index.founder == founder}
    end
    def self.domains
        array = []
        self.all.select {|index| array << index.domain}   #Refactor
        array
    end
    def sign_contract(vc_name, investment, type)
        contract = FundingRound.new(self.name, vc_name)
        contract.investment = investment
        contract.type = type
        @contract = contract
    end
end